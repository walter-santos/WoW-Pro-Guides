-- URL: http://wow-pro.com/wiki/source_code_gilneas
-- Date: 2011-01-30 19:54
-- Who: Ludovicus Maior
-- Log: Corrected RegisterGuide line.

-- URL: http://wow-pro.com/node/3211/revisions/24076/view
-- Date: 2011-01-30 17:13
-- Who: Ludovicus Maior
-- Log: Added Quest giver/turnin information for many steps.
--	Altered sequences of steps to allow you to use quest reward armor sooner.
--	Corrected several coordinates. 
--	Added two auto-turnin quests as 'N' steps.  
--	An "A" step by itself does not work.

-- URL: http://wow-pro.com/node/3211/revisions/24072/view
-- Date: 2011-01-29 17:18
-- Who: Ludovicus Maior
-- Log: Added missing  QIDs to Level 7 and 9 steps.

-- URL: http://wow-pro.com/node/3211/revisions/23733/view
-- Date: 2010-12-11 05:09
-- Who: Crackerhead22
-- Log: Made the flight to Lor'danel auto-complete.

-- URL: http://wow-pro.com/node/3211/revisions/23732/view
-- Date: 2010-12-11 04:36
-- Who: Crackerhead22
-- Log: Added in the quest 'Rut'theran Village'.

-- URL: http://wow-pro.com/node/3211/revisions/23730/view
-- Date: 2010-12-10 22:16
-- Who: Crackerhead22
-- Log: Fixed a QO issue with "Save the Children!" quest that was causing it to no auto-complete the steps.

-- URL: http://wow-pro.com/node/3211/revisions/23699/view
-- Date: 2010-12-08 02:21
-- Who: Shakazahn

-- URL: http://wow-pro.com/node/3211/revisions/23698/view
-- Date: 2010-12-08 02:18
-- Who: Shakazahn

-- URL: http://wow-pro.com/node/3211/revisions/23564/view
-- Date: 2010-12-04 16:28
-- Who: Jiyambi

-- URL: http://wow-pro.com/node/3211/revisions/23291/view
-- Date: 2010-12-03 07:18
-- Who: Jiyambi

-- URL: http://wow-pro.com/node/3211/revisions/23290/view
-- Date: 2010-12-03 07:17
-- Who: Jiyambi

WoWPro.Leveling:RegisterGuide("RpoGil0113", "Gilneas (Worgen)", "Rpotor", "01", "13", "JamDar1320", "Alliance", function()
return [[

A Lockdown! |QID|14078|Z|Ruins of Gilneas City|M|59.2,23.9|N|From Prince Liam Greymane right in front of you.|

T Lockdown! |QID|14078|Z|Ruins of Gilneas City|M|54.7,17.7|N|Go north and then west along the street to Lieutenant Walden lying on the ground.|
A Something's Amiss |QID|14091|Z|Ruins of Gilneas City|M|54.7,17.7|

T Something's Amiss |QID|14091|Z|Ruins of Gilneas City|M|59.6,22.2|N|Back to Greymane.|
A All Hell Breaks Loose |QID|14093|Z|Ruins of Gilneas City|M|59.6,22.2|N|From Prince Liam Greymane.|
A Evacuate the Merchant Square |QID|14098|Z|Ruins of Gilneas City|M|59.6,22.2|N|From Prince Liam Greymane.|

A Salvage the Supplies |QID|14094|Z|Ruins of Gilneas City|M|59.7,26.8|N|Go a few steps south to Gwen Armstead.|
N Check Your Mail |QID|14098|Z|Ruins of Gilneas City|M|58.8,31.7|N|There's a mailbox a few steps south. You can pick up your Bind on Account items and pets here.|O|

C All Hell Breaks Loose |QID|14093|N|Kill Rampaging Worgen.|Z|Ruins of Gilneas City|M|58.8,32.7|S|
C Salvage the Supplies |QID|14094|N|Look for Supply Crates near the buildings.|Z|Ruins of Gilneas City|M|58.8,32.7|S|
C Evacuate the Merchant Square |QID|14098|N|Click on Merchant Square Doors.|Z|Ruins of Gilneas City|M|58.8,32.7|S|
C All Hell Breaks Loose |QID|14093|N|Kill Rampaging Worgen.|US|Z|Ruins of Gilneas City|
C Salvage the Supplies |QID|14094|N|Look for Supply Crates near the buildings.|US|Z|Ruins of Gilneas City|
C Evacuate the Merchant Square |QID|14098|N|Click on Merchant Square Doors.|US|Z|Ruins of Gilneas City|

T Salvage the Supplies |QID|14094|Z|Ruins of Gilneas City|M|59.7,26.8|N|Back to Gwen Armstead.|

T All Hell Breaks Loose |QID|14093|Z|Ruins of Gilneas City|M|59.8,22.5|N|Back to Greymane.|
T Evacuate the Merchant Square |QID|14098|Z|Ruins of Gilneas City|M|59.8,22.5|N|Back to Greymane.|
A Royal Orders |QID|14099|Z|Ruins of Gilneas City|M|59.8,22.5|N|From Prince Liam Greymane.|

T Royal Orders |QID|14099|Z|Ruins of Gilneas City|M|70.7,54.7|N|Southeast through the Merchant Square, down some steps and across a bridge.|
A Your Instructor |QID|14265|Z|Ruins of Gilneas City|M|70.7,54.7|C|Warrior|N|From Gwen Armstead.|
A Someone's Looking for You |QID|14269|Z|Ruins of Gilneas City|M|70.7,54.7|C|Rogue|N|From Gwen Armstead.|
A Shady Associates |QID|14273|Z|Ruins of Gilneas City|M|70.7,54.7|C|Warlock|N|From Gwen Armstead.|
A Someone's Keeping Track of You |QID|14275|Z|Ruins of Gilneas City|M|70.7,54.7|C|Hunter|N|From Gwen Armstead.|
A Arcane Inquiries |QID|14277|Z|Ruins of Gilneas City|M|70.7,54.7|C|Mage|N|From Gwen Armstead.|
A Seek the Sister |QID|14278|Z|Ruins of Gilneas City|M|70.7,54.7|C|Priest|N|From Gwen Armstead.|
A The Winds Know Your Name... Apparently |QID|14280|Z|Ruins of Gilneas City|M|70.7,54.7|C|Druid|N|From Gwen Armstead.|

T Your Instructor |QID|14265|Z|Ruins of Gilneas City|M|67.7,64.3|C|Warrior|N|Go straight and then take your first right to Sergeant Cleese.|
T Someone's Looking for You |QID|14269|Z|Ruins of Gilneas City|M|71.2,65.6|C|Rogue|N|Loren the Fence is hidden, but she appears when you approach.|
T Shady Associates |QID|14273|Z|Ruins of Gilneas City|M|71.2,64.3|C|Warlock|N|To Vitus Darkwalker.|
T Someone's Keeping Track of You |QID|14275|Z|Ruins of Gilneas City|M|71.3,61.4|C|Hunter|N|To Huntsman Blake.|
T Arcane Inquiries |QID|14277|Z|Ruins of Gilneas City|M|68.2,64.8|C|Mage|N|Go straight and then take your first right to Myriam Spellwaker.|
T Seek the Sister |QID|14278|Z|Ruins of Gilneas City|M|70.5,65.2|C|Priest|N|See Sister Almyra.|
T The Winds Know Your Name... Apparently |QID|14280|Z|Ruins of Gilneas City|M|70.2,65.7|C|Druid|N|To Celestine of the Harvest.|

A Charge |QID|14266|Z|Ruins of Gilneas City|M|67.7,64.3|C|Warrior|N|From Sergeant Cleese.|
A Eviscerate |QID|14272|Z|Ruins of Gilneas City|M|71.2,65.6|C|Rogue|N|From Loren the Fence.|
A Immolate |QID|14274|Z|Ruins of Gilneas City|M|71.2,64.3|C|Warlock|N|From Vitus Darkwalker.|
A Steady Shot |QID|14276|Z|Ruins of Gilneas City|M|71.3,61.4|C|Hunter|N|From Huntsman Blake.|
A Flash Heal |QID|14279|Z|Ruins of Gilneas City|M|68.2,64.8|C|Priest|N|From Myriam Spellwaker.|
A Arcane Missles |QID|14281|Z|Ruins of Gilneas City|M|70.5,65.2|C|Mage|N|From Sister Almyra.|
A Healing Touch |QID|14283|Z|Ruins of Gilneas City|M|70.2,65.7|C|Druid|N|From Celestine of the Harvest.|

C Charge |QID|14266|Z|Ruins of Gilneas City|M|66.9,64.2|C|Warrior|N|Train Charge from your trainer and then practice it on a Bloodfang Worgen.|
C Eviscerate |QID|14272|Z|Ruins of Gilneas City|M|66.9,64.2|C|Rogue|N|Train Eviscerate from your trainer and then practice it on a Bloodfang Worgen.|
C Immolate |QID|14274|Z|Ruins of Gilneas City|M|66.9,64.2|C|Warlock|N|Train Immolate from your trainer and then practice it on a Bloodfang Worgen.|
C Steady Shot |QID|14276|Z|Ruins of Gilneas City|M|66.9,64.2|C|Hunter|N|Train Steady Shot from your trainer and then practice it on a Bloodfang Worgen.|
C Flash Heal |QID|14279|Z|Ruins of Gilneas City|M|68.2,64.8|C|Priest|N|Train Flash Heal from your trainer and then practice it on a Wounded Guard.|
C Arcane Missles |QID|14281|Z|Ruins of Gilneas City|M|66.9,64.2|C|Mage|N|Train Arcane Missles from your trainer and then practice it on a Bloodfang Worgen.|
C Healing Touch |QID|14283|Z|Ruins of Gilneas City|M|70.2,65.7|C|Druid|N|Train Healing Touch from your trainer and then practice it a Wounded Guard.|

T Charge |QID|14266|Z|Ruins of Gilneas City|M|67.7,64.3|C|Warrior|N|To Sergeant Cleese.|
T Eviscerate |QID|14272|Z|Ruins of Gilneas City|M|71.2,65.6|C|Rogue|N|To Loren the Fence.|
T Immolate |QID|14274|Z|Ruins of Gilneas City|M|71.2,64.3|C|Warlock|N|To Vitus Darkwalker.|
T Steady Shot |QID|14276|Z|Ruins of Gilneas City|M|71.3,61.4|C|Hunter|N|To Huntsman Blake.|
T Flash Heal |QID|14279|Z|Ruins of Gilneas City|M|68.2,64.8|C|Priest|N|To Myriam Spellwaker.|
T Arcane Missles |QID|14281|Z|Ruins of Gilneas City|M|70.5,65.2|C|Mage|N|To Sister Almyra.|
T Healing Touch |QID|14283|Z|Ruins of Gilneas City|M|70.2,65.7|C|Druid|N|To Celestine of the Harvest.|

A Safety in Numbers |QID|14286|Z|Ruins of Gilneas City|M|67.7,64.3|C|Warrior|N|From Sergeant Cleese.|
A Safety in Numbers |QID|14285|Z|Ruins of Gilneas City|M|71.2,65.6|C|Rogue|N|From Loren the Fence.|
A Safety in Numbers |QID|14287|Z|Ruins of Gilneas City|M|71.2,64.3|C|Warlock|N|From Vitus Darkwalker.|
A Safety in Numbers |QID|14290|Z|Ruins of Gilneas City|M|71.3,61.4|C|Hunter||From Huntsman Blake.|
A Safety in Numbers |QID|14289|Z|Ruins of Gilneas City|M|68.2,64.8|C|Priest|N|From Myriam Spellwaker.|
A Safety in Numbers |QID|14288|Z|Ruins of Gilneas City|M|70.5,65.2|C|Mage|N|From Sister Almyra.|
A Safety in Numbers |QID|14291|Z|Ruins of Gilneas City|M|70.2,65.7|C|Druid|N|From Celestine of the Harvest.|

T Safety in Numbers |QID|14286|Z|Ruins of Gilneas City|M|65.9,77.4|C|Warrior|N|To King Genn Greymane.|
T Safety in Numbers |QID|14285|Z|Ruins of Gilneas City|M|65.9,77.4|C|Rogue|N|To King Genn Greymane.|
T Safety in Numbers |QID|14287|Z|Ruins of Gilneas City|M|65.9,77.4|C|Warlock|N|To King Genn Greymane.|
T Safety in Numbers |QID|14290|Z|Ruins of Gilneas City|M|65.9,77.4|C|Hunter|N|To King Genn Greymane.|
T Safety in Numbers |QID|14289|Z|Ruins of Gilneas City|M|65.9,77.4|C|Priest|N|To King Genn Greymane.|
T Safety in Numbers |QID|14288|Z|Ruins of Gilneas City|M|65.9,77.4|C|Mage|N|To King Genn Greymane.|
T Safety in Numbers |QID|14291|Z|Ruins of Gilneas City|M|65.9,77.4|C|Druid|N|To King Genn Greymane.|

N Training in Earnest|QID|14157|Z|Ruins of Gilneas City|M|65.9,77.4|N|Take a moment and click on the minimap button that looks like a magnifying glass and make sure "class trainer" is enabled.  Then when you level up and get new skills, train at a convenient time.  Your trainers will follow you as you progress.|
A Old Divisions |QID|14157|Z|Ruins of Gilneas City|M|65.9,77.4|N|From King Genn Greymane.|
A While You're At It |QID|24930|Z|Ruins of Gilneas City|M|65.5,77.4|N|From Lord Godfrey.|

C While You're At It |QID|24930|Z|Ruins of Gilneas City|M|58.0,72.0|N|Kill Bloodfang Worgen on your way to the tower|S|
T Old Divisions |QID|14157|Z|Ruins of Gilneas City|M|58.0,72.0;57.9,75.3|N|Go northwest to the military district, take a left and enter the tower and see Captain Broderick.|
A The Prison Rooftop |QID|28850|Z|Ruins of Gilneas City|M|57.9,75.3|From Captain Broderick.|

T The Prison Rooftop |QID|28850|Z|Ruins of Gilneas City|M|55.0,63.1|N|Go up the stairs and then follow the ledge around to Crowley.|
A By the Skin of His Teeth |QID|14154|Z|Ruins of Gilneas City|M|55.0,63.1|N|From Lord Darius Crowley.|
C By the Skin of His Teeth |QID|14154|Z|Ruins of Gilneas City|M|55.0,63.1|N|Fight off the attacking Worgen for 2 minutes to complete the quest.|
T By the Skin of His Teeth |QID|14154|Z|Ruins of Gilneas City|M|55.0,63.1|N|To Lord Darius Crowley.|
A Brothers In Arms |QID|26129|Z|Ruins of Gilneas City|M|55.0,63.1|N|From Lord Darius Crowley.|
C While You're At It |QID|24930|Z|Ruins of Gilneas City|M|58.0,72.0|N|Kill 5 Bloodfang Worgen|US|

T While You're At It |QID|24930|Z|Ruins of Gilneas City|M|65.5,77.4|N|Leave the balcony along the walkway, get down the stairs and go back southeast to Lord Godfrey.|
T Brothers In Arms |QID|26129|Z|Ruins of Gilneas City|M|65.9,77.4|N|To King Genn Greymane.|
A The Rebel Lord's Arsenal |QID|14159|Z|Ruins of Gilneas City|M|65.9,77.4|N|From King Genn Greymane.|

T The Rebel Lord's Arsenal |QID|14159|Z|Ruins of Gilneas City|M|55.48,81.59;56.63,85.43|Go southwest/west, take a right around the house and you'll find a cellar door. Click it and it will open, revealing a staircase. Go down the stairs to Josiah Avery.|

A From the Shadows |QID|14204|Z|Ruins of Gilneas City|M|56.9,81.7|N|Turn around and get this quest from Lorna Crowley.|

C From the Shadows |QID|14204|Z|Ruins of Gilneas City|M|54.6,81.5|N|Use the pet ability Attack Lurker to reveal hidden Bloodfang Lurkers in the alleys.|

T From the Shadows |QID|14204|Z|Ruins of Gilneas City|M|56.7,81.4|N|Return to Lorna Crowley.|
A Message to Greymane |QID|14214|Z|Ruins of Gilneas City|M|56.7,81.4|N|From Lorna Crowley.|

T Message to Greymane |QID|14214|Z|Ruins of Gilneas City|M|58.9,83.6|N|Return to King Greymane.|
A Save Krennan Aranas |QID|14293|Z|Ruins of Gilneas City|M|58.9,83.6|N|From King Genn Greymane.|

C Save Krennan Aranas |QID|14293|Z|Ruins of Gilneas City|M|66.0,62.2|N|Your horse is scripted, but he will stop under Krennan Aranas.  When he does use your (1) Rescue Krennan mount ability.|

T Save Krennan Aranas |QID|14293|Z|Ruins of Gilneas City|M|55.8,80.2|N|Turn in to Lord Godfrey.|
A Time to Regroup |QID|14294|Z|Ruins of Gilneas City|M|55.8,80.2|N|From Lord Godfrey.|

T Time to Regroup |QID|14294|Z|Ruins of Gilneas City|M|30.5,73.3|N|Go west, then south along the streets then through a bridge west into the Greymane Court district. Continue northwest along the street to King Greymane.|
A Sacrifices |QID|14212|Z|Ruins of Gilneas City|M|31.0,72.6|N|From Lord Crowley.|
N Training in Earnest|QID|14212|Z|Ruins of Gilneas City|M|31.0,72.6|N|Train here, if you have leveled.|

C Sacrifices |QID|14212|Z|Ruins of Gilneas City|M|31.0,72.9|N|Mount Crowley's Horse.  While on the scripted path use your mount's (1) Throw Torch ability to round up 50 worgen. If you do not get 50, ride the horse again.|

T Sacrifices |QID|14212|Z|Ruins of Gilneas City|M|40.3,39.5|N|To Tobias Mistmantle.|
A By Blood and Ash |QID|14218|Z|Ruins of Gilneas City|M|40.3,39.5|N|From Tobias Mistmantle|

C By Blood and Ash |QID|14218|Z|Ruins of Gilneas City|M|38.7,38.6|N|Hop on a cannon and then use the Rebel Cannon ability to kill 100 Bloodfang Stalkers.|

T By Blood and Ash |QID|14218|Z|Ruins of Gilneas City|M|40.3,39.5|To Tobias.|
A Never Surrender, Sometimes Retreat |QID|14221|Z|Ruins of Gilneas City|M|40.3,39.5|N|From Tobias Mistmantle.|

T Never Surrender, Sometimes Retreat |QID|14221|Z|Ruins of Gilneas City|M|48.8,52.6|N|Go inside the Cathedral behind Tobias and all the way to Lord Crowley at the top of the steps.|
A Last Stand |QID|14222|Z|Ruins of Gilneas City|M|48.8,52.6|N|From Lord Darius Crowley.|

C Last Stand |QID|14222|Z|Ruins of Gilneas City|M|45.3,47.4|N|Kill 8 Frenzied Stalkers.|

T Last Stand |QID|14222|Z|Ruins of Gilneas City|M|48.8,52.6|N|Turn in back at Crowley and enjoy the cinematic.|

N Last Chance at Humanity|QID|14375|Z|Ruins of Gilneas City|M|36.4,61.3|NC|N|Accept quest from King Genn Greymane, and click off this step.|
; No Turn-in as this quest auto-completes

A Among Humans Again|QID|14313|Z|Ruins of Gilneas|M|36.45,62.20|N|From Lord Godfrey.|
T Among Humans Again|QID|14313|Z|Ruins of Gilneas|M|37.36,63.28|N|To Krennan Aranas.|
A In Need of Ingredients|QID|14320|Z|Ruins of Gilneas|M|37.36,63.28|N|From Krennan Aranas.|
N Training in Earnest|QID|14320|Z|Ruins of Gilneas|M|37.36,63.28|N|Talk to Jack "All-Trades" Derrington and learn any professions you want."
T In Need of Ingredients|QID|14320|Z|Ruins of Gilneas|M|32.90,66.32|To Crate of Mandrake Essence.|
A Invasion|QID|14321|Z|Ruins of Gilneas|M|32.84,66.22|N|From Slain Watchman.|
T Invasion|QID|14321|Z|Ruins of Gilneas|M|37.33,63.37|N|To Gwen Armstead.|
A Kill or Be Killed|QID|14336|Z|Ruins of Gilneas|M|37.33,63.37|N|From Gwen Armstead.|
T Kill or Be Killed|QID|14336|Z|Ruins of Gilneas|M|35.92,66.13|N|To Prince Liam Greymane.|
A Hold the Line|QID|14347|Z|Ruins of Gilneas|M|35.92,66.13|N|From Prince Liam Greymane.|
A You Can't Take 'Em Alone|QID|14348|Z|Ruins of Gilneas|M|35.92,66.13|N|From Prince Liam Greymane.|

C Hold the Line|QID|14347|Z|Ruins of Gilneas|M|36.27,67.79|N|Kill Forsaken Invaders on the way while looking for Black Gundpowder Kegs.|S|
C You Can't Take 'Em Alone|QID|14348|Z|Ruins of Gilneas|M|37.27,71.18|N|Once you have a Black Gunpowder Keg, get close to a Horrid Abomination and use it.|U|49202|
C Hold the Line|QID|14347|Z|Ruins of Gilneas|M|36.15,69.30|N|Kill Forsaken Invaders on the way while looking for Black Gundpowder Kegs.|US|

L Level 6|QID|14348|LVL|6|N|You should be around level 6 by this point.|

T Hold the Line|QID|14347|Z|Ruins of Gilneas|M|35.92,66.25|N|To Prince Liam Greymane.|
T You Can't Take 'Em Alone|QID|14348|Z|Ruins of Gilneas|M|35.92,66.25|N|To Prince Liam Greymane.|
A Holding Steady|QID|14366|Z|Ruins of Gilneas|M|35.92,66.25|N|From Prince Liam Greymane.|

T Holding Steady|QID|14366|Z|Ruins of Gilneas|M|37.36,63.29|N|To Gwen Armstead.|

A The Allens' Storm Cellar|QID|14367|Z|Ruins of Gilneas|M|37.36,63.29|N|From Gwen Armstead.|

T The Allens' Storm Cellar|QID|14367|Z|Ruins of Gilneas|M|28.48,64.37;28.97,63.93|N|To Lord Godfrey.|
A Unleash the Beast|QID|14369|Z|Ruins of Gilneas|M|28.90,63.91|N|From Lord Godfrey.|
A Two By Sea|QID|14382|Z|Ruins of Gilneas|M|28.90,63.91|N|From Lord Godfrey.|
A Save the Children!|QID|14368|Z|Ruins of Gilneas|M|28.90,63.91|N|From Melinda Hammond.|

C Talk to James|QID|14368|Z|Ruins of Gilneas|M|28.56,66.74|QO|James rescued: 1/1|N|James is northwest, next to the house. Right-click James to rescue him.|
C Talk to Ashley|QID|14368|Z|Ruins of Gilneas|M|27.92,66.64|QO|Ashley rescued: 1/1|N|Inside the house upstairs. Right-click to rescue her.|
C Talk to Cynthia|QID|14368|Z|Ruins of Gilneas|M|29.59,69.18|QO|Cynthia rescued: 1/1|N|Go southeast to the cornfield and find Cynthia near the shed. Right-click her to rescue her.|
T Save the Children!|QID|14368|Z|Ruins of Gilneas|M|28.89,63.97|N|To Melinda Hammond.|
N Sell Junk|QID|14369|Z|Ruins of Gilneas|M|28.81,63.48|N|Sell Junk.|

C Unleash the Beast|QID|14369|Z|Ruins of Gilneas|M|27.90,80.70|N|Kill Forsaken Footsoldiers on the way.|S|
C Kill Captain Anson|QID|14382|Z|Ruins of Gilneas|M|25.26,72.09; 23.9,75.0|QO|Captain Anson slain: 1/1|N|Go to one of the catapults and kill the Forsaken Machinist operating it. Get into the catapult and aim it on the deck of the ship closer to you to the south. use the catapult's Launch ability to launch yourself onto the ship. Go down the stairs and kill Captain Anson.|
C Kill Captain Morris|QID|14382|Z|Ruins of Gilneas|M|29,54,74.23; 27.2,80.0|QO|Captain Morris slain: 1/1|N|Go to another catapult, kill the Forsaken Machinist, launch yourself onto the other ship. Go downstairs and kill Captain Morris.|
C Unleash the Beast|QID|14369|Z|Ruins of Gilneas|M|27.90,80.70|N|Kill Forsaken Footsoldiers on the way.|US|

T Unleash the Beast|QID|14369|Z|Ruins of Gilneas|M|28.89,63.97|N|To Lord Godfrey.|
T Two By Sea|QID|14382|Z|Ruins of Gilneas|M|28.89,63.97|N|To Lord Godfrey.|
A Leader of the Pack|QID|14386|Z|Ruins of Gilneas|M|28.89,63.97|N|From Lord Godfrey.|

L Level 7|QID|14386|LVL|7|N|You should be around level 7 by this point.|

C Leader of the Pack|QID|14386|Z|Ruins of Gilneas|M|24.30,67.70|N|Target Dark Ranger Thyala and use your Mastiff Whistle. The dogs will tank her nicely, so you can kill her easily.|U|49240|
T Leader of the Pack|QID|14386|Z|Ruins of Gilneas|M|28.89,63.87|N|To Lord Godfrey.|
A As the Land Shatters|QID|14396|Z|Ruins of Gilneas|M|28.89,63.87|N|From Lord Godfrey.|
T As the Land Shatters|QID|14396|Z|Ruins of Gilneas|M|29.11,65.09|N|To Prince Liam Greymane.|
A Gasping for Breath|QID|14395|Z|Ruins of Gilneas|M|29.11,65.09|N|From Prince Liam Greymane.|
C Gasping for Breath|QID|14395|Z|Ruins of Gilneas|M|28.77,67.39|N|Jump in the water and swim to a Drowning Watchman. Click on him and swim back to the shore. Repeat 4 times.|
T Gasping for Breath|QID|14395|Z|Ruins of Gilneas|M|29.08,65.12|N|To Prince Liam Greymane.|
A Evacuation|QID|14397|Z|Ruins of Gilneas|M|29.08,65.12|N|From Prince Liam Greymane.|
T Evacuation|QID|14397|Z|Ruins of Gilneas|M|37.57,65.21|N|To Gwen Armstead.|
A Grandma Wahl|QID|14398|Z|Ruins of Gilneas|M|37.57,65.21|N|From Gwen Armstead.|
A The Hayward Brothers|QID|14403|Z|Ruins of Gilneas|M|37.57,65.21|N|From Gwen Armstead.|
A The Crowley Orchard|QID|14406|Z|Ruins of Gilneas|M|37.57,65.21|N|From Gwen Armstead.|

T The Crowley Orchard|QID|14406|Z|Ruins of Gilneas|M|37.66,72.75|N|To Lorna Crowley.|
A The Hungry Ettin|QID|14416|Z|Ruins of Gilneas|M|37.66,72.75|N|From Lorna Crowley.|
C The Hungry Ettin|QID|14416|Z|Ruins of Gilneas|M|39.72,76.82|N|Hop on one of the Mountain Horses. Target a Mountain Horse and use your horse's Round Up Horse ability. Ride back to Lorna Crowley. Repeat until quest completion.|
T The Hungry Ettin|QID|14416|Z|Ruins of Gilneas|M|37.60,72.77|N|To Lorna Crowley.|
T Grandma Wahl|QID|14398|Z|Ruins of Gilneas|M|32.53,75.55|N|To Grandma Wahl.|
A Grandma's Lost It Alright|QID|14399|Z|Ruins of Gilneas|M|32.53,75.55|N|From Grandma Wahl.|
C Grandma's Lost It Alright|QID|14399|Z|Ruins of Gilneas|M|33.88,77.37|N|Loot the Linen-Wrapped Book under the red rose arbor.|
T Grandma's Lost It Alright|QID|14399|Z|Ruins of Gilneas|M|32.51,75.52|N|To Grandma Wahl.|
A I Can't Wear This|QID|14400|Z|Ruins of Gilneas|M|32.51,75.52|N|From Grandma Wahl.|
C I Can't Wear This|QID|14400|Z|Ruins of Gilneas|M|32.00,75.57|N|Loot Grandma’s Good Clothes from the clothes line between the house and the sea-wall.|
T I Can't Wear This|QID|14400|Z|Ruins of Gilneas|M|32.50,75.55|N|To Grandma Wahl.|

L Level 8|QID|14401|LVL|8|N|You should be around level 8 by this point.|

A Grandma's Cat|QID|14401|Z|Ruins of Gilneas|M|32.50,75.55|N|From Grandma Wahl.|
C Grandma's Cat|QID|14401|Z|Ruins of Gilneas|M|35.19,74.94|N|Loot Chance the Cat near the white rose arbor on a rock. Lucius the Cruel will spawn and attack you. Kill him. Loot Chance the Cat from the corpse.|
T Grandma's Cat|QID|14401|Z|Ruins of Gilneas|M|32.48,75.35|N|To Grandma Wahl.|
T The Hayward Brothers|QID|14403|Z|Ruins of Gilneas|M|36.84,84.19|N|To Sebastian Hayward.|
A Not Quite Shipshape|QID|14404|Z|Ruins of Gilneas|M|36.84,84.19|N|From Sebastian Hayward.|
A Washed Up|QID|14412|Z|Ruins of Gilneas|M|36.84,84.19|N|From Sebastian Hayward.|

N Not Quite Shipshape|QID|14404|Z|Ruins of Gilneas|M|37.53,85.96|QO|Coal Tar: 1/1|N|Loot the Barrel of Coal Tar.|
N Not Quite Shipshape|QID|14404|Z|Ruins of Gilneas|M|37.42,87.13|QO|Shipwright's Tools: 1/1|N|Loot the Shipwright's Tools, inside the house.|
C Not Quite Shipshape|QID|14404|Z|Ruins of Gilneas|M|36.17,86.44|N|Loot the Planks of Wood.|
C Washed Up|QID|14412|Z|Ruins of Gilneas|M|36.83,85.06|N|Kill 6 Forsaken Castaways.|
T Not Quite Shipshape|QID|14404|Z|Ruins of Gilneas|M|36.88,84.20|N|To Sebastian Hayward.|
T Washed Up|QID|14412|Z|Ruins of Gilneas|M|36.88,84.20|N|To Sebastian Hayward.|
A Escape By Sea|QID|14405|Z|Ruins of Gilneas|M|36.88,84.20|N|From Sebastian Hayward.|

T Escape By Sea|QID|14405|Z|Ruins of Gilneas|M|37.61,65.25|N|To Gwen Armstead.|
A To Greymane Manor|QID|14465|Z|Ruins of Gilneas|M|37.61,65.25|N|From Gwen Armstead.|

T To Greymane Manor|QID|14465|Z|Ruins of Gilneas|M|28.17,50.03|N|To Queen Mia Greymane.|
h Greymane Manor|Z|Ruins of Gilneas|M|28.17,50.03|N|Set your hearthstone at Queen Mia Greymane.|
A The King's Observatory|QID|14466|Z|Ruins of Gilneas|M|28.17,50.03|N|From Queen Mia Greymane.|
T The King's Observatory|QID|14466|Z|Ruins of Gilneas|M|26.40,46.97|N|To King Genn Greymane.|

N Alas, Gilneas!|QID|14467|Z|Ruins of Gilneas|M|26.40,46.97|NC|N|Look through King Genn Greymane's scope. Click off when done.|

A Exodus|QID|24438|Z|Ruins of Gilneas|M|26.40,46.97|N|From King Genn Greymane.|
N Board a Stagecoach CarriageS|QID|24438|Z|Ruins of Gilneas|M|30.2,55.5|N|Get out of the manor, go down the road and get on a Stagecoach Carriage.|

T Exodus|QID|24438|Z|Ruins of Gilneas|M|51.86,80.52|N|To Prince Liam Greymane.|
A Stranded at the Marsh|QID|24468|Z|Ruins of Gilneas|M|51.86,80.52|N|From Prince Liam Greymane.|
C Stranded at the Marsh|QID|24468|Z|Ruins of Gilneas|M|53.24,71.99|N|Kill Swamp Crocolisks until you've rescued 5 Crash Survivors.|
A Stranded at the Marsh|QID|24468|Z|Ruins of Gilneas|M|51.86,80.52|N|To Prince Liam Greymane.|
C Introductions Are in Order|QID|24472|Z|Ruins of Gilneas|M|48.21,85.54;46.75,83.40|N|Go to the top of the hill and loot Koroth's Baner. Kill 4 Ogre Minions on the way.|
T Introductions Are in Order|QID|24472|Z|Ruins of Gilneas|M|51.76,80.23|N|To Prince Liam Greymane.|
L Level 9|QID|24483|LVL|9|N|You should be around level 9 by this point.|
A Stormglen|QID|24483|Z|Ruins of Gilneas|M|51.81,80.17|N|From Prince Liam Greymane.|

T Stormglen|QID|24483|Z|Ruins of Gilneas|M|59.84,91.80|N|To Gwen Armstead.|
A Pest Control|QID|24484|Z|Ruins of Gilneas|M|59.84,91.80|N|From Gwen Armstead.|
A Pieces of the Past|QID|24495|Z|Ruins of Gilneas|M|60.23,91.75|N|From Lorna Crowley.|
C Pest Control|QID|24484|Z|Ruins of Gilneas|M|63.74,91.01|N|Kill 6 Vilebrood Skitterrers on the way.|S|
C Pieces of the Past|QID|24495|Z|Ruins of Gilneas|M|63.76,91.66|N|Loot 6 Old Journal Pages.|
C Pest Control|QID|24484|Z|Ruins of Gilneas|M|63.74,91.01|N|Kill 6 Vilebrood Skitterrers.|US|
T Pest Control|QID|24484|Z|Ruins of Gilneas|M|59.84,91.70|N|To Gwen Armstead.|
A Queen-Sized Troubles|QID|24501|Z|Ruins of Gilneas|M|59.84,91.70|N|From Gwen Armstead.|
T Pieces of the Past|QID|24495|Z|Ruins of Gilneas|M|60.25,91.78|N|To Lorna Crowley.|
C Queen-Sized Troubles|QID|24501|Z|Ruins of Gilneas|M|67.95,81.90|
T Queen-Sized Troubles|QID|24501|Z|Ruins of Gilneas|M|59.87,91.76|N|To Gwen Armstead.|
A The Blackwald|QID|24578|Z|Ruins of Gilneas|M|60.27,91.78|N|From Lorna Crowley.|

T The Blackwald|QID|24578|Z|Ruins of Gilneas|M|63.36,82.92|N|To Belrysa Starbreeze.|
A Losing Your Tail|QID|24616|Z|Ruins of Gilneas|M|63.36,82.92|N|From Belrysa Starbreeze.|
C Losing Your Tail|QID|24616|Z|Ruins of Gilneas|M|63.93,81.23|N|Walk on the freezing trap on purpose, use the talisman and then kill the Dark Scout.|U|49944|
T Losing Your Tail|QID|24616|Z|Ruins of Gilneas|M|63.33,82.95|N|To Belrysa Starbreeze.|
A Tal'doren, the Wild Home|QID|24617|Z|Ruins of Gilneas|M|63.33,82.95|N|From Belrysa Starbreeze.|

N Sell Junk|QID|24617|Z|Ruins of Gilneas|M|68.13,74.49|N|Sell Junk.|
T Tal'doren, the Wild Home|QID|24617|Z|Ruins of Gilneas|M|68.69,73.29|N|To Lord Darius Crowley.|
A At Our Doorstep|QID|24627|Z|Ruins of Gilneas|M|68.85,73.28|N|From Lord Darius Crowley.|
A Preparations|QID|24628|Z|Ruins of Gilneas|M|69.27,72.99|N|From Vassandra Stormclaw.|
C At Our Doorstep|QID|24627|Z|Ruins of Gilneas|M|59.81,76.66|N|Kill Howling Banshees on the way.|S|
C Preparations|QID|24628|Z|Ruins of Gilneas|M|61.36,78.18|N|Collect 6 Moonleaf in this area.|
C At Our Doorstep|QID|24627|Z|Ruins of Gilneas|M|59.81,76.66|US|
T At Our Doorstep|QID|24627|Z|Ruins of Gilneas|M|68.72,73.28|N|To Lord Darius Crowley.|
A Take Back What's Ours|QID|24646|Z|Ruins of Gilneas|M|68.87,73.23|N|From Lord Darius Crowley.|
T Preparations|QID|24628|Z|Ruins of Gilneas|M|69.25,72.99|N|To Vassandra Stormclaw.|
L Level 10|QID|24628|LVL|10|N|You should be around level 10 by this point.|
C Take Back What's Ours|QID|24646|Z|Ruins of Gilneas|M|58.96,75.25;57.55,75.64|N|Go west to the Woods'End Cabin and use the Horn of Tal'doren. While the rangers are busy fighting the worgens, run into the house and loot the Mysterious Artifact.|U|50134|
T Take Back What's Ours|QID|24646|Z|Ruins of Gilneas|M|68.87,73.23|N|To Lord Darius Crowley.|
A Neither Human Nor Beast|QID|24593|Z|Ruins of Gilneas|M|68.70,73.24|N|From Lord Darius Crowley.|
C Neither Human Nor Beast|QID|24593|Z|Ruins of Gilneas|M|69.16,73.46|N|Click on the 3 wells behind Lord Darius Crowley.|
T Neither Human Nor Beast|QID|24593|Z|Ruins of Gilneas|M|68.77,73.28|N|To Lord Darius Crowley.|
A Return to Stormglen|QID|24673|Z|Ruins of Gilneas|M|68.77,73.28|N|From Lord Darius Crowley.|
T Return to Stormglen|QID|24673|Z|Ruins of Gilneas|M|59.84,91.76|N|To Gwen Armstead.|
A Onwards and Upwards|QID|24672|Z|Ruins of Gilneas|M|59.84,91.76|N|From Gwen Armstead.|

T Onwards and Upwards|QID|24672|Z|Ruins of Gilneas|M|67.51,91.81;72.71,80.13|N|To Krennan Aranas.|
A Betrayal at Tempest's Reach|QID|24592|Z|Ruins of Gilneas|M|72.71,80.13|N|From Krennan Aranas.|
N Betrayal at Tempest's Reach|QID|24592|Z|Ruins of Gilneas|M|79.09,72.63;82.53,68.99;85.23,73.95|QO|Baron Ashbury slain: 1/1|N|Cross the bridge, drink your Krennan's Potion of Stealth. Keep going until you cross another bridge leading to a big house with a large tower. Kill Baron Ashbury.||U|50218|
C Betrayal at Tempest's Reach|QID|24592|Z|Ruins of Gilneas|M|81.87,66.72;80.50,64.29;77.97,66.20|N|Drink your Krennan's Potion of Stealth again, get in the village, follow the road to the top of the hill and kill Lord Walden.|U|50218|
T Betrayal at Tempest's Reach|QID|24592|Z|Ruins of Gilneas|M|78.27,72.01|N|To King Genn Greymane.|U|50218|
A Flank the Forsaken|QID|24677|Z|Ruins of Gilneas|M|78.27,72.01|N|From King Genn Greymane.|

T Flank the Forsaken|QID|24677|Z|Ruins of Gilneas|M|78.36,71.80|N|Speak to Lord Hewell to get a horse which will take you to Livery Outpost.|
A Last Meal|QID|24675|Z|Ruins of Gilneas|M|70.76,39.82|N|From Magda Whitewall.|
A Slaves to No One|QID|24674|Z|Ruins of Gilneas|M|70.93,39.90|N|From Marcus.|
A Liberation Day|QID|24575|Z|Ruins of Gilneas|M|70.93,39.86|N|From Lorna Crowley.|
C Last Meal|QID|24675|Z|Ruins of Gilneas|M|78.11,43.57|N|Kill Brown Stags until you get 10 Slide of Stag Meats.|
C Liberation Day|QID|24575|Z|Ruins of Gilneas|M|76.86,29.47|N|Kill Forsaken Slavedrivers, loot their keys and free Enslaved Gilneans while fighting your way through the mine.|S|
C Slaves to No One|QID|24674|Z|Ruins of Gilneas|M|80.30,32.28|N|Brothogg is at the bottom of the mine.|
C Liberation Day|QID|24575|Z|Ruins of Gilneas|M|76.86,29.47|N|Free 5 Enslaved Gilneans.|US|
L Level 11|QID|24575|LVL|11|N|You should be around level 11 by this point.|
T Slaves to No One|QID|24674|Z|Ruins of Gilneas|M|71.06,39.77|N|To Marcus.|
T Liberation Day|QID|24575|Z|Ruins of Gilneas|M|70.92,39.89|N|To Lorna Crowley.|
T Last Meal|QID|24675|Z|Ruins of Gilneas|M|70.69,39.74|N|To Magda Whitewall.|
A Push Them Out|QID|24676|Z|Ruins of Gilneas|M|70.88,39.77|N|From Lorna Crowley.|
N Push Them Out|QID|24676|Z|Ruins of Gilneas|M|72.61,30.79|QO|Forsaken Infantry slain: 4/4|N|Go northeast to Emberstone Village and kill 4 Forsaken Infantry.|
N Push Them Out|QID|24676|Z|Ruins of Gilneas|M|72.85,28.49|QO|Executor Cornell slain: 1/1|N|Kill Executor Cornell (western part of the village, standing under a tent).|
C Push Them Out|QID|24676|Z|Ruins of Gilneas|M|74.14,27.45|N|Kill Valnov the Mad (northern part of the village, standing in front of a lab table).|
T Push Them Out|QID|24676|Z|Ruins of Gilneas|M|70.87,39.80|N|To Lorna Crowley.|
A The Battle for Gilneas City|QID|24904|LVL|11|Z|Ruins of Gilneas|M|70.87,39.80|N|From Lorna Crowley.|
C The Battle for Gilneas City|QID|24904|Z|Ruins of Gilneas|M|36.95,62.50|Z|Gilneas City|N|Speak to Krennan Aranas standing at the bridge leading to the city. This will start a big script. Follow Prince Liam Greymane and help out with the fights. Use the Rapier of the Gilnean Patriots to boost the combatants during the fights.|U|50334|
T The Battle for Gilneas City|QID|24904|Z|Ruins of Gilneas|M|38.59,60.17|Z|Gilneas City|N|To Lorna Crowley.|
A The Hunt For Sylvanas|QID|24902|Z|Ruins of Gilneas|M|38.59,60.17|Z|Gilneas City|N|From Lorna Crowley.|
C The Hunt For Sylvanas|QID|24902|NC|Z|Ruins of Gilneas|M|44.44,51.54|Z|Gilneas City|N|Follow Tobias Mistmantle carefully.|
T The Hunt For Sylvanas|QID|24902|Z|Ruins of Gilneas|M|38.53,60.37|Z|Gilneas City|N|To Lorna Crowley.|
A Vengeance or Survival|QID|24903|Z|Ruins of Gilneas|M|38.53,60.37|Z|Gilneas City|N|From Lorna Crowley.|
T Vengeance or Survival|QID|24903|Z|Ruins of Gilneas|M|32.39,56.66|Z|Gilneas City|N|To King Genn Greymane.|
L Level 12|QID|24902|LVL|12|Z|Ruins of Gilneas|M|32.39,56.66|N|You should be around level 12 by this point.|
A Slowing the Inevitable|QID|24920|Z|Ruins of Gilneas|M|32.39,56.66|Z|Gilneas City|N|From King Genn Greymane.|
C Slowing the Inevitable|QID|24920|Z|Ruins of Gilneas|M|30.36,60.93|N|Go outside and mount the Captured Riding Bat. Use your Iron Bomb ability to destroy 6 Forsaken Catapults and 40 Invading Forsakens. When you’re done, use your Fly Back ability.|
T Slowing the Inevitable|QID|24920|LVL|11|Z|Ruins of Gilneas|M|32.15,56.98|Z|Gilneas City|N|To King Genn Greymane.|
A Knee-Deep|QID|24678|Z|Ruins of Gilneas|M|32.15,56.98|Z|Gilneas City|N|From King Genn Greymane.|
T Knee-Deep|QID|24678|Z|Ruins of Gilneas|M|49.86,56.84|Z|Gilneas City|N|Go down the stairs behind the king and run through the tunnel below. Put your Half-Burnt Torch on your action bar and spam it while running to keep the rats away from you.|U|50220|
A Laid to Rest|QID|24602|Z|Ruins of Gilneas|M|49.86,56.84|N|From Krennan Aranas.|
C Laid to Rest|QID|24602|Z|Ruins of Gilneas|M|47.55,53.70|N|Go northwest up the hill and loot 5 Unearthed Mementos.|
T Laid to Rest|QID|24602|Z|Ruins of Gilneas|M|49.78,56.86|N|To Krennan Aranas.|
A Patriarch's Blessing|QID|24679|Z|Ruins of Gilneas|M|49.78,56.86|N|From Krennan Aranas.|
C Patriarch's Blessing|QID|24679|Z|Ruins of Gilneas|M|48.86,53.02|N|Go to the top of the hill to a small shrine marked by a flag. Use your Blessed Offerings.|U|51956|
T Patriarch's Blessing|QID|24679|Z|Ruins of Gilneas|M|49.83,56.76|N|To Krennan Aranas.|
A Keel Harbor|QID|24680|Z|Ruins of Gilneas|M|49.83,56.76|N|From Krennan Aranas.|
T Keel Harbor|QID|24680|Z|Ruins of Gilneas|M|41.94,37.64|N|Follow the road northwest to Keel Harbor. Turn in to Lord Darius Crowley.|
A They Have Allies, But So Do We|QID|24681|Z|Ruins of Gilneas|M|41.94,37.64|N|From Lord Darius Crowley.|
C They Have Allies, But So Do We|QID|24681|Z|Ruins of Gilneas|M|28.12,35.32|N|Hop into a Glaivethrower and go west of the harbor up the hill. Then use the Glave Thrower's abilities to finish the quest.|
T They Have Allies, But So Do We|QID|24681|Z|Ruins of Gilneas|M|42.09,37.67|N|To Lord Darius Crowley.|
A Endgame|QID|26706|Z|Ruins of Gilneas|M|41.65,36.55|N|From Lorna Crowley.|
C Endgame|QID|26706|Z|Ruins of Gilneas|M|57.00,16.35|N|Get on a hippogryph. After you land on the Horde gunship, follow Lorna Crowley downstairs and stay close to her until you complete the quest.|
T Endgame|QID|26706|Z|Ruins of Gilneas|M|41.62,36.52|N|To Lorna Crowley.|
L Level 13|QID|26706|LVL|13|N|You should be around level 13 by this point.|
A Rut'theran Village|QID|14434|N|Talk to Admiral Nightwind, take this quest.  You will be in Rut'theran Village. This is a accept/complete all-in-one type quest, so right-click the box to continue.|
A The Howling Oak|QID|28517|M|55.22,89.15|Z|Teldrassil|N|From Krennan Aranas.|
T The Howling Oak|QID|28517|M|55.08,88.46;48.12,14.48|Z|Darnassus|N|Take the teleporter, then go to the Howling Oak and turn in to Genn Greymane.|
A Breaking Waves of Change|QID|26385|M|48.12,14.48|Z|Darnassus|N|From Genn Greymane.|
f |QID|26385|M|36.67,47.91|Z|Darnassus|N|At Leora.|
F Lor'danel|QID|26385|M|36.47,49.39;55.42,88.41|Z|Darnassus|N|Take the teleport out of Darnassus, then get a Hyppogryph ride to Lor'danel.|
T Breaking Waves of Change|QID|26385|M|51.77,18.00|Z|Darkshore|N|To Dentaria Silverglade. You'll be taken to the next guide, which will cover Darkshore!|

]]
end)
