-----------------------------
--      WoWPro_Broker      --
-----------------------------

local L = WoWPro_Locale
local OldQIDs, CurrentQIDs, NewQIDs, MissingQIDs

-- Guide Load --
function WoWPro:LoadGuide(guideID)
	
	--Re-initiallizing tags and counts--
	for i,tag in pairs(WoWPro.Tags) do 
		WoWPro[tag] = {}
	end
	WoWPro.stepcount, WoWPro.stickycount, WoWPro.optionalcount = 0, 0 ,0
	
	--Checking the GID and loading the guide --
	if guideID then WoWProDB.char.currentguide = guideID end 
	local GID = WoWProDB.char.currentguide
	if not GID then 
		WoWPro:LoadNilGuide() 
		WoWPro:dbp("No guide specified, loading NilGuide.")
		return 
	end
	-- If the current guide can not be found, see if it was renamed.
	if not WoWPro.Guides[GID] then
	    local myUFG = UnitFactionGroup("player"):sub(1,1)
	    local name,levels = GID:match("([A-Za-z]+)([0-9]+)")
	    local newGID =name..myUFG..levels
	    if WoWPro.Guides[newGID] then
	        -- Yeah, we renamed the guide on the poor chap.
	        -- Remap the state
	        WoWPro:Print("Guide "..GID.." was renamed to "..newGID..".  Remapping.")
	        WoWProCharDB.Guide[newGID] = WoWProCharDB.Guide[GID]
	        WoWProCharDB.Guide[GID] = nil
	        GID = newGID    
	    end
	end
	if not WoWPro.Guides[GID] then 
		WoWPro:dbp("Guide "..GID.." not found, loading NilGuide.")
		WoWPro:LoadNilGuide() 
		return 
	end 
	WoWPro:dbp("Loading Guide: "..GID)
	
	-- Creating a new entry if this guide does not have one
	WoWProCharDB.Guide[GID] = WoWProCharDB.Guide[GID] or {}
	WoWProCharDB.Guide[GID].completion = WoWProCharDB.Guide[GID].completion or {}
	WoWProCharDB.Guide[GID].skipped = WoWProCharDB.Guide[GID].skipped or {}
	
	local module = WoWPro:GetModule(WoWPro.Guides[GID].guidetype)
	if module:IsEnabled() then 
		WoWPro[WoWPro.Guides[GID].guidetype]:LoadGuide() 
	else return end
	
	WoWPro:UpdateGuide()
	WoWPro:MapPoint()
end

-- Guide Update --
function WoWPro:UpdateGuide(offset)
	if not WoWPro.GuideFrame:IsVisible() then return end
	WoWPro:dbp("Running: UpdateGuide()")
	local GID = WoWProDB.char.currentguide
	
	-- If the user is in combat, or if a GID is not present, or if the guide cannot be found, end --
	if InCombatLockdown() 
		or not GID 
		or not WoWPro.Guides[GID]
		then return 
	end
	
	-- If the module that handles this guide is not present and enabled, then end --
	local module = WoWPro:GetModule(WoWPro.Guides[GID].guidetype)
	if not module or not module:IsEnabled() then return end
	
	-- Finding the active step in the guide --
	WoWPro.ActiveStep = WoWPro:NextStep(1)
	if WoWPro.Recorder then WoWPro.ActiveStep = WoWPro.Recorder.SelectedStep or WoWPro.ActiveStep end
	if not offset then WoWPro.Scrollbar:SetValue(WoWPro.ActiveStep) end
	WoWPro.Scrollbar:SetMinMaxValues(1, math.max(1, WoWPro.stepcount))
	
	-- Calling on the guide's module to populate the guide window's rows --
	local function rowContentUpdate()
		local reload = WoWPro[module:GetName()]:RowUpdate(offset)
		for i, row in pairs(WoWPro.rows) do
			local modulename
			-- Hyjack the click and menu functions for the Recorder if it's enabled --
			if WoWPro.Recorder then 
				modulename = "Recorder" 
				WoWPro.Recorder:RowUpdate(offset)
			else modulename = module:GetName() end
			local menuFrame = CreateFrame("Frame", "WoWProDropMenu", UIParent, "UIDropDownMenuTemplate")
			if WoWPro[modulename].RowLeftClick and WoWPro[modulename].RowDropdownMenu then
				row:SetScript("OnClick", function(self, button, down)
					if button == "LeftButton" then
						WoWPro[modulename]:RowLeftClick(i)
					elseif button == "RightButton" then
						WoWPro.rows[i]:SetChecked(nil)
						if WoWPro.Recorder then WoWPro[modulename]:RowLeftClick(i) end
						EasyMenu(WoWPro[modulename].RowDropdownMenu[i], menuFrame, "cursor", 0 , 0, "MENU")
					end
				end)
			end
		end
		return reload
	end
	local reload = true
	-- Reloading until all stickies that need to unsticky have done so --
	while reload do reload = rowContentUpdate() end
	
	-- Update content and formatting --
	WoWPro:RowSet(); WoWPro:RowSet()
	WoWPro:PaddingSet()
	
	-- Updating the guide list or current guide panels if they are shown --
	if WoWPro[module:GetName()].GuideList 
	and WoWPro[module:GetName()].GuideList:IsVisible() 
	and WoWPro[module:GetName()].UpdateGuideList then
		WoWPro[module:GetName()].UpdateGuideList() 
	end
	if WoWPro.CurrentGuideFrame:IsVisible() then WoWPro.UpdateCurrentGuidePanel() end
	
	-- Updating the progress count --
	local p = 0
	for j = 1,WoWPro.stepcount do
		if ( WoWProCharDB.Guide[GID].completion[j] or WoWProCharDB.Guide[GID].skipped[j] )
		and not WoWPro.sticky[j] 
		and not WoWPro.optional[j] then 
			p = p + 1 
		end
	end
	WoWProCharDB.Guide[GID].progress = p
	WoWProCharDB.Guide[GID].total = WoWPro.stepcount - WoWPro.stickycount - WoWPro.optionalcount
	
	-- TODO: make next lines module specific
	WoWPro.TitleText:SetText(WoWPro.Guides[GID].zone.."   ("..WoWProCharDB.Guide[GID].progress.."/"..WoWProCharDB.Guide[GID].total..")")
	
	-- If the guide is complete, loading the next guide --
	if WoWProCharDB.Guide[GID].progress == WoWProCharDB.Guide[GID].total 
	and not WoWPro.Recorder and not WoWPro.Leveling.Resetting then
		if WoWProDB.profile.autoload then
			WoWProDB.char.currentguide = WoWPro.Guides[GID].nextGID
			WoWPro:LoadGuide()
		else
			WoWPro.NextGuideDialog:Show()
		end
	end
end	

-- Next Step --
-- Determines the next active step --
function WoWPro:NextStep(k,i)
	local GID = WoWProDB.char.currentguide
	if not k then k = 1 end --k is the position in the guide
	if not i then i = 1 end --i is the position on the rows
	local skip = true
	while skip do 
		
		skip = false -- The step deaults to NOT skipped
		
		-- Optional Quests --
		if WoWPro.optional[k] and WoWPro.QID[k] then 
			skip = true --Optional steps default to skipped --
			
			-- Checking Use Items --
			if WoWPro.use[k] then
				if GetItemCount(WoWPro.use[k]) >= 1 then 
					skip = false -- If the optional quest has a use item and it's in the bag, it's NOT skipped --
				end
			end
			
		end
	
		-- Skipping profession quests if their requirements aren't met --
		if WoWPro.prof[k] then
			local prof, proflvl = string.split(";",WoWPro.prof[k])
			proflvl = proflvl or 1
			
			if prof and type(prof) == "string" and type(proflvl) == "number" then
				skip = true --Profession steps skipped by default
				local profs = {}
				profs[1], profs[2], profs[3], profs[4], profs[5], profs[6] = GetProfessions()
				for p=1,6 do
					if profs[p] then
						local skillName, _, skillRank = GetProfessionInfo(profs[p])
						if skillName == prof and skillRank >= proflvl then
							skip = false -- The step is NOT skipped if the skill is present at the correct level or higher
						end
					end
				end
			end
		end

		-- Skipping reputation quests if their requirements are met --
		if WoWPro.rep[k] then
			local rep, temprep, replvl = string.split(",",WoWPro.rep[k])
			if temprep == nil then temprep = "neutral-exalted" end
			local repID,repmax = string.split("-",temprep)
			if repmax== nil then repmax = repID end
			-- Canonicalize the case
			rep = string.lower(rep)
			repID = string.lower(repID)
			repmax = string.lower(repmax) 
			replvl = tonumber(replvl) or 0

			if repID == 'hated' then repID = 1 end
			if repID == 'hostile' then repID = 2 end
			if repID == 'unfriendly' then repID = 3 end
			if repID == 'neutral' then repID = 4 end
			if repID == 'friendly' then repID = 5 end
			if repID == 'honored' then repID = 6 end
			if repID == 'revered' then repID = 7 end
			if repID == 'exalted' then repID = 8 end

			if repmax == 'hated' then repmax = 1
			elseif repmax == 'hostile' then repmax = 2
			elseif repmax == 'unfriendly' then repmax = 3
			elseif repmax == 'neutral' then repmax = 4
			elseif repmax == 'friendly' then repmax = 5
			elseif repmax == 'honored' then repmax = 6
			elseif repmax == 'revered' then repmax = 7
			elseif repmax == 'exalted' then repmax = 8
			else repmax = 8 end
            
			skip = true --reputation steps skipped by default
			
			for factionIndex = 1, GetNumFactions() do
  				name, description, standingId, bottomValue, topValue, earnedValue, atWarWith,
    				canToggleAtWar, isHeader, isCollapsed, hasRep, isWatched, isChild = GetFactionInfo(factionIndex)
    			name=string.lower(name)
    			-- The guide will have "Scryers" and the faction name is "The Scryers"
				if string.find(name,rep) then
					if (repID <= standingId) and (repmax >= standingId) and (replvl == 0) then
						skip = false
					end
					if (replvl > 0) then
						replvl = bottomValue + replvl
						if (repID > standingId) then 
							skip = false 
						end
						if (repID == standingId) and (earnedValue <= replvl) then
                                                                                                skip = false
						end
					end
  				end
			end
                                 end	
		-- Skipping any quests with a greater completionist rank than the setting allows --
		if WoWPro.rank[k] then
			if tonumber(WoWPro.rank[k]) > WoWProDB.profile.rank then 
				skip = true 
			end
		end
		
		skip = WoWPro[WoWPro.Guides[GID].guidetype]:NextStep(k, skip)
		
		-- Skipping any manually skipped quests --
		if WoWProCharDB.Guide[GID].skipped[k] then
			skip = true
		elseif WoWProCharDB.skippedQIDs[WoWPro.QID[k]] then
			WoWProCharDB.Guide[GID].skipped[k] = true
			skip = true
		end
		
		-- Skipping any unstickies until it's time for them to display --
		if WoWPro.unsticky[k] and WoWPro.ActiveStickyCount and i > WoWPro.ActiveStickyCount+1 then skip = true end
		
		-- Skipping completed steps --
		if WoWProCharDB.Guide[GID].completion[k] then skip = true end
		
		if skip then k = k+1 end
		
	end
	
	return k
end

-- Next Step Not Sticky --
-- Determines the next active step that isn't a sticky step (for mapping) --
function WoWPro:NextStepNotSticky(k)
	if not k then k = 1 end
	local sticky = true
	while sticky do 
		sticky = false
		k = WoWPro:NextStep(k)
		if WoWPro.sticky[k] then 
			sticky = true
			k = k + 1
		end
	end
	return k
end

-- Step Completion Tasks --
function WoWPro.CompleteStep(step)
	local GID = WoWProDB.char.currentguide
	if WoWProCharDB.Guide[GID].completion[step] then return end
	if WoWProDB.profile.checksound then	
		PlaySoundFile(WoWProDB.profile.checksoundfile)
	end
	WoWProCharDB.Guide[GID].completion[step] = true
	for i,row in ipairs(WoWPro.rows) do
		if WoWProCharDB.Guide[GID].completion[row.index] then
			row.check:SetChecked(true)
		else
			row.check:SetChecked(false)
		end
	end
	
	WoWPro:dbp("Step Complete: "..WoWPro.step[step])
	
	WoWPro:MapPoint()
	WoWPro:UpdateGuide() 
end

-- Populate the Quest Log table for other functions to call on --
function WoWPro:PopulateQuestLog()
	WoWPro:dbp("Populating quest log...")
	
	WoWPro.oldQuests = WoWPro.QuestLog or {}
	WoWPro.newQuest, WoWPro.missingQuest = false, false
	
	-- Generating the Quest Log table --
	WoWPro.QuestLog = {} -- Reinitiallizing the Quest Log table
	local i, currentHeader = 1, "None"
	local entries = GetNumQuestLogEntries()
	for i=1,tonumber(entries) do
		local questTitle, level, questTag, suggestedGroup, isHeader, 
			isCollapsed, isComplete, isDaily, questID = GetQuestLogTitle(i)
		local leaderBoard
		if isHeader then
			currentHeader = questTitle
		else
			if GetNumQuestLeaderBoards(i) and GetQuestLogLeaderBoard(1, i) then
				leaderBoard = {} 
				for j=1,GetNumQuestLeaderBoards(i) do 
					leaderBoard[j] = GetQuestLogLeaderBoard(j, i)
				end 
			else leaderBoard = nil end
			local link, icon, charges = GetQuestLogSpecialItemInfo(i)
			local use
			if link then
				local _, _, Color, Ltype, Id, Enchant, Gem1, Gem2, Gem3, Gem4, Suffix, Unique, LinkLvl, Name = string.find(link, "|?c?f?f?(%x*)|?H?([^:]*):?(%d+):?(%d*):?(%d*):?(%d*):?(%d*):?(%d*):?(%-?%d*):?(%-?%d*):?(%d*)|?h?%[?([^%[%]]*)%]?|?h?|?r?")
				use = Id
			end
			local coords
			QuestMapUpdateAllQuests()
			QuestPOIUpdateIcons()
			WorldMapFrame_UpdateQuests()
			local x, y = WoWPro:findBlizzCoords(questID)
			if x and y then coords = string.format("%.2f",x)..","..string.format("%.2f",y) end
			WoWPro.QuestLog[questID] = {
				title = questTitle,
				level = level,
				tag = questTag,
				group = suggestedGroup,
				complete = isComplete,
				daily = isDaily,
				leaderBoard = leaderBoard,
				header = currentHeader,
				use = use,
				coords = coords,
				index = i
			}
		end
	end
	if WoWPro.oldQuests == {} then return end

	-- Generating table WoWPro.newQuest --
	for QID, questInfo in pairs(WoWPro.QuestLog) do
		if not WoWPro.oldQuests[QID] then 
			WoWPro.newQuest = QID 
			WoWPro:dbp("New Quest: "..WoWPro.QuestLog[QID].title)
		end
	end
	
	-- Generating table WoWPro.missingQuest --
	for QID, questInfo in pairs(WoWPro.oldQuests) do
		if not WoWPro.QuestLog[QID] then 
			WoWPro.missingQuest = QID 
			WoWPro:dbp("Missing Quest: "..WoWPro.oldQuests[QID].title)
		end
	end
	
	local num = 0
	for i, QID in pairs(WoWPro.QuestLog) do
		num = num+1
	end
	WoWPro:dbp("Quest Log populated. "..num.." quests found.")
	
end
