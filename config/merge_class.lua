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
	spec  '0' -- All Specs
	spell '164812' '2.5' --  Moonfire
	spell '164815' '2.5' --  Sunfire

	spec  '102' -- Balance
	spell '194153' '0.5' --  Lunar Strike
	spell '191037' '2.0' --  Starfall
	spell '202347' '2.5' --  Talent: Stellar Flare
	spell '202497' '2.5' --  Talent: Shooting Stars
	spell '211545' '2.5' --  Talent: Fury of Elune
	spell '202771' '0.5' --  Artifact: Full Moon
	alias '226104' '191037' --  Artifact: Echoing Stars

	spec  '103' -- Feral
	spell '106785' '0.5' --  Swipe (Cat)
	spell '106830' '2.5' --  Thrash (Cat)
	spell '155722' '2.5' --  Rake
	spell '1079'   '2.5' --  Rip
	spell '155625' '2.5' --  Talent: Lunar Inspiration
	spell '202028' '0.5' --  Talent: Brutal Slash
	spell '210723' '1.5' --  Artifact: Ashamane's Frenzy
	spell '210687' '0.5' --  Artifact: Shadow Thrash
	alias '1822'   '155722' --  [DD/DoT Merger] Rake

	spec  '104' -- Guardian
	spell '227034' '1.5' --  Mastery: Nature's Guardian
	spell '22842'  '1.5' --  Frenzied Regeneration
	spell '33917'  '0.5' --  Mangle (Incarnation Cleave)
	spell '213771' '0.5' --  Swipe (Bear)
	spell '77758'  '2.5' --  Thrash (Bear)
	spell '213709' '2.5' --  Talent: Brambles
	spell '204069' '2.5' --  Talent: Lunbar Beam
	spell '219432' '2.5' --  Artifact: Rage of the Sleeper
	alias '192090' '77758'  --  [DD/DoT Merger] Thrash
	alias '203958' '213709' --  [Barkskin Merger] Brambles

	spec  '105' -- Restoration
	spell '81269'  '1.5' --  Efflorescence
	spell '33763'  '1.5' --  Lifebloom
	spell '774'    '3.5' --  Rejuvenation
	spell '8936'   '2.5' --  Regrowth
	spell '157982' '2.5' --  Tranquility
	spell '48438'  '2.5' --  Wild Growth (Instant)
	spell '42231'  '2.5' --  Hurricane
	spell '200389' '3.5' --  Talent: Cultivation
	spell '189853' '0.5' --  Artifact: Dreamwalker
	alias '189800' '48438' --  [HoT/Artifact Merger] Nature's Essence
	alias '155777' '774'   --  [HoT/HoT Merger] Talent: Germination
	alias '207386' '81269' --  [Heal/HoT Merger] Talent: Spring Blossom
end


class 'HUNTER'
do
	spec  '0' -- All Specs
	spell '136'    '2.5' --  Mend Pet
	spell '2643'   '0.5' --  Multi-Shot
	spell '131900' '2.5' --  Talent: A Murder of Crows
	spell '194392' '0.5' --  Talent: Volley
	spell '120361' '1.5' --  Talent: Barrage
	alias '214303' '136' --  Mend Pet

	spec  '253' -- Beast Mastery
	spell '118459' '2.5' --  Pet: Beast Cleave
	spell '201754' '0.5' --  Talent: Stomp
	spell '217207' '0.5' --  Talent: Dire Frenzy
	spell '171454' '0.5' --  Talent: Chimaera Shot
	spell '197465' '0.5' --  Artifact: Surge of the Stormgod
	spell '207097' '1.5' --  Artifact: Titan's Thunder
	spell '197205' '0.5' --  Artifact: Spirit Bond
	spell '217200' '4.5' --  Barbed Shot (Seems every 2s over 8s)
	alias '171457' '171454' --  [Cleave Merger] Chimaera Shot

	spec  '254' -- Marksmanship
	spell '19434'  '0.5' --  Aimed Shot (Talent: Trick Shot + Windburst)
	spell '212621' '0.5' --  Marked Shot
	spell '186387' '0.5' --  Bursting Shot
	spell '212680' '0.5' --  Talent: Explosive Shot
	spell '214581' '1.5' --  Talent: Sidewinders
	spell '198670' '0.5' --  Talent: Piercing Shot
	spell '257045' '2.0' --  Rapid Fire
	spell '257620' '2.0' --  Multi shot
	spell '269576' '5.0' --  Master Marksman
end

class 'MAGE'
do
	spec  '0' -- All Specs
	spell '122' '1.5' --  Frost Nova

	spec  '62' -- Arcane
	spell '1449'   '0.5' --  Arcane Explosion
	spell '7268'   '2.5' --  Arcane Missiles
	spell '44425'  '1.0' --  Arcane Barrage (Cleave)
	spell '88084'  '0.5' --  Talent: Mirror Images
	spell '157980' '0.5' --  Talent: Supernova
	spell '114923' '2.5' --  Talent: Nether Tempest
	spell '153640' '2.5' --  Talent: Arcane Orb
	spell '157979' '0.5' --  Talent: Unstable Magic
	spell '210833' '0.5' --  Artifact: Touch of the Magi
	spell '211088' '2.5' --  Artifact: Mark of Aluneth (DoT)
	alias '210817' '44425'  --  [DD/Splash Merger] Arcane Rebound
	alias '114954' '114923' --  [DD/DoT Merger] Arcane Rebound
	alias '211076' '211088' --  [DD/Splash Merger] Arcane Rebound

	spec  '63' -- Fire
	spell '235314' '1.5' --  Blazing Barrier (DMG)
	spell '31661'  '0.5' --  Dragon's Breath
	spell '2120'   '1.5' --  Flamestrike (Longer for talent)
	spell '12654'  '2.5' --  Ignite (DoT)

	spell '11366' '2.5'  --  Pyroblast
	spec  '64' -- Frost
	spell '84721'  '1.5' --  Frozen Orb
	spell '228354' '1.0' --  Flurry
	spell '148022' '1.5' --  Icicle
	spell '190357' '2.5' --  Blizzard
	spell '153596' '2.5' --  Talent: Comet Storm
	spell '59638'  '2.0' --  Talent: Mirror Images
	spell '157997' '0.5' --  Talent: Ice Nova
	spell '228598' '1.0' --  Talent: Spliting Ice
	spell '113092' '1.0' --  Talent: Frost Bomb
	spell '157978' '0.5' --  Talent: Unstable Magic
end


class "PALADIN"
do
	spec  '0' -- All Specs
	spell '81297'  '2.5'  --  Consecration
	spell '105421' '0.5'  --  Talent: Blinding Light
	spell '183811' '2.5'  --  Talent: Judgment of Light

	spec  '65' -- Holy
	spell '225311' '0.5'  --  Light of Dawn
	spell '53652'  '1.5'  --  Becon of Light
	spell '119952' '2.5'  --  Talent: Light's Hammer (Heal)
	spell '114919' '2.5'  --  Talent: Light's Hammer (Damage)
	spell '114852' '0.5'  --  Talent: Holy Prism (Heal)
	spell '114871' '0.5'  --  Talent: Holy Prism (Damage)
	spell '210291' '2.5'  --  Talent: Aura of Mercy
	spell '200654' '2.5'  --  Artifact: Tyr's Deliverance

	spec  '66' -- Protection
	spell '31935'  '1.5'  --  Avenger's Shield
	spell '88263'  '0.5'  --  Hammer of the Righteous
	spell '204301' '2.5'  --  Blessed Hammer
	spell '204241' '2.0'  --  Talent: Consecrated Ground
	spell '209478' '1.5'  --  Artifact: Tyr's Enforcer
	spell '209202' '0.5'  --  Artifact: Eye of Tyr

	spec  '70' -- Retribution
	spell '20271' ' 0.5'  --  Judgment
	spell '217020' '0.5'  --  Zeal
	spell '203539' '5.5'  --  Greater Blessings of Wisdom
	spell '184689' '0.5'  --  Shield of Vengeance
	spell '20271'  '1.5'  --  Talent: Greater Judgment
	spell '198137' '2.5'  --  Talent: Divine Hammer
	spell '210220' '0.5'  --  Talent: Holy Wrath
	spell '202202' '0.5'  --  Talent: Eye for an Eye
	spell '199435' '1.0'  --  Talent (PvP): Luminescence
	spell '224239' '1.5'  --  Artifact: Echo of the Highlord (Divine Storm)
	spell '224266' '1.25' --  Artifact: Echo of the Highlord (Templar's Verdict)
	spell '205273' '2.0'  --  Artifact: Wake of Ashes
	spell '224239' '1.5'  --  Artifact: Divine Tempest (Divine Storm)
	spell '215257' '1.75' --  Artifact: Healing Storm
	alias '228288' '20271' --  [Bounce Merger] Judgment
	alias '216527' '20271' --  [Pvp Talent - Bounce Merger]: Lawbringer
end


class 'PRIEST'
do
	spec  '0' -- All Specs
	spell '589'    '2.5' --  Shadow Word: Pain
	spell '122128' '2.5' --  Talent: Divine Star (Damage)
	spell '110745' '2.5' --  Talent: Divine Star (Heal)
	spell '120696' '2.0' --  Talent: Halo (Damage)
	spell '120692' '2.0' --  Talent: Halo (Heal)

	spec  '256' -- Discipline
	spell '81751'  '2.5' --  Atonement
	spell '47666'  '2.5' --  Penance (Heal)
	spell '194509' '0.5' --  Power Word: Radiance
	spell '204065' '0.5' --  Talent: Shadow Covenant
	spell '47750'  '2.5' --  Talent: Penance (Damage)
	spell '204213' '2.5' --  Talent: Purge the Wicked (DoT)
	alias '204197' '204213' --  Talent: Purge the Wicked (Instant)

	spec  '257' -- Holy
	spell '585'    '1.0' --  Smite + Artifact: Invoke the Naaru
	spell '139'    '3.0' --  Renew
	spell '14914'  '2.5' --  Holy Fire
	spell '132157' '1.0' --  Holy Nova
	spell '34861'  '0.5' --  Holy Word: Sanctify
	spell '596'    '0.5' --  Prayer of Healing
	spell '64844'  '2.5' --  Divine Hymn
	spell '77489'  '3.5' --  Mastery: Echo of Light
	spell '2061'   '0.5' --  Talent: Trail of Light (Flash Heal)
	spell '32546'  '0.5' --  Talent: Binding Heal
	spell '204883' '0.5' --  Talent: Circle of Healing
	spell '196810' '1.0' --  Artifact: Invoke the Naaru (Prayer of Healing & Sanctify)
	spell '196809' '1.0' --  Artifact: Invoke the Naaru (Heal, Flash Heal & Serenity)
	spell '196813' '1.0' --  Artifact: Invoke the Naaru (Divine Hymn & Prayer of Mending)
	alias '196816' '139' --  Artifact: Invoke the Naaru (Renew)
	alias '196811' '585' --  Artifact: Invoke the Naaru (Smite, Holy Fire & Chastise)
	alias '196812' '132157' --  Artifact: Invoke the Naaru (Holy Nova)

	spec  '258' -- Shadow
	spell '228360' '1.0' --  Void Eruption
	spell '34914'  '2.5' --  Vampiric Touch
	spell '148859' '2.5' --  Shadowy Apparition
	spell '15407'  '2.0' --  Mind Flay
end


class 'ROGUE'
do
	spec  '0' -- All Specs
	spell '185311' '2.5' --  Crimson Vial
	spell '152150' '0.5' --  Death from Above
	spell '209043' '0.5' --  Insignia of Ravenholdt (Legendary Ring - All Specs)

	spec  '259' -- Assassination
	spell '5374'   '0.5' --  Mutilate (MH)
	spell '2818'   '3.5' --  Deadly Poison (DoT)
	spell '113780' '0.5' --  Deadly Poison (Instant)
	spell '51723'  '0.5' --  Fan of Knives
	spell '192660' '2.5' --  Poison Bomb
	alias '192380' '113780' --  Artifact: Poison Knives
	alias '27576'  '5374'    --  Mutilate (OH)

	spec  '260' -- Outlaw
	spell '202895' '0.5' --  Blunderbuss
	spell '199804' '2.0' --  Between the Eyes
	spell '193315' '0.5' --  Saber Slash
	spell '86392'  '1.0' --  Main Gauche
	spell '22482'  '1.5' --  Blade Flurry
	spell '57841'  '3.5' --  Killing Spree
	spell '185779' '2.0' --  Talent: Cannonball Barrage
	spell '202822' '1.0' --  Artifact: Greed
	alias '202823' '202822' --  [MH/OH Merger] Artifact: Greed
	alias '197834' '193315' --  [Proc Merger] Saber Slash

	spec  '261' -- Sublety
	spell '121473' '1.5' --  Shadowblades
	spell '185438' '1.5' --  Shadowstrike
	spell '197835' '0.5' --  Shuriken Storm
	spell '197800' '0.5' --  Shadow Nova
	spell '195452' '2.5' --  Nightblade (DoT)
	spell '158188' '2.5' --  Talent: Soothing Darkness
	spell '220893' '2.5' --  Artifact: Akaari's Soul
	alias '121474' '121473' --  [MH/OH Merger] Artifact: Greed
end


class 'SHAMAN'
do
	spec  '262' -- Elemental
	spell '285452' '1.0' --  Elemental Blast
	spell '51505'  '1.0' --  Lavaburst (Elemental)
	spell '188196' '1.0' --  Lightning Bolt (Elemental)
	spell '188443' '1.5' --  Chain Lightning (Elemental)
	spell '77478'  '1.5' --  Earthquake
	spell '188389' '2.5' --  Flame Shock
	spell '51490'  '0.5' --  Thunderstorm
	spell '192231' '2.5' --  Talent: Liquid Magma Totem
	spell '210714' '1.0' --  Talent: Ice Fury
	spell '170379' '2.0' --  Talent: Earthn Rage
	spell '197568' '0.5' --  Talent: Lightning Rod
	spell '117588' '0.5' --  Talent: Primal Elementalist [Fire]
	spell '191732' '1.5' --  Artifact: Lightning Elemental (Chain Lightning)
	spell '205533' '1.5' --  Artifact: Volcanic Inferno

	spec  '263' -- Enhancement
	spell '195256' '1.5' --  Stormlash (Gets Spammy!)
	spell '187874' '0.5' --  Crash Lightning
	spell '192592' '1.5' --  Stormstrike: Crash Lightning (TODO: Not working?)
	spell '25504'  '0.5' --  Windfury Attacks
	spell '32175'  '0.5' --  Stormstrike MH/OH Merger
	spell '10444'  '1.5' --  Flametongue
	spell '199054' '0.5' --  Artifact: Unleash Doom
	spell '198485' '0.5' --  Artifact: Alpha Wolf
	spell '198483' '1.5' --  Artifact: Doom Wolves
	spell '199116' '2.0' --  Artifact: Doom Vortex
	spell '210854' '0.5' --  Talent: Hailstorm
	spell '210801' '2.5' --  Talent: Crashing Storm
	spell '197385' '2.5' --  Talent: Fury of Air
	spell '197214' '2.5' --  Talent: Sundering
	alias '32176'  '32175'   --  [MH/OH Merger] Stormstrike
	alias '199053' '199054' --  [MH/OH Merger] Artifact: Unleash Weapons

	spec  '264' -- Restoration
	spell '421'    '0.5' --  Chain Lightning (Resto)
	spell '1064'   '0.5' --  Chain Heal
	spell '73921'  '2.5' --  Healing Rain
	spell '61295'  '3.5' --  Riptide
	spell '52042'  '3.0' --  Healing Stream Totem
	spell '114942' '2.5' --  Healing Tide Totem
	spell '197997' '2.5' --  Talent: Wellspring
	spell '114911' '2.5' --  Talent: Ancestral Guidance
	spell '157503' '0.5' --  Talent: Cloudburst
	spell '114083' '1.5' --  Talent: Ascendance
	spell '201633' '2.5' --  Talent: Earthen Shield
	spell '209069' '2.5' --  Artifact: Tidal Pools
	spell '208899' '3.0' --  Artifact: Queen's Decree
	spell '207778' '0.5' --  Artifact: Gift of the Queen
end


class 'WARLOCK'
do
	spec  '0' -- All Specs
	spell '217979' '2.0' --  Heath Funnel (You)
	spell '85692'  '2.0' --  Doomguard (Doom Bolt)
	spell '234153' '0.5' --  Drain Life


	spec  '265' -- Affliction
	spell '198590' '1.5' --  Drain Soul
	spell '980'    '2.5' --  Agony
	spell '146739' '2.5' --  Corruption
	spell '233490' '1.5' --  Unstable Affliction
	spell '27285'  '0.5' --  Seed of Corruption
	spell '22703'  '0.5' --  Infernal: Awakening
	spell '20153'  '1.5' --  Infernal: Immolation
	spell '63106'  '3.0' --  Talent: Siphon Life (Heal / Damage has same ID)
	spell '205246' '1.5' --  Talent: Phantom Singularity
	spell '196100' '0.5' --  Talent: Grimoire of Sacrifice
	spell '205260' '2.5' --  Talent: Soul Effigy
	spell '218615' '0.5' --  Artifact: Harvester of Souls
	spell '199581' '0.5' --  Artifact: Soul Flame
	spec  '266' -- Demonlogy
	spell '603'    '0.5' --  Doom

	spec  '267' -- Destruction
end


class 'WARRIOR'
do
	spec  '0' -- All Specs
	spell '52174'  '0.5' --  Heroic Leap
	spell '46968'  '0.5' --  Shockwave
	spell '156287' '2.5' --  Ravager

	spec  '71' -- Arms
	spell '845'    '0.5' --  Cleave
	spell '12294'  '0.5' --  Talent: Sweeping Strikes (Mortal Strike)
	spell '772'    '3.5' --  Talent: Rend
	spell '215537' '2.5' --  Talent: Trauma
	spell '209569' '2.5' --  Artifact: Corrupted Blood of Zakajz
	spell '209700' '0.5' --  Artifact: Void Cleave
	spell '209577' '2.5' --  Artifact: Warbreaker
	spell '199658' '1.5' --  Whirlwind
	spell '278497' '0.5' --  Seismic Wave
	spell '262115' '3.0' --  Mastery: Deep Wounds (DoT over 6s)
	alias '199850' '199658' --  [Spell Merger] Whirlwind

	spec  '72' -- Fury
	spell '5308'   '1.0' --  Execute
	spell '184367' '2.5' --  Rampage (Red Face Icon)
	spell '96103'  '1.0' --  Raging Blow
	spell '199667' '1.5' --  Whirlwind
	spell '23881'  '0.5' --  Bloodthirst (Whirlwind: Meat Cleaver)
	spell '113344' '2.5' --  Talent: Bloodbath
	spell '118000' '0.5' --  Talent: Dragon Roar
	spell '50622'  '2.5' --  Talent: Bladestorm
	spell '205546' '3.0' --  Artifact: Odyn's Fury (DoT)
	alias '163558' '5308'   --  [MH/OH] Execute OH
	alias '85384'  '96103'  --  [MH/OH] Raging Blow
	alias '44949'  '199667' --  [MH/OH] Whirlwind
	alias '95738'  '50622'  --  [MH/OH] Bladestorm
	alias '205547' '205546' --  Artifact: Odyn's Fury (Hit)
	alias '218617' '184367' --  Rampage (1st Hit)
	alias '184707' '184367' --  Rampage (2nd Hit)
	alias '184709' '184367' --  Rampage (3rd Hit)
	alias '201364' '184367' --  Rampage (4th Hit)
	alias '201363' '184367' --  Rampage (5th Hit)

	spec  '73' -- Protection
	spell '6572'   '0.5' --  Revenge
	spell '115767' '3.5' --  Deep Wounds
	spell '6343'   '0.5' --  Thunder Clap
	spell '7922'   '0.5' --  Talent: Warbringer
	spell '222944' '3.0' --  Talent: Inspiring Presence
	spell '203526' '3.5' --  Artifact: Neltharion's Fury
end
