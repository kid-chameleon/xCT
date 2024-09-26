--[[   ____    ______
      /\  _`\ /\__  _\   __
 __  _\ \ \/\_\/_/\ \/ /_\ \___
/\ \/'\\ \ \/_/_ \ \ \/\___  __\
\/>  </ \ \ \L\ \ \ \ \/__/\_\_/
 /\_/\_\ \ \____/  \ \_\  \/_/
 \//\/_/  \/___/    \/_/

 [=====================================]
 [  Author: Dandraffbal-Stormreaver US ]
 [  xCT+ Version 4.x.x                 ]
 [  ©2018. All Rights Reserved.        ]
 [====================================]]

local ADDON_NAME, addon = ...

-- New way of doing merge spells
-- 'class' switches spells to that class
-- 'spec' switches spells to that specialization id
-- 'spell' takes a spell id and a merge interval in seconds
-- 'alias' takes the original spell id and a replacement spell id
local spell, class, spec, alias = unpack(addon.merge_helpers)

class 'DRUID'
do
	spec '0'             -- All Specs
	spell '164812' '2.5' --  Moonfire
	spell '164815' '2.5' --  Sunfire

	spec '102'           -- Balance
	spell '191037' '2.0' --  Starfall
	spell '202347' '2.5' --  Talent: Stellar Flare
	spell '202497' '2.5' --  Talent: Shooting Stars
	spell '211545' '2.5' --  Talent: Fury of Elune
	alias '226104' '191037' --  Artifact: Echoing Stars

	spec '103'           -- Feral
	spell '106830' '2.5' --  Thrash (Cat)
	spell '155722' '2.5' --  Rake
	spell '1079' '2.5'   --  Rip
	spell '155625' '2.5' --  Talent: Lunar Inspiration
	spell '210723' '1.5' --  Artifact: Ashamane's Frenzy
	alias '1822' '155722' --  [DD/DoT Merger] Rake

	spec '104'           -- Guardian
	spell '227034' '1.5' --  Mastery: Nature's Guardian
	spell '22842' '1.5'  --  Frenzied Regeneration
	spell '77758' '2.5'  --  Thrash (Bear)
	spell '213709' '2.5' --  Talent: Brambles
	spell '204069' '2.5' --  Talent: Lunar Beam
	spell '400360' '1.0' --  Talent: Moonless Night
	spell '371982' '1.0' --  Talent: After the Wildfire
	spell '219432' '2.5' --  Artifact: Rage of the Sleeper
	alias '192090' '77758' --  [DD/DoT Merger] Thrash
	alias '203958' '213709' --  [Barkskin Merger] Brambles

	spec '105'           -- Restoration
	spell '81269' '1.5'  --  Efflorescence
	spell '33763' '1.5'  --  Lifebloom
	spell '774' '3.5'    --  Rejuvenation
	spell '8936' '2.5'   --  Regrowth
	spell '157982' '2.5' --  Tranquility
	spell '48438' '2.5'  --  Wild Growth (Instant)
	spell '42231' '2.5'  --  Hurricane
	spell '200389' '3.5' --  Talent: Cultivation
	spell '364686' '5.0' --  Tier[id=188849]: Renewing Bloom (every 1s)
	alias '189800' '48438' --  [HoT/Artifact Merger] Nature's Essence
	alias '155777' '774' --  [HoT/HoT Merger] Talent: Germination
	alias '207386' '81269' --  [Heal/HoT Merger] Talent: Spring Blossom
end


class 'HUNTER'
do
	spec '0'             -- All Specs
	spell '136' '2.5'    --  Mend Pet
	spell '131900' '2.5' --  Talent: A Murder of Crows
	spell '120361' '1.5' --  Talent: Barrage
	alias '214303' '136' --  Mend Pet

	spec '253'           -- Beast Mastery
	spell '118459' '2.5' --  Pet: Beast Cleave
	spell '207097' '1.5' --  Artifact: Titan's Thunder
	spell '217200' '4.5' --  Barbed Shot (Seems every 2s over 8s)
	alias '171457' '171454' --  [Cleave Merger] Chimaera Shot

	spec '254'           -- Marksmanship
	spell '214581' '1.5' --  Talent: Sidewinders
	spell '257045' '2.0' --  Rapid Fire
	spell '257620' '2.0' --  Multi shot
	spell '269576' '5.0' --  Master Marksman
	spell '324149' '4.5' --  Flayed Shot (every 2s for 18s plus, can be extended)
	alias '191043' '19434' --  Windburst

	spec '255'           -- Survival
	spell '185855' '2.5' --  Lacerate
	spell '13812' '2.5'  --  Explosive Trap
	spell '164857' '4.5' --  Survivalist (HoT)
	spell '194279' '2.5' --  Talent: Caltrops
	spell '203415' '2.5' --  Artifact: Fury of the Eagle (Bugged Icon Fix)
	spell '204081' '2.5' --  Artifact: On the Trail
	spell '265157' '2.5' --  Wildfire Bomb
	spell '259491' '2.5' --  Serpent Sting
	alias '269747' '265157' --  Wildfire Bomb (DOT)
	alias '203525' '203563' --  Talen Strike (2x Hits)
	alias '194858' '194859' --  Talent: Dragonsfire Grenade (DoT)
	alias '203413' '203415' --  Artifact: Fury of the Eagle (Bugged Icon Fix)
end

class 'MAGE'
do
	spec '0'             -- All Specs
	spell '122' '1.5'    --  Frost Nova

	spec '62'            -- Arcane
	spell '7268' '2.5'   --  Arcane Missiles
	spell '44425' '1.0'  --  Arcane Barrage (Cleave)
	spell '114923' '2.5' --  Talent: Nether Tempest
	spell '153640' '2.5' --  Talent: Arcane Orb
	spell '211088' '2.5' --  Artifact: Mark of Aluneth (DoT)
	alias '210817' '44425' --  [DD/Splash Merger] Arcane Rebound
	alias '114954' '114923' --  [DD/DoT Merger] Arcane Rebound
	alias '211076' '211088' --  [DD/Splash Merger] Arcane Rebound

	spec '63'            -- Fire
	spell '235314' '1.5' --  Blazing Barrier (DMG)
	spell '2120' '1.5'   --  Flamestrike (Longer for talent)
	spell '12654' '2.5'  --  Ignite (DoT)
	spell '11366' '2.5'  --  Pyroblast
	spell '205345' '2.5' --  Talent: Conflagration
	spell '88082' '2.0'  --  Talent: Mirror Images
	spell '198928' '1.5' --  Talent: Cinderstorm
	spell '217694' '3.5' --  Talent: Living Bomb (DoT)
	spell '155158' '2.5' --  Talent: Meteor (DoT)
	spell '194522' '2.5' --  Artifact: Blast Furnace
	spell '215775' '1.5' --  Artifact: Phoenix Reborn
	alias '257542' '257541' --  [DD/Splash Merger] Phoenix's Flames
	alias '226757' '205345' --  [DD/Splash Merger] Conflagration
	alias '205472' '2120' --  [DD/DoT Merger] Talent: Flame Patch
	alias '244813' '217694' --  [DD/DoT Merger] multi target living bomb
	alias '277703' '11366' -- [DD/Splash Merger] Pyroblast

	spell '11366' '2.5'  --  Pyroblast
	spec '64'            -- Frost
	spell '84721' '1.5'  --  Frozen Orb
	spell '228354' '1.0' --  Flurry
	spell '148022' '1.5' --  Icicle
	spell '190357' '2.5' --  Blizzard
	spell '153596' '2.5' --  Talent: Comet Storm
	spell '59638' '2.0'  --  Talent: Mirror Images
	spell '228598' '1.0' --  Talent: Spliting Ice
	spell '113092' '1.0' --  Talent: Frost Bomb
end


class 'MONK'
do
	spec '0'             -- All Specs
	spell '130654' '1.5' --  Chi Burst (Healing)
	spell '148135' '1.5' --  Chi Burst (Damage)
	spell '196608' '2.5' --  Talent: Eye of the Tiger
	spell '132467' '1.5' --  Talent: Chi Wave (Damage)
	spell '132463' '2.5' --  Talent: Chi Wave (Healing)
	spell '148187' '1.5' --  Talent: Rushing Jade Wind
	spell '107270' '1.5' --  Spinning Crane Kick
	spell '100784' '1.0' --  Blackout Kick

	spec '268'           -- Brewmaster
	spell '124255' '1.5' --  DmgTkn: Stagger
	spell '216521' '1.0' --  Celestial Fortune
	spell '123725' '2.5' --  Breath of Fire (DoT)
	spell '227681' '1.5' --  Artifact: Dragonfire Brew
	alias '178173' '124507' --  [Greater Merger] Artifact: Overflow (double check)

	spec '269'           -- Windwalker
	spell '124280' '2.0' --  Touch of Karma
	spell '117418' '2.0' --  Fists of Fury
	alias '205414' '222029' --  [MH/OH Merger] Artifact: Strike of the Windlord
	alias '196061' '117418' --  [DMG Merger] Artifact: Crosswinds

	spec '270'           -- Mistweaver
	spell '115175' '1.5' --  Soothing Mist
	spell '124682' '1.5' --  Eneloping Mist
	spell '191840' '1.5' --  Essence Font
	alias '344006' '191840' -- Essence Font (Faeline Stomp)
	spell '119611' '2.0' --  Renewing Mists
	spell '124081' '1.5' --  Talent: Zen Pulse
	spell '162530' '1.5' --  Talent: Refreshing Jade Wind
	spell '198756' '2.5' --  Talent: Invoke Chi'Ji
	spell '199668' '2.0' --  Artifact: Blessing of Yu'lon
	spell '199656' '2.0' --  Artifact: Celestial Breath
	alias '198533' '115175' --  [Statue Merger] Talent: Jade Serpent Statue
	alias '228649' '100784' --  [Passive Merger] Teachings of the Monastery
end


class "PALADIN"
do
	spec '0'             -- All Specs
	spell '81297' '2.5'  --  Consecration
	spell '183811' '2.5' --  Talent: Judgment of Light
	spell '403460' '1.0' --  Talent: Lightforged Blessing
	spell '377129' '2.5' --  Talent: Golden Path
	alias '384906' '377129' --  Talent: Seal of Mercy (merged into Golden Path)
	alias '407467' '403460' --  Talent: Lightforged Blessing

	spec '65'            -- Holy
	spell '53652' '1.5'  --  Beacon of Light
	spell '119952' '2.5' --  Talent: Light's Hammer (Heal)
	spell '114919' '2.5' --  Talent: Light's Hammer (Damage)
	spell '210291' '2.5' --  Talent: Aura of Mercy
	spell '200654' '2.5' --  Artifact: Tyr's Deliverance

	spec '66'            -- Protection
	spell '31935' '1.5'  --  Avenger's Shield
	spell '204301' '2.5' --  Blessed Hammer
	spell '204241' '2.0' --  Talent: Consecrated Ground
	spell '378286' '1.5' --  Talent: Tyr's Enforcer

	spec '70'            -- Retribution
	spell '203539' '5.5' --  Greater Blessings of Wisdom
	spell '20271' '1.5'  --  Talent: Greater Judgment
	spell '198137' '2.5' --  Talent: Divine Hammer
	spell '199435' '1.0' --  Talent (PvP): Luminescence
	spell '157122' '1.5' --  Talent: Holy Shield
	spell '405345' '2.0' --  Talent: Wake of Ashes
	spell '224239' '1.5' --  Artifact: Echo of the Highlord (Divine Storm)
	spell '224266' '1.25' --  Artifact: Echo of the Highlord (Templar's Verdict)
	spell '224239' '1.5' --  Artifact: Divine Tempest (Divine Storm)
	spell '215257' '1.75' --  Artifact: Healing Storm
	alias '228288' '20271' --  [Bounce Merger] Judgment
	alias '216527' '20271' --  [Pvp Talent - Bounce Merger]: Lawbringer
	alias '184575' '404358' --  Talent: Blade of Vengeance into Blade of Justice
	alias '255937' '405345' --  Talent: Wake of Ashes
	alias '405350' '405345' --  Talent: Wake of Ashes
	alias '224239' '53385' -- Divine Storm
	alias '423593' '53385' -- Divine Storm
end


class 'PRIEST'
do
	spec '0'             -- All Specs
	spell '589' '2.5'    --  Shadow Word: Pain
	spell '122128' '2.5' --  Talent: Divine Star (Damage)
	spell '110745' '2.5' --  Talent: Divine Star (Heal)
	spell '120696' '2.0' --  Talent: Halo (Damage)
	spell '120692' '2.0' --  Talent: Halo (Heal)

	spec '256'           -- Discipline
	spell '81751' '2.5'  --  Atonement
	spell '47666' '2.5'  --  Penance (Heal)
	spell '47750' '2.5'  --  Talent: Penance (Damage)
	spell '204213' '2.5' --  Talent: Purge the Wicked (DoT)
	alias '204197' '204213' --  Talent: Purge the Wicked (Instant)

	spec '257'           -- Holy
	spell '585' '1.0'    --  Smite + Artifact: Invoke the Naaru
	spell '139' '3.0'    --  Renew
	spell '14914' '2.5'  --  Holy Fire
	spell '132157' '1.0' --  Holy Nova
	spell '64844' '2.5'  --  Divine Hymn
	spell '77489' '3.5'  --  Mastery: Echo of Light
	spell '196810' '1.0' --  Artifact: Invoke the Naaru (Prayer of Healing & Sanctify)
	spell '196809' '1.0' --  Artifact: Invoke the Naaru (Heal, Flash Heal & Serenity)
	spell '196813' '1.0' --  Artifact: Invoke the Naaru (Divine Hymn & Prayer of Mending)
	alias '196816' '139' --  Artifact: Invoke the Naaru (Renew)
	alias '196811' '585' --  Artifact: Invoke the Naaru (Smite, Holy Fire & Chastise)
	alias '196812' '132157' --  Artifact: Invoke the Naaru (Holy Nova)

	spec '258'           -- Shadow
	spell '228360' '1.0' --  Void Eruption
	spell '34914' '2.5'  --  Vampiric Touch
	spell '148859' '2.5' --  Shadowy Apparition
	spell '15407' '2.0'  --  Mind Flay
	spell '263165' '3.9' --  Talent: Void Torrent
	spell '204778' '2.5' --  Honor Talent: Void Shield
	spell '346111' '2.0' --  Mastery: Shadow Weaving (Shadowfiend/Mindbender extra mastery damage)
	alias '228361' '228360' --  Void Eruption Merger
	alias '263446' '228360' --  Void Eruption Merger
end


class 'ROGUE'
do
	spec '0'             -- All Specs
	spell '185311' '2.5' --  Crimson Vial

	spec '259'           -- Assassination
	spell '2818' '3.5'   --  Deadly Poison (DoT)
	spell '192660' '2.5' --  Poison Bomb
	spell '121411' '2.5' --  Talent: Crimson Tempest (DoT)
	alias '192380' '113780' --  Artifact: Poison Knives
	alias '27576' '5374' --  Mutilate (OH)

	spec '260'           -- Outlaw
	spell '199804' '2.0' --  Between the Eyes
	spell '86392' '1.0'  --  Main Gauche
	spell '22482' '1.5'  --  Blade Flurry
	spell '57841' '3.5'  --  Killing Spree
	spell '185779' '2.0' --  Talent: Cannonball Barrage
	spell '202822' '1.0' --  Artifact: Greed
	alias '202823' '202822' --  [MH/OH Merger] Artifact: Greed
	alias '197834' '193315' --  [Proc Merger] Saber Slash

	spec '261'           -- Sublety
	spell '121473' '1.5' --  Shadowblades
	spell '185438' '1.5' --  Shadowstrike
	spell '195452' '2.5' --  Nightblade (DoT)
	spell '158188' '2.5' --  Talent: Soothing Darkness
	spell '220893' '2.5' --  Artifact: Akaari's Soul
	alias '121474' '121473' --  [MH/OH Merger] Artifact: Greed
end


class 'SHAMAN'
do
	spec '262'           -- Elemental
	spell '285452' '1.0' --  Elemental Blast
	spell '51505' '1.0'  --  Lavaburst (Elemental)
	spell '188196' '1.0' --  Lightning Bolt (Elemental)
	spell '188443' '1.5' --  Chain Lightning (Elemental)
	spell '77478' '1.5'  --  Earthquake
	spell '188389' '2.5' --  Flame Shock
	spell '192231' '2.5' --  Talent: Liquid Magma Totem
	spell '210714' '1.0' --  Talent: Ice Fury
	spell '170379' '2.0' --  Talent: Earthn Rage
	spell '191732' '1.5' --  Artifact: Lightning Elemental (Chain Lightning)
	spell '205533' '1.5' --  Artifact: Volcanic Inferno
	alias '285466' '285452' --  [Mastery Merger] Elemental Blast Overload
	alias '219271' '210714' --  [Mastery Merger] Ice Fury Overload
	alias '77451' '51505' --  [Mastery Merger] Lavaburst Overload
	alias '45297' '188443' --  [Mastery Merger] Chain Lightning Overload
	alias '45284' '188196' --  [Mastery Merger] Lightning Bolt Overload

	spec '263'           -- Enhancement
	spell '195256' '1.5' --  Stormlash (Gets Spammy!)
	spell '192592' '1.5' --  Stormstrike: Crash Lightning (TODO: Not working?)
	spell '10444' '1.5'  --  Flametongue
	spell '198483' '1.5' --  Artifact: Doom Wolves
	spell '199116' '2.0' --  Artifact: Doom Vortex
	spell '210801' '2.5' --  Talent: Crashing Storm
	spell '197385' '2.5' --  Talent: Fury of Air
	spell '197214' '2.5' --  Talent: Sundering
	alias '32176' '32175' --  [MH/OH Merger] Stormstrike
	alias '199053' '199054' --  [MH/OH Merger] Artifact: Unleash Weapons

	spec '264'           -- Restoration
	spell '73921' '2.5'  --  Healing Rain
	spell '61295' '3.5'  --  Riptide
	spell '52042' '3.0'  --  Healing Stream Totem
	spell '114942' '2.5' --  Healing Tide Totem
	spell '197997' '2.5' --  Talent: Wellspring
	spell '114911' '2.5' --  Talent: Ancestral Guidance
	spell '114083' '1.5' --  Talent: Ascendance
	spell '201633' '2.5' --  Talent: Earthen Shield
	spell '209069' '2.5' --  Artifact: Tidal Pools
	spell '208899' '3.0' --  Artifact: Queen's Decree
end


class 'WARLOCK'
do
	spec '0'          -- All Specs
	spell '217979' '2.0' --  Heath Funnel (You)
	spell '85692' '2.0' --  Doomguard (Doom Bolt)


	spec '265'           -- Affliction
	spell '198590' '1.5' --  Drain Soul
	spell '980' '2.5'    --  Agony
	spell '146739' '2.5' --  Corruption
	spell '233490' '1.5' --  Unstable Affliction
	spell '20153' '1.5'  --  Infernal: Immolation
	spell '63106' '3.0'  --  Talent: Siphon Life (Heal / Damage has same ID)
	spell '205246' '1.5' --  Talent: Phantom Singularity
	spell '205260' '2.5' --  Talent: Soul Effigy
	spell '278350' '1.0' --  Talent Vile Taint
	alias '231489' '233490' --  Unstable Affliction (Artifact: Compounding Horror)

	spec '266'           -- Demonology
	spell '89753' '2.5'  --  Felguard: Felstorm
	spell '104318' '1.5' --  Wild Imp: Fel Firebolt
	spell '271971' '1.5' --  Call Dreadstalker
	spell '193439' '1.5' --  Demonwrath
	spell '211720' '2.5' --  Artifact: Thal'kiel's Discord
	spell '108447' '2.5' --  Soul Link Heal
	spell '108446' '2.5' --  Soul Link dmgs
	alias '267971' '267215' --  Talent Demonic Consump
	alias '211727' '211720' --  Artifact: Thal'kiel's Discord



	spec '267'           -- Destruction
	spell '157736' '3.5' --  Immolate
	spell '42223' '2.5'  --  Rain of Fire
	spell '196448' '1.5' --  Talent: Channel Demonfire
	spell '187394' '1.5' --  Artifact: Dimensional Rift
	alias '348' '157736' --  [DD/DoT Merger] Immolate
end


class 'WARRIOR'
do
	spec '0'             -- All Specs
	spell '156287' '2.5' --  Ravager

	spec '71'            -- Arms
	spell '772' '3.5'    --  Talent: Rend
	spell '215537' '2.5' --  Talent: Trauma
	spell '209569' '2.5' --  Artifact: Corrupted Blood of Zakajz
	spell '209577' '2.5' --  Artifact: Warbreaker
	spell '199658' '1.5' --  Whirlwind
	spell '262115' '3.0' --  Mastery: Deep Wounds (DoT over 6s)
	alias '199850' '199658' --  [Spell Merger] Whirlwind

	spec '72'            -- Fury
	spell '5308' '1.0'   --  Execute
	spell '184367' '2.5' --  Rampage (Red Face Icon)
	spell '96103' '1.0'  --  Raging Blow
	spell '199667' '1.5' --  Whirlwind
	spell '113344' '2.5' --  Talent: Bloodbath
	spell '50622' '2.5'  --  Talent: Bladestorm
	spell '205546' '3.0' --  Artifact: Odyn's Fury (DoT)
	alias '163558' '5308' --  [MH/OH] Execute OH
	alias '85384' '96103' --  [MH/OH] Raging Blow
	alias '44949' '199667' --  [MH/OH] Whirlwind
	alias '95738' '50622' --  [MH/OH] Bladestorm
	alias '205547' '205546' --  Artifact: Odyn's Fury (Hit)
	alias '218617' '184367' --  Rampage (1st Hit)
	alias '184707' '184367' --  Rampage (2nd Hit)
	alias '184709' '184367' --  Rampage (3rd Hit)
	alias '201364' '184367' --  Rampage (4th Hit)
	alias '201363' '184367' --  Rampage (5th Hit)

	spec '73'            -- Protection
	spell '115767' '3.5' --  Deep Wounds
	spell '222944' '3.0' --  Talent: Inspiring Presence
	spell '203526' '3.5' --  Artifact: Neltharion's Fury
end


class 'EVOKER'
do
	spec '0'             -- All Specs

	spec '1467'          -- Devastation

	spec '1468'          -- Preservation
	spell '363502' '3.0' --  Talent: Dream Flight
	alias '367231' '367230' --  Talent: Spiritbloom Cleave via Empowered Spell
	alias '409895' '367230' --  Talent: Spiritbloom Cleave via Empowered Spell

	spec '1473'          -- Augmentation
end
