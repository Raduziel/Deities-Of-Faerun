Welcome and thanks for installing Deities of Faerun.

INSTALLATION NOTES:

This mods is fully compatible with Faiths and Powers sphere system, but not with its kits. If you want to play DoF with FnP's sphere system be aware that DoF must be installed BEFORE it. 
If you install it after not a big deal will happen, but you'll lose the sphere designed by DoF for Tyr, Talos, Helm, Lathander and Tempus in favor of FnP's ones.

When it comes to kits, problems may happen, as both FnP and DoF does overhaulings that will probably conflict, so don't do it. For a more complete experience, install all Deities of Faerun components that you want and Faiths and Powers sphere system - in that order.

As many kitpack mods, DoF must be installed AFTER any itempack mods.

KNOWN ISSUES:

Anomen will be able to get proficiencies as a kitless Fighter (5 slots in every weapon). There is nothing I can do about it. He is still bounded to equipment restriction, so be aware that a Watcher of Helm can only use bludgeoning weapons.

This mod is splitted in the following components:

a) Base changes

Those are needed for the rest of the mod. Basically it install all the new BAMs and removes restrictions from the base cleric, so the kits can have their weapon restrictions accordingly to PnP. These changes will affect *every* cleric, including the base class and kits introduced from other mods.

But don't worry: many of the changes will be imperceptible in other cleric mods. The only one you'll perceive is the increase of APR by level. This had to be done because of the kits that gains APR as warriors (like Tempus). You can overhaul this change in other cleric mods by adding "clswpbon = ~0 0 3~" (no quotation marks) in the ADD_KIT routine of the mod's kit tpa/tp2 as the example below:

LAF fl#add_kit_ee
	STR_VAR
		kit_name = ~TheKitName~
		clswpbon = ~0 0 3~
		(...)
END

====================================================================================================================================================================

b) Kits

This component will add the kits per se. All the kits were made as close to their PnP counterpart as possible - what includes some new special abilities exclusive to a specific kit. You can have access to the spell's description by right-clicking the spell's icon at the special ability menu, inside the game. You can see a brief description of the spells at the character generation screen. The new spells are:

1) SUNE

Rapture
(Enchantment/Charm)

Sphere: Thought
Range: 15-ft/level
Duration: 2 turns
Casting Time: 6
Area of Effect: 1 creature
Saving Throw: Special

This spell has two effects: when cast upon an ally it will put it on a state of bliss, raising its morale and banishing all effects of disease, fear, sleep and charm. When cast upon an enemy the target must make a Saving Throw vs. Paralyzation or become stunned during the effect of the spell.

---

Emotion
(Enchantment/Charm)

Sphere: Benediction/Dread
Range: Visual range of the caster
Duration: See below
Casting Time: 4
Area of Effect: 7-ft. radius
Saving Throw: See below

The Heartwarder can inspire one of the following emotions of <PRO_HISHER> target:

HOPE: This spell creates the emotion of hope within the area of effect. All creatures affected by the spell gain, during 1 hour, a morale boost and +2 on their Saving Throws, attack rolls, and damage rolls. This spell nullifies all hopelessness effects within the area of effect at the time of casting.

COURAGE: This spell creates the emotion of courage within the area of effect. All creatures affected by the spell gain, during 1 hour, +1 to hit, +3 to their damage rolls, and +5 temporary Hit Points (which can put them above their maximum Hit Points). This spell nullifies all fear effects within the area of effect at the time of casting.

FEAR: This spell creates the emotion of fear within the area of effect. All enemies who fail to save vs. Spell flee for 5 rounds. This spell nullifies Emotion, Courage within the area of effect at the time of casting.

HOPELESSNESS: This spell creates the emotion of hopelessness within the area of effect. All enemies who fail to save vs. Spell just stand and do nothing for 1 turn. This spell nullifies Emotion, Hope within the area of effect at the time of casting.

====================================================================================================================================================================

2) CYRIC

Dark Aura
(Alteration, Invocation/Evocation)

Sphere: Dread
Range: 0
Duration: 3 turns
Casting Time: 7
Area of Effect: A sphere of 15-ft radius
Saving Throw: None

This spell creates a spherical miasma of gloom and menace centered on the caster. When this spell is cast, all evil aligned beings attack at a +1 bonus to their attack and damage rolls, all good-aligned creatures strike at a -1 penalty to their attack and damage rolls, and the caster is personally empowered to strike at a +3 bonus to <PRO_HISHER> attack and damage rolls. Neutral-aligned beings (with respect to good and evil) are unaffected by this spell. Once cast, the spell moves with the caster and does not need to be concentrated on to be maintained.

---

Instill Madness
(Enchantment/Charm)

Sphere: Thought
Range: Touch
Duration: Permanent
Casting Time: 5
Area of Effect: 1 creature
Saving Throw: Neg.

Instill Madness causes the subject to become completely insane unless a Saving Throw vs. Spell is made with a -2 penalty. Upon a failed Saving Throw, the subject remains in this state until a successful Dispel Magic is cast upon it.

====================================================================================================================================================================

3) SHAR

Darkness
(Alteration)

Sphere: Shadow
Range: 20 ft.
Duration: 1 turn
Casting Time: 2
Area of Effect: 15-ft. radius
Saving Throw: None

This spell causes total, impenetrable darkness in the area of effect. Infravision is useless. Neither normal nor magical light works. Every creature, foe or friend, will be blinded during the effect of this spell, unless it leaves the affected area.

---

Nightmare
(Invocation, Illusion/Phantasm)

Sphere: Thought
Range: 40 ft.
Duration: 2 turns
Casting Time: 2
Area of Effect: 1 creature
Saving Throw: Neg.

This spell enables the Nightcloak to put <PRO_HISHER> victim in a deep slumber and send a hideous and unsettling vision to the recipient, causing 1d10 points of magic damage. A Saving Throw vs. Spells is allowed to avoid all the effects.

---

Eyebite
(Enchantment/Charm, Illusion/Phantasm)

Sphere: Thought
Range: 60 ft.
Duration: 1 round/3 levels
Casting Time: 6
Area of Effect: 1 creature
Saving Throw: Neg.

An eyebite spell enables the caster to merely meet the gaze of a creature and speak a single word to cause an effect. The Nightcloak selects one of four possible gaze attacks at the time the spell is cast. Every effect can be resisted with a Saving Throw vs. Spells with a -4 penalty. The four effects of the spell are as follows:

CHARM: The Nightcloak can charm a single person or monster. The effect is to make the charmed subject absolutely loyal and docile to the caster, even to the point of personal danger. It is otherwise the same as a Domination spell.

FEAR: The Nightcloak can cause fear. The subject flees in blind terror for the duration of the spell.

SICKEN: This power enables the caster to cause sudden pain and fever to sweep over the subject's body. The target will suffer a -4 penalty to Strength, Dexterity, Constitution, Armor Class, Thac0, damage and a 50% penalty to its Movement Rate.

SLEEP: The Nightcloak can cause any individual to fall into a comatose slumber.

====================================================================================================================================================================

4) BAERVAN

Changestaff
(Alteration)

Sphere: Plant 
Range: Touch
Duration: 5 turns
Casting Time: 4 
Area of Effect: Special 
Saving Throw: None

By means of this spell, the caster is able to change a specially prepared staff into a treant-like creature of the largest size, about 24 feet tall. When the priest plants the end of the staff in the ground and speaks a special command and invocation, the staff turns into a treant-like creature with 12 Hit Dice, 80 hit points, and Armor Class 0. It attacks twice per round, inflicting 4d6 points of damage with every successful attack. The staff-treant defends the caster and obeys any spoken commands. However, it is by no means a true treant; it cannot converse with actual treants or control trees. The transformation lasts either for as many turns as the caster has experience levels or until the staff is destroyed, whichever occurs first. If the staff-treant is reduced to 0 hit points or less, it crumbles to a sawdust-like powder and the staff is destroyed.

====================================================================================================================================================================

5) HELM

Mace of Odo
(Evocation)

Sphere: War 
Range: 0
Duration: Special 
Casting Time: 10
Area of Effect: One magical mace-like construct
Saving Throw: None

This spell enables a Watcher to create a magical mace in <PRO_HISHER> hand. The Mace of Odo is wielded immediately when casting is complete and protects the Watcher against all level 1 and level 2 spells.

A Mace of Odo strikes as a +5 weapon and does 3d6+5 points of damage. Creatures of 2 HD or less must make a successful Saving Throw vs. Paralyzation when struck by the mace or be paralyzed for 3 turns.

The mace vanishes after one strike or after 3 rounds.

---

Wyvern Watch
(Abjuration, Evocation)

Sphere: Protection 
Range: 30 ft.
Duration: Special 
Casting Time: 5
Area of Effect: 30-ft. radius
Saving Throw: Neg.

This spell is known as wyvern watch because of the insubstantial haze brought forth by its casting, which vaguely resembles a wyvern. It is typically used to guard some area against intrusion. Any creature that approaches the guarded area may be affected by the "wyvern" and must roll a successful Saving Throw vs. Spells or stand paralyzed for one round per level of the caster, until freed by the Watcher, by a dispel magic spell, or by a remove paralysis spell. A successful saving throw indicates that the subject creature was missed by the attack of the wyvern-form, and the intruder was not affected.

---

Seeking Sword
(Evocation)

Sphere: War 
Range: 30 ft.
Duration: 2 turns 
Casting Time: 7
Area of Effect: One magical sword-like construct
Saving Throw: None

This spell brings into being a shimmering blade of force that appears as a sword of any description the caster desires, typically a broad sword. The sword forms in midair and is animated by the will of the caster (who need never touch it), flashing about as it attacks. The blade can strike four times per round, doing 2d4 points of damage with each successful hit, but cannot act beyond the caster's line of sight.

Although it has no attack or damage bonuses, a seeking sword is considered a +4 magical weapon for determining what sorts of beings it can strike. It has 15 Thac0, 30 Hit Points, 5 AC and can only be harmed by fire, magic, acid or crushing damage. Other spell casting is impossible while maintaining the spell, though the caster may move at half his or her normal movement rate per round while doing so.

====================================================================================================================================================================

6) LATHANDER

Boon of Lathander
(Conjuration/Summoning)

Sphere: Benediction
Range: 0
Duration: 6 rounds
Casting Time: 7
Area of Effect: The caster
Saving Throw: None

During this spell's effect, the spell recipient receives bonuses of + 1 on attack rolls and +1 on all saving throws and is allowed one extra attack per round. The spell recipient glows with a rose-red radiance during this time of augmented ability. This radiance is similar to faerie fire in appearance, but it does not carry with it the benefits that opponents would gain when attacking a creature outlined in faerie fire.

---

Faerie Fire
(Alteration)

Sphere: Fire
Range: 80 ft.
Duration: 2 turns
Casting Time: 4
Area of Effect: 15-ft. radius
Saving Throw: None

This spell enables the caster to outline one or more objects or creatures with a pale glowing light. Outlined creatures are easier to strike; thus, opponents gain a +2 bonus to attack rolls. Note that outlining can render otherwise invisible creatures visible.

---

Sunrise
(Evocation, Alteration)

Sphere: Light
Range: Touch
Duration: Instant
Casting Time: 6
Area of Effect: 1 creature
Saving Throw: Special

With this spell, the caster evokes a dazzling sphere of light equal to natural sunlight around himself. Any undead touched by the Dawnbringer will suffer 4d6 points of damage, be blinded and, for vampires and shadows only, destroyed. A Saving Throw vs. Spells is allowed to halve the damage and deny the other effects.

====================================================================================================================================================================

7) OGHMA

Legend Lore
(Divination)

Sphere: Knowledge
Range: 0
Duration: Special
Casting Time: 3
Area of Effect: 1 creature
Saving Throw: None

With this spell, the Lorekeeper can extend  knowledge immensely. The caster gains 100 points of Lore for five rounds, is capable of using any item for two rounds and learns how to unequip cursed items, cure diseases and neutralize poisons.

====================================================================================================================================================================

8) ILMATER

Martyrdom of Ilmater
(Abjuration, Alteration)

Sphere: Vigor 
Range: 0
Duration: 3 rounds
Casting Time: 3
Area of Effect: The caster 
Saving Throw: None 

By means of this spell the Painbearer call a beneficial servant of Ilmater to possess <PRO_HIMHER>. During this possession the priest can resist any sort of physical attacks, but can't move, cast spells or fight back.

---

Endurance of Ilmater
(Abjuration, Alteration, Necromancy)

Sphere: Vigor 
Range: Touch
Duration: 6 rounds
Casting Time: 7
Area of Effect: 1 creature 
Saving Throw: None 


This spell doubles the hit points of the spell recipient for the spell duration. Any damage suffered is taken first from these phantom hit points until they are all exhausted; damage is only then taken from the real hit points of the affected being. The spell also protects the vitality of the spell recipient so that all checks of any sort against contracting diseases automatically succeed, and all other Saving Throws receive a +2 bonus.

====================================================================================================================================================================

9) MASK

Shadowcloak
(Alteration)

Sphere: Shadow
Range: 0
Duration: 1 turn
Casting Time: 6
Area of Effect: The caster
Saving Throw: None

This spell creates a semisolid fog of amorphous shape that engulfs the caster and moves with <PRO_HIMHER> for the duration of the spell.

A shadowcloak both confuses attackers with its swirling, smoky chaos, and slows strikes, so that all attacks against the shadowcloak-user occur at a -3 attack penalty and a damage penalty of-1 point per die. The shadowcloak also muffles all sounds made by the cloaked being (regardless of that being's desires), so that even shouted speech seems faint and distant, and all sounds short of breakage or metallic ringing or clinking are very likely to be completely blanked out.

The shadowcloak grants to the Silentwalker a 100% bonus to Move Silently, a 50% bonus do Hide in Shadows and puts the caster under the effect of Silence.

====================================================================================================================================================================

10) AURIL

Frost Dagger
(Evocation)

Level: 1
Sphere: Water
Range: 30
Duration: Instant
Casting Time: 3
Area of Effect: 1 creature
Saving Throw: Special

This spell creates a dagger that flies to a target determined by the caster. This weapon hits for 1d4+5 points of cold damage and the target must make a Saving Throw vs. Death or be frozen for 1 round.

---

Frost Whip
(Evocation)

Level: 2
Sphere: Water
Range: 5
Duration: Instant
Casting Time: 5
Area of Effect: 1 creature
Saving Throw: Special

This spell creates a whip made of pure ice that is used immediately against a target designed by the caster for 4d4 points of cold damage. The whip makes the area around the target slippery - a Saving Throw vs. Wands must be made, otherwise the target will slip three feet away from the caster.

---

Frost Sword
(Alteration, Evocation)

Level: 4
Sphere: Water
Range: 0
Duration: 1 turn
Casting Time: 4
Area of Effect: The caster
Saving Throw: None

This spell creates a swirling sword-shaped formation of jagged, fast-swirling ice shards extending from the caster's hand. Weightless and nonmetallic, it is considered a +2 enchanted weapon for purposes of determining what it can hit and strikes at THACO 6, regardless of the caster's normal combat abilities. Its touch lacerates for 3d4 points of damage and chills for an additional 1d6 points of cold damage.

---

Conjure Ice Elemental
(Conjuration/Summoning)

Level: 6
Sphere: Water
Range: Visual range of the caster
Duration: 10 turns
Casting Time: 9
Area of Effect: Special
Saving Throw: None

Upon casting a Conjure Ice Elemental spell, the Icevassal opens a special gate to the Paraelemental Plane of Ice, and an ice elemental is summoned in the vicinity of the caster. There is a 60% chance that a 12-Hit-Dice elemental appears; a 35% chance that a 16-Hit-Dice elemental appears; and a 5% chance that a 24-Hit-Dice elemental appears. The elemental will do the bidding of the caster until it is slain or the duration of the spell runs out. All the commands given to the elemental are done telepathically, so there is no time lost due to miscommunication and no need to know the language of the summoned creature. Unlike Mages, priests do not have to engage in a battle of the minds to control their elemental.

====================================================================================================================================================================

11) UMBERLEE

Dehydrate
(Alteration)

Level: 4
Sphere: Water
Range: 40
Duration: Instant
Casting Time: 4
Area of Effect: One creature
Saving Throw: Neg.

This spell evaporates moisture from the bodies of the target creature, inflicting 1d8 points of magic damage per level of the caster (maximum 10d8) on a failed Saving Throw vs. Death.

---

Drown
(Alteration)

Level: 4
Sphere: Water
Range: 30
Duration: 1 turn
Casting Time: 6
Area of Effect: One creature
Saving Throw: Special

This spell fill the lungs of the target creature with water. Creatures that do not breathe are unaffected. Drowning creatures suffer -4 to Armor Class, -4 to hit, -6 to Dexterity, one less attack per round, and half movement rate during the effect of the spell. On top of that, the target takes 4d8 of crushing damage. A successful Saving Throw vs. Spells negates all effects except for the damage.

====================================================================================================================================================================

12) SELÛNE

Moonbeam
(Invocation)

Level: 2
Sphere: Light
Range: 60
Duration: 5 rounds
Casting Time: 2
Area of Effect: One creature
Saving Throw: Neg.

This spell can only be used outdoors. The Silverstar calls a beam of light from the sky and directs it to a target blinding it and turning it incapable of becoming invisible for the duration of the spell. A successful Saving Throw vs. Breath avoids all the effects.

---

Shooting Star
(Invocation)

Level: 7
Sphere: Light
Range: 100
Duration: Instant
Casting Time: 7
Area of Effect: 15-ft. radius
Saving Throw: None

A priest casting shooting stars creates a violent turbulence in the air above the area of effect, from which a number of magically-charged miniature starts to erupt and shower onto the ground. Within the area of effect, all creatures suffer 6d10 points of magical damage and 48 points of crushing damage. A successful Saving Throw vs. Spells at a -4 penalty indicates half damage.

====================================================================================================================================================================

13) TALONA

Poison Touch
(Necromancy)

Level: 2
Sphere: Affliction
Range: 0
Duration: Special
Casting Time: 5
Area of Effect: One creature
Saving Throw: Special

This spell creates a deadly poison in the caster's hand or another chosen limb. Touching a creature will deliver this poison immediately and enforce a Saving Throw vs. Poison.

If the saving throw succeeds, the victim takes 1 point of damage and the corrosive magic eats a hole in any armor or garment worn and causes a disfiguring eruption of the skin beneath the touched area, reducing the target's Charisma by 2. If the saving throw fails, the victim suffers 6 points of damage and is slowed instantly for three rounds and in the next round the second stage of the poison applies.

On this second round, the victim must make another Saving Throw. If it succeeds, the victim suffers 1 point of damage, is corroded as discussed above, and the spell ends. If this second Saving Throw fails, the victim suffers 3d6 points of additional damage, loses another 2 points of Charisma, and the third (and final) stage of the poison begins.

On this third round, the victim must make another Saving Throw. If it succeeds, the victim suffers 1d10 points of poison damage. If it fails, the victim will fall into a coma that will last for 1 turn.

====================================================================================================================================================================

14) LOVIATAR

Touch of Loviatar
(Alteration)

Level: 1
Sphere: Affliction
Range: Touch
Duration: 5 rounds
Casting Time: 1
Area of Effect: One creature
Saving Throw: Neg.

This spell is the reason why a Pain of Loviatar has this title. The touched creature must make a Saving Throw vs. Spell or be afflicted by a pain that gives a -4 penalty to its attack rolls and reduce its Dexterity by 2.

---

Whip of Flame
(Invocation/Evocation)

Level: 2
Sphere: Affliction
Range: 12
Duration: Special
Casting Time: 5
Area of Effect: One creature
Saving Throw: Special

The Pain creates a whip made of fire that is directed against a creature. The whip damages the target with fire by 1d8 and imposes a Saving Throw vs. Breath Weapons. A failure means that the target is burning and will keep receiving 3 points of fire damage per round until succeeds on the saving throw.

---

Whip of Pain
(Necromancy)

Level: 3
Sphere: Affliction
Range: 10
Duration: Special
Casting Time: 6
Area of Effect: One creature
Saving Throw: Special

A whip is created by the Pain and immediately used against a creature and imposes a Saving Throw vs. Spells. If succeeds, the target only gets 2d4 points of slashing damage. If it fails, the target suffers a huge pain that gives a -2 penalty to its attack rolls, a -1 penalty to its AC and makes impossible to concentrate enough to cast spells.

---

Touch of Torment
(Necromancy)

Level: 4
Sphere: Affliction
Range: 0
Duration: Special
Casting Time: 7
Area of Effect: One creature
Saving Throw: Special

By touching a creature, the Pain attacks its nervous system, delivering an overwhelming pain, causing 4d6 points of magic damage and completely incapacitating the target.

At the end of the first round, the victim makes a Saving Throw vs. Spells. If it succeeds, the spell ends. If it fails, 2d6 points of magic damage are delivered and the victim is incapacitated for another round. 

At the end of the second round, the victim makes another Saving Throw vs. Spells. If it succeeds, the spell ends. If it fails, 1d6 points of magic damage are delivered and the victim is incapacitated for a third round, when the spell expires.

---

Ensnarement
(Necromancy)

Level: 6
Sphere: Perdition
Range: 35
Duration: 10 turns
Casting Time: 9
Area of Effect: Special
Saving Throw: None

This spell summons an Erinyes to serve the Pain. She has 48 HP, 15 Thac0, AC 0, can only be damaged with weapons +2 or better, strikes twice per round and each hit drains one level of the target. The devil is also immune to poison, fear, stun, charm and confusion.

====================================================================================================================================================================

15) BANE

Mystic Lash
(Invocation/Evocation)

Level: 5
Sphere: War
Range: 10
Duration: Special
Casting Time: 8
Area of Effect: One creature
Saving Throw: Special

Casting this spell creates a long whip of ghostly, glowing red force that emanates from the priest's hand. A mystic lash does 2d8 points of electrical damage. Targets who are hit by the lash are entitled to a Saving Throw vs. Spells to take half damage. The strike of the lash also has a magical effect randomly chosen from the list below:

1: Target is stunned for 2 rounds

2: Target is paralyzed for 1 round and will stay paralyzed until a successful Saving Throw vs. Spells is made

3: Target takes an extra 2d4 points of slashing damage

4: Target is hurled 25 yards away from the Dreadruler and suffer an extra 2d6 points of bludgeoning damage.

====================================================================================================================================================================

16) BHAAL

Bone Dagger
(Invocation/Evocation)

Level: 1
Sphere: Affliction
Range: 0
Duration: 3 rounds
Casting Time: 1
Area of Effect: Special
Saving Throw: None

This spell creates a dagger on the Deathstalker's hand that can't be dropped or unequipped for the duration of the spell. The dagger strikes as a +2 weapon, but does not offers a bonus for hit or damage and can be used despite the cleric's proficiency. Every time the dagger strikes, there's a chance of 1% for every two 2 levels of the caster of automatically slaying the target creature.

---

Plane Skipping
(Alteration)

Level: 6
Sphere: Perdition
Range: 0
Duration: 5 rounds
Casting Time: 1
Area of Effect: The caster
Saving Throw: None

The Deathstalker enters the Plane of Gehenna while those around <PRO_HIMHER> appear to be frozen in time. While in the other plane, the <PRO_HESHE> can move freely during 30 seconds, but can't attack, cast spells, use items or turn undead while this spell lasts. The Deathstalker must be cautious, as there's a 5% chance of a Pit Fiend follow <PRO_HIMHER> during the Plane Skipping.

====================================================================================================================================================================

17) MYRKUL

Hand of Myrkul
(Necromancy)

Level: 7
Sphere: Death
Range: Touch
Duration: Permanent
Casting Time: 1
Area of Effect: 1 creature
Saving Throw: Neg.

The Gray One touches <PRO_HISHER> victim enforcing the creature to make a Saving Throw vs. Death or be transformed into dust. This transformation is instantaneous and irreversible. There is also a good chance that this will destroy some if not all of the items that the creature is carrying.

---

Summon Minor Death
(Necromancy)

Level: 6
Sphere: Death
Range: 35
Duration: 1 turns
Casting Time: 9
Area of Effect: Special
Saving Throw: None

This spell summons a Minor Death to serve the Gray One. It has 64 HP, 1 Thac0, AC -4, can only be damaged with weapons +1 or better, strikes twice per round delivering 2d8 points of slashing damage per hit and cannot be turned. The Minor Death is also immune to cold, fire, poison, electricity damage and all Enchantment/Charm spells.


====================================================================================================================================================================

18) KELEMVOR

Chilling Scythe
(Evocation, Necromancy)

Level: 3
Sphere: War
Range: 0
Duration: 1 turn 
Casting Time: 5
Area of Effect: One magical scythe
Saving Throw: None

This spell creates an over-sized but weightless scythe that can be wielded by the Doomguide as a weapon. The scythe is a two-handed, 7-foot-long device that is a +2 enchanted weapon dealing 2d4+2 points of slashing damage plus chilling for a further 1d4 points of magic damage - this chilling damage is caused by draining of life force, not cold. A Chilling Scythe has a speed factor of 5 and the Doomguide wields it as if <PRO_HESHE> is proficient.

If a Chilling Scythe even touches an undead creature it delivers 4d6 points of magic damage to the undead and hurls it helplessly 20 feet away from the Doomguide.

---

Summon Minor Death
(Necromancy)

Level: 6
Sphere: Death
Range: 35
Duration: 1 turns
Casting Time: 9
Area of Effect: Special
Saving Throw: None

This spell summons a Minor Death to serve the Doomguide. It has 64 HP, 1 Thac0, AC -4, can only be damaged with weapons +1 or better, strikes twice per round delivering 2d8 points of slashing damage per hit and cannot be turned. The Minor Death is also immune to cold, fire, poison, electricity damage and all Enchantment/Charm spells.


====================================================================================================================================================================

19) RED KNIGHT

Divination
(Divination)

Level: 3
Sphere: Knowledge
Range: 0
Duration: 1 turn
Casting Time: 10
Area of Effect: The caster
Saving Throw: None

This spell allows the caster to foresee what is about to happen to <PRO_HIMHER> in the next moments. Due to this awareness, the caster becomes immune to backstabbing and gains a +2 bonus to Thac0, Armor Class and Saving Throws.

---

Consequence
(Divination)

Level: 5
Sphere: Knowledge
Range: 0
Duration: 1 turn
Casting Time: 10
Area of Effect: The caster
Saving Throw: None

This spell allows the caster to foresee what is about to happen to <PRO_HIMHER> and around <PRO_HIMHER> in the next moments. Due to this awareness, the caster becomes immune to backstabbing and gains a +2 bonus to Thac0, Armor Class, Saving Throws and can to detect traps that are close.


====================================================================================================================================================================

20) GARAGOS


Chaotic Combat
(Invocation/Evocation)

Level: 4
Sphere: War
Range: 30
Duration: 1 turn
Casting Time: 3
Area of Effect: One creature
Saving Throw: None

When chaotic combat is cast on a creature, it is inspired beyond his years of training and is suddenly struck with numerous insights for variations on the standard moves of attack and defense.

Unfortunately, these insights are helpful in only four-fifths (80%) of the warrior's attacks. In the remaining attacks, the spell actually impairs the warrior's standard performance. This spell takes effect at the beginning of each round. On a positive roll the target gains bonuses of +2 to Thac0 and Armor Class. On a negative roll, the target suffers a -2 penalty to Thac0 and Armor Class.

---

Blood Armor
(Alteration)

Level: 4
Sphere: War
Range: 0
Duration: 1 turn
Casting Time: 7
Area of Effect: The caster
Saving Throw: None

This spell enshrouds the priest in an armor of dense blood. Any weapon used to attack the Bloodreaver seems to impact on a iron wall as the blood momentarily coagulates to form a bulwark against the imminent attack.

While protected by a Blood Armor, the cleric has a +3 bonus to <PRO_HISHER> Armor Class and a 25% resistance to cold and fire as well as a 25% vulnerability to electricity.


====================================================================================================================================================================

On top of the new spells and special abilities, every kit will get a Holy Symbol at level 25. Every kit get its own Holy Symbol, but their powers are the same and are listed below:

STATISTICS:

Equipped abilities:
– Bless
– Turn Undead Level: +1
– Decrease spellcasting time by 1
– Can memorize one extra divine spell from level 1 to 7

Weight: 0

====================================================================================================================================================================

c) Kits to NPCs

This component will give the kit for a NPC that follows that deity. So Viconia will become a Nightcloak of Shar, Quayle a Hoodwinker of Baravar Cloakshadow and Anomen a Watcher of Helm. And so it goes.

This component also alters stats (raising it to the kit's minimum), alignment (altering it to the kit's restriction) and proficiencies (to be in line with what the kit allows) when necessary. Also the NPCs special abilities will be removed (as Yeslick's Dispel Magic and Branwen's Spiritual Hammer) for balance reasons.

====================================================================================================================================================================

d) New strongholds possibilities

Some kits will be able to get strongholds non-related to the cleric's one (as listed below). Notice that the one-stronghold rule still applies, so even with Tyr being eligible for three strongholds (Helm, Fighter and Paladin) chosen one will make you lose the possibility of getting another. 

- Auril: Talos

- Azuth: Wizard

- Baervan Wildwanderer : Druid, Ranger

- Bane: Talos, Fighter

- Baravar Cloakshadow: Thief

- Clangeddin: Helm, Fighter
                                                                
- Cyric: Talos, Thief

- Garagos: Talos                                   
                 
- Helm: Helm

- Ilmater: Lathander

- Jergal: Helm

- Kelemvor: Helm

- Lathander: Lathander

- Loviatar: Talos

- Malar: Talos, Druid

- Mask: Talos, Thief

- Mystra: Wizard

- Oghma: Bard, Wizard

- Red Knight: Helm, Fighter

- Selûne: Lathander

- Shar: Talos

- Sune: Lathander, Bard

- Talona: Talos                                   

- Talos: Talos

- Tempus: Fighter

- Torm: Helm, Paladin

- Tyr: Helm, Paladin

- Umberlee: Talos

Without this component the strongholds will be chosen by alignment, as the unmodded game does.

====================================================================================================================================================================

THANKS

I have a lot of people to say "Thank You".

Kjeron undoubtedly deserves a huge thank you as he guided me through this long journey. I learned a lot from him.

Subtledoctor and Grammarsalad also deserve a big thank you. When I approached them saying that I wanted to make a cleric kitpack they were very supportive.

CrevsDaak's guide "[How to] Making kit mods for the EE!" made this kitpack possible. To be honest, made possible that I started modding. Thanks!

CamDawg's SPELL_TO_INNATE helped me a lot in this process. His guide to modding strongholds and the code that I turned into SPELL_TO_KIT_FEATURE where very helpful too. So thanks.

Gwendolyne was fundamental to make this kitpack have so many BAMs. Thank you!

Argent77 for giving me the code that allowed the BAM files to be in the game without conflicting with any other mods. You have my thanks.

Arctodus who briefly was in this project and helped me a lot with brainstorming. Thanks, dude!