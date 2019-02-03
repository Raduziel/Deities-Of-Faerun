Welcome and thanks for installing Deities of Faerun.

INSTALLATION NOTES:

* Deities of Faerûn is not compatible with Faiths and Powers.

* Deities of Faerûn should be installed after any mod that adds or alters items in the game.

* Deities of Faerûn should be installed after any mod that adds or alters spells in the game.

* Deities of Faerûn should be installed after mods that introduce NPCs that receives a kit from DoF.

* Deities of Faerûn should be installed after mods that introduce Kits that will use the Sphere System.

* Deities of Faerûn should be installed before Improved Shamanic Dance.

* Deities of Faerûn should be installed after EET (but ALWAYS before EET_End).

* Deities of Faerûn will probably misbehave with any mod component that overhauls the combat system of the game.

* Deities of Faerûn will probably misbehave with any mod component that alters the strongholds quests (except for those that exclusively remove the one-stronghold limit).

* Deities of Faerûn is not compatible with any mods that alters the Cleric and will break any kit added by other mods (except for the Spirit Redeemer from I Hate Undead) - this can be fixed doing the following:

Add "clswpbon = ~0 0 3~" (no quotation marks) in the ADD_KIT routine of the kit's tpa/tp2 as the example below:

.................................................
| LAF fl#add_kit_ee                             |
|	STR_VAR                                 |
|		kit_name = ~KitInternalName~    |
|		clswpbon = ~0 0 3~              |
|		(...)                           |
| END                                           |
.................................................

-- A special note about Tweaks Anthology --

i) Use Character Colors Instead of Item Colors // This turns the Use Kit's Colors component redundant.

ii) Multiple Strongholds - any stronghold for anyone // This turns the Stronghold Alterings component redundant.

iii) Multiple Strongholds - more than one stronghold // I didn't test to see how this behaves with the Stronghold Alterings. Probably they will work fine together.

iv) Universal Clubs, Weapon Styles for all // Will not break anything, but will remove part of DoF's flavor (reproduce the kits as they are in PnP).

v) Alter Weapon Proficiency System // This one will probably break DoF as every kit has specific restrictions.

vi) Multiclass Grandmastery // This component may turn some deities features redundant (like Alaghar of Clangeddin being able to put *** in Axes/Hammers as Clerics or F/C)

vii) Alter Multiclass Restriction // This has the possibility of allowing players to make combinations that were not forecasted by DoF. This may lead to misbehaves.

viii) Remove Racial Restrictions for Kits // This component will not break anything in terms of mechanics but will do so when it comes to lore. Some deities/pantheons are restricted to specific races for lore reasons.

ix) Paladins Use IWD-HoW Spell Progression/Rangers Use IWD-HoW Spell Progression // This one may cause problems as DoF's Sphere System enforces BG's spell progression in IWD (because it is the one used in PnP). Due to that, the Sphere System does not embrace Rangers with a spellcasting over the third circle and Paladins with a spellcasting over the fourth circle.

x) Loosen Item Restrictions for Multi- and Dual-class Clerics/Change Item Restrictions for Multi- and Dual-class Druids // As DoF uses specific items restrictions for every kit, this component may lead to unexpected behaves.

xi) Everyone Gets Bonus APR from Specialization // This component will turn some deities' features redundant. In DoF, extra-APR is something precious and the kits that have access to this feature have a drawback in the form of a smaller sphere selection.

xii) Allow Mages to Use Bucklers and Thieves to Use Small Shields // Some deities specifically bans shields, and some of those have C/M and C/T multiclasses. This component will remove this restriction.

xiii) Give Every Class/Kit Four Weapon Slots // The warrior-like deities from DoF have as a way of balance its extra APR and sometimes specialization the fact that it gets fewer weapon slots. This component may affect the balance.

KNOWN ISSUES:

* Anomen will be able to get proficiencies as a kitless Fighter (5 slots in every weapon). There is nothing I can do about it. He is still bounded to equipment restriction, so be aware that a Watcher of Helm can only use bludgeoning weapons. Installing Kjeron's Dual-Class-Into-Kits fixes this.

* The F/C or R/C versions of the kits that have as a feature "Hit Dice: d10" will have problems with its HP count. It happens because the multiclass function uses the priests standard HD (d8) to build the average HP we see in multiclasses. Having a d10 HD, the average HD for those kits should be d10 ([10+10]/2), but instead, it receives a d9 ([10+8]/2).

To solve this I've created a spell that is applied every level permanently giving 1 HP to the designed character. The problem is, the opcode that does this is not read during Character Generation, so some HP is not gained. The loss is presented below:

BGEE/BP1/IWDEE 1 HP | SoD/BG2EE</i>  6 HP | HoW/BP2 9 HP | ToB 13 HP

To solve this gap you'll need to enable the console commands and enter the following code (you can Copy/Paste it) with the mouse over the designed character.

........................................................................
|                                                                      |
|   C:Eval('ActionOverride(Myself,ApplySpellRES("RAHPFIX",Myself))')   |
|                                                                      |
........................................................................

Every time you do this, 1 HP will be permanently added to the character. So you'll need to do this once for BGEE/BP1/IWDEE, six times for SoD/BGEE, nine times for How/BP2 and thirteen times for ToB. Seems like a lot of trouble but it is quite easy and this needs to be done just after the character creation. So if you're importing a character from BG1 to BG2 you don't need to do this (as long as you did it in BG1). The same goes for BG2 and ToB, IWD and HoW.

The remaining level ups will apply this spell automatically, so this really is a one-time-thing. Sorry about that, but it is an engine issue.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

This mod contains the following components:



a) Base changes

Those are needed for the rest of the mod. Basically it install all the new BAMs and removes restrictions from the base cleric, so the kits can have their weapon restrictions accordingly to PnP. These changes will affect *every* cleric, including the base class and kits introduced from other mods.



====================================================================================================================================================================



b) Kits

This component will add the kits per se. All the kits were made as close to their PnP counterpart as possible - what includes some new special abilities exclusive to a specific kit. You can have access to the spell's description by right-clicking the spell's icon at the special ability menu, inside the game. You can see a brief description of the spells at the character generation screen. The new spells are:


1) SUNE

Rapture
(Enchantment/Charm)

Sphere: Thought
Range: 75 ft.
Duration: 1 round/level
Casting Time: 6
Area of Effect: One creature
Saving Throw: Special

This spell has two effects: when cast upon an ally it will put it on a state of bliss, raising its morale and banishing all effects of disease, fear, sleep and charm. When cast upon an enemy the target must make a Saving Throw vs. Paralyzation or become stunned during the effect of the spell.

---

Emotion
(Enchantment/Charm)

Sphere: Combat, Darkness, Sun
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

Sphere: Darkness
Range: 0
Duration: 1 round/level
Casting Time: 7
Area of Effect: A sphere of 15-ft radius
Saving Throw: None

This spell creates a spherical miasma of gloom and menace centered on the caster. When this spell is cast, all evil aligned beings attack at a +1 bonus to their attack and damage rolls, all good-aligned creatures strike at a -1 penalty to their attack and damage rolls, and the caster is personally empowered to strike at a +3 bonus to <PRO_HISHER> attack and damage rolls. Neutral-aligned beings (with respect to good and evil) are unaffected by this spell. Once cast, the spell moves with the caster and does not need to be concentrated on to be maintained.

---

Instill Madness
(Enchantment/Charm)

Sphere: Suffering, Thought
Range: Touch
Duration: Permanent
Casting Time: 5
Area of Effect: One creature
Saving Throw: Neg.

Instill Madness causes the subject to become completely insane unless a Saving Throw vs. Spell is made with a -2 penalty. Upon a failed Saving Throw, the subject remains in this state until a successful Dispel Magic is cast upon it.

====================================================================================================================================================================

3) SHAR

Darkness
(Alteration)

Sphere: Darkness
Range: 20 ft.
Duration: 1 turn
Casting Time: 2
Area of Effect: 15-ft. radius
Saving Throw: None

This spell causes total, impenetrable darkness in the area of effect. Infravision is useless. Neither normal nor magical light works. Every creature, foe or friend, will be blinded during the effect of this spell, unless it leaves the affected area.

---

Nightmare
(Invocation, Illusion/Phantasm)

Sphere: Darkness, Suffering, Thought
Range: 40 ft.
Duration: 1 turn
Casting Time: 2
Area of Effect: One creature
Saving Throw: Neg.

This spell enables the Nightcloak to put <PRO_HISHER> victim in a deep slumber and send a hideous and unsettling vision to the recipient, causing 1d10 points of magic damage. A Saving Throw vs. Spells is allowed to avoid all the effects.

---

Eyebite
(Enchantment/Charm, Illusion/Phantasm)

Sphere: Darkness, Suffering, Thought
Range: 60 ft.
Duration: 1 round/3 levels
Casting Time: 6
Area of Effect: One creature
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
Range: 40
Duration: 1 turn/level
Casting Time: 4 
Area of Effect: Special 
Saving Throw: None

By means of this spell, the caster is able to change a specially prepared staff into a treant-like creature of the largest size, about 24 feet tall. When the priest plants the end of the staff in the ground and speaks a special command and invocation, the staff turns into a treant-like creature. The staff-treant defends the caster and obeys any spoken commands. However, it is by no means a true treant; it cannot converse with actual treants or control trees. The transformation lasts either for as many turns as the caster has experience levels or until the staff is destroyed, whichever occurs first. If the staff-treant is reduced to 0 hit points or less, it crumbles to a sawdust-like powder and the staff is destroyed.

====================================================================================================================================================================

5) HELM

Mace of Odo
(Evocation)

Sphere: Creation 
Range: 0
Duration: 4 rounds 
Casting Time: 10
Area of Effect: One magical mace
Saving Throw: None

This spell enables a Watcher to create a magical mace in <PRO_HISHER> hand. The Mace of Odo is wielded immediately when casting is complete and protects the Watcher against all level 1 and level 2 spells.

A Mace of Odo strikes as a +5 weapon and does 3d6+5 points of damage. Creatures of 2 HD or less must make a successful Saving Throw vs. Paralyzation when struck by the mace or be paralyzed for 3 turns.

The mace vanishes after one strike or after 4 rounds.

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

Sphere: Creation 
Range: 30 ft.
Duration: 2 rounds/level
Casting Time: 7
Area of Effect: Special
Saving Throw: None

This spell brings into being a shimmering blade of force that appears as a sword of any description the caster desires, typically a broad sword. The sword forms in midair and is animated by the will of the caster (who need never touch it), flashing about as it attacks. The blade can strike four times per round, doing 2d4 points of damage with each successful hit, but cannot act beyond the caster's line of sight.

Although it has no attack or damage bonuses, a Seeking Sword is considered a +4 magical weapon for determining what sorts of beings it can strike and can only be harmed by fire, electricity, magic, acid or crushing damage. Other spell casting is impossible for the duration of the spell.

====================================================================================================================================================================

6) LATHANDER

Boon of Lathander
(Conjuration/Summoning)

Sphere: Combat
Range: Touch
Duration: 6 rounds
Casting Time: 7
Area of Effect: One creature
Saving Throw: None

During this spell's effect, the spell recipient receives bonuses of + 1 on attack rolls and +1 on all saving throws and is allowed one extra attack per round. The spell recipient glows with a rose-red radiance during this time of augmented ability. This radiance is similar to faerie fire in appearance, but it does not carry with it the benefits that opponents would gain when attacking a creature outlined in faerie fire.

---

Faerie Fire
(Alteration)

Sphere: Sun
Range: 80 ft.
Duration: 4 rounds/level
Casting Time: 4
Area of Effect: 15-ft. radius
Saving Throw: None

This spell enables the caster to outline one or more objects or creatures with a pale glowing light. Outlined creatures are easier to strike; thus, opponents gain a +2 bonus to attack rolls. Note that outlining can render otherwise invisible creatures visible.

---

Sunrise
(Evocation, Alteration)

Sphere: Sun
Range: 0
Duration: Instantaneous
Casting Time: 6
Area of Effect: The caster
Saving Throw: Special

With this spell, the caster evokes a dazzling sphere of light equal to natural sunlight around himself. Any undead touched by the Dawnbringer will suffer 4d6 points of damage, be blinded and, for vampires and shadows only, destroyed. A Saving Throw vs. Spells is allowed to halve the damage and deny the other effects.

====================================================================================================================================================================

7) OGHMA

Legend Lore
(Divination)

Sphere: Divination
Range: Touch
Duration: Special
Casting Time: 3
Area of Effect: One creature
Saving Throw: None

With this spell, the Lorekeeper can extend  knowledge immensely. The caster gains 100 points of Lore for five rounds, is capable of using any item for two rounds and learns how to unequip cursed items, cure diseases and neutralize poisons.

====================================================================================================================================================================

8) ILMATER

Martyrdom of Ilmater
(Abjuration, Alteration)

Sphere: Protection 
Range: 0
Duration: 5 rounds
Casting Time: 3
Area of Effect: The caster 
Saving Throw: None 

By means of this spell the Painbearer call a beneficial servant of Ilmater to possess <PRO_HIMHER>. During this possession the priest can resist any sort of physical attacks, but can't move, cast spells or fight back.

---

Endurance of Ilmater
(Abjuration, Alteration, Necromancy)

Sphere: Protection
Range: Touch
Duration: 1 round + 1 round/level
Casting Time: 7
Area of Effect: One creature 
Saving Throw: None 


This spell doubles the hit points of the spell recipient for the spell duration. Any damage suffered is taken first from these phantom hit points until they are all exhausted; damage is only then taken from the real hit points of the affected being. The spell also protects the vitality of the spell recipient so that all checks of any sort against contracting diseases automatically succeed, and all other Saving Throws receive a +2 bonus.

====================================================================================================================================================================

9) MASK

Shadowcloak
(Alteration)

Sphere: Darkness, Trickery
Range: 0
Duration: 1 round/level
Casting Time: 6
Area of Effect: The caster
Saving Throw: None

This spell creates a semisolid fog of amorphous shape that engulfs the caster and moves with <PRO_HIMHER> for the duration of the spell.

A shadowcloak both confuses attackers with its swirling, smoky chaos, and slows strikes, so that all attacks against the shadowcloak-user occur at a -3 attack penalty and a damage penalty of-1 point per die. The shadowcloak also muffles all sounds made by the cloaked being (regardless of that being's desires), so that even shouted speech seems faint and distant, and all sounds short of breakage or metallic ringing or clinking are very likely to be completely blanked out.

The shadowcloak grants to the Silentwalker a 100% bonus to Move Silently and a 50% bonus do Hide in Shadows.

====================================================================================================================================================================

10) AURIL

Frost Dagger
(Evocation)

Level: 1
Sphere: Creation, Water
Range: 30
Duration: Instantaneous
Casting Time: 3
Area of Effect: One creature
Saving Throw: Special

This spell creates a dagger that flies to a target determined by the caster. This weapon hits for 1d4+5 points of cold damage and the target must make a Saving Throw vs. Death or be frozen for 1 round.

---

Frost Whip
(Evocation)

Level: 2
Sphere: Creation, Water
Range: 5
Duration: Instantaneous
Casting Time: 5
Area of Effect: One creature
Saving Throw: Special

This spell creates a whip made of pure ice that is used immediately against a target designed by the caster for 4d4 points of cold damage. The whip makes the area around the target slippery - a Saving Throw vs. Wands must be made, otherwise the target will slip three feet away from the caster.

---

Frost Sword
(Alteration, Evocation)

Level: 4
Sphere: Creation, Water
Range: 0
Duration: 1 round/level
Casting Time: 4
Area of Effect: One magical sword
Saving Throw: None

This spell creates a swirling sword-shaped formation of jagged, fast-swirling ice shards extending from the caster's hand. Weightless and nonmetallic, it is considered a +2 enchanted weapon for purposes of determining what it can hit and strikes at THACO 6, regardless of the caster's normal combat abilities. Its touch lacerates for 3d4 points of damage and chills for an additional 1d6 points of cold damage.

---

Conjure Ice Elemental
(Conjuration/Summoning)

Level: 6
Sphere: Water
Range: Visual range of the caster
Duration: 1 turn/level
Casting Time: 9
Area of Effect: Special
Saving Throw: None

Upon casting a Conjure Ice Elemental spell, the Icevassal opens a special gate to the Paraelemental Plane of Ice, and an ice elemental is summoned in the vicinity of the caster. There is a 60% chance that a 12-Hit-Dice elemental appears; a 35% chance that a 16-Hit-Dice elemental appears; and a 5% chance that a 24-Hit-Dice elemental appears. The elemental will do the bidding of the caster until it is slain or the duration of the spell runs out. All the commands given to the elemental are done telepathically, so there is no time lost due to miscommunication and no need to know the language of the summoned creature. Unlike Mages, priests do not have to engage in a battle of the minds to control their elemental.

====================================================================================================================================================================

11) UMBERLEE

Dehydrate
(Alteration)

Level: 4
Sphere: Suffering, Water
Range: 40
Duration: Instantaneous
Casting Time: 4
Area of Effect: One creature
Saving Throw: Neg.

This spell evaporates moisture from the bodies of the target creature, inflicting 1d8 points of magic damage per level of the caster on a failed Saving Throw vs. Death.

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
Sphere: Moon
Range: 60
Duration: 1 round/level
Casting Time: 2
Area of Effect: One creature
Saving Throw: Neg.

This spell can only be used outdoors. The Silverstar calls a beam of light from the sky and directs it to a target blinding it and turning it incapable of becoming invisible for the duration of the spell. A successful Saving Throw vs. Breath avoids all the effects.

---

Shooting Star
(Invocation)

Level: 7
Sphere: Moon
Range: 100
Duration: Instantaneous
Casting Time: 7
Area of Effect: 15-ft. radius
Saving Throw: None

A priest casting shooting stars creates a violent turbulence in the air above the area of effect, from which a number of magically-charged miniature starts to erupt and shower onto the ground. Within the area of effect, all creatures suffer 6d10 points of magical damage and 48 points of crushing damage. A successful Saving Throw vs. Spells at a -4 penalty indicates half damage.

====================================================================================================================================================================

13) TALONA

Poison Touch
(Necromancy)

Level: 2
Sphere: Suffering
Range: Touch
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
Sphere: Suffering
Range: Touch
Duration: 1 round/level
Casting Time: 1
Area of Effect: One creature
Saving Throw: Neg.

This spell is the reason why a Pain of Loviatar has this title. The touched creature must make a Saving Throw vs. Spell or be afflicted by a pain that gives -4 penalty to its attack rolls and and a -2 to its AC.

---

Whip of Flame
(Invocation/Evocation)

Level: 2
Sphere: Fire, Suffering
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
Sphere: Suffering
Range: 10
Duration: 1 round/level
Casting Time: 6
Area of Effect: One creature
Saving Throw: Special

A whip is created by the Pain and immediately used against a creature and imposes a Saving Throw vs. Spells. If succeeds, the target only gets 2d4 points of slashing damage. If it fails, the target suffers a huge pain that gives a -2 penalty to its attack rolls, a -1 penalty to its AC and makes impossible to concentrate enough to cast spells.

---

Touch of Torment
(Necromancy)

Level: 4
Sphere: Suffering
Range: Touch
Duration: 3 rounds
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
Sphere: Summoning
Range: 35
Duration: 20 turns
Casting Time: 9
Area of Effect: Special
Saving Throw: None

This spell summons an Erinyes to serve the Pain. While summoned, there's a chance that the devil will escape from the summoner's control and turn against <PRO_HIMHER>. This chance starts at 5% and increases by another 5% every turn until it reaches 100% after 20 turns, when the spell expires. If the summoner is under the effect of Protection from Evil before losing control over the Devil, the Erinyes will return to Baator instead of attacking. Only one Erinyes can be summoned at time. Unless the devil goes hostile, the summoner may dismiss the Erinyes whenever <PRO_HESHE> wants.

To dismiss the Erinyes, go to the creature's special abilities and press "Dismiss".

====================================================================================================================================================================

15) BANE

Mystic Lash
(Invocation/Evocation)

Level: 5
Sphere: Creation, Combat
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
Sphere: Creation, Necromantic
Range: 0
Duration: 1 round/level
Casting Time: 1
Area of Effect: One magical dagger
Saving Throw: None

This spell creates a dagger on the Deathstalker's hand that can't be dropped or unequipped for the duration of the spell. The dagger strikes as a +2 weapon, but does not offers a bonus for hit or damage and can be used despite the cleric's proficiency. Every time the dagger strikes, there's a chance of 1% for every two 2 levels of the caster of automatically slaying the target creature.

---

Plane Skipping
(Alteration)

Level: 6
Sphere: Travelers
Range: 0
Duration: 5 rounds
Casting Time: 1
Area of Effect: The caster
Saving Throw: None

The Deathstalker enters the Plane of Gehenna while those around <PRO_HIMHER> appear to be frozen in time. While in the other plane, the <PRO_HESHE> can move freely during 30 seconds, but can't attack, cast spells, use items or turn undead while this spell lasts. The Deathstalker must be cautious, as there's a 5% chance of a Pit Fiend follow <PRO_HIMHER> during the Plane Skipping.

====================================================================================================================================================================

17) MYRKUL

Summon Minor Death
(Necromancy)

Level: 6
Sphere: Necromantic
Range: 35
Duration: 1 turn/level
Casting Time: 9
Area of Effect: Special
Saving Throw: None

This spell summons a Minor Death to serve the Gray One. It has 64 HP, 1 Thac0, AC -4, can only be damaged with weapons +1 or better, strikes twice per round delivering 2d8 points of slashing damage per hit and cannot be turned. The Minor Death is also immune to cold, fire, poison, electricity damage and all Enchantment/Charm spells.

---

Hand of Myrkul
(Necromancy)

Level: 7
Sphere: Necromantic
Range: Touch
Duration: Permanent
Casting Time: 1
Area of Effect: One creature
Saving Throw: Neg.

The Gray One touches <PRO_HISHER> victim forcing the creature to make a Saving Throw vs. Death or be transformed into dust. This transformation is instantaneous and irreversible. There is also a good chance that this will destroy some if not all of the items that the creature is carrying.


====================================================================================================================================================================

18) KELEMVOR

Chilling Scythe
(Evocation, Necromancy)

Level: 3
Sphere: Creation, Combat
Range: 0
Duration: 1 round/level
Casting Time: 5
Area of Effect: One magical scythe
Saving Throw: None

This spell creates an over-sized but weightless scythe that can be wielded by the Doomguide as a weapon. The scythe is a two-handed, 7-foot-long device that is a +2 enchanted weapon dealing 2d4+2 points of slashing damage plus chilling for a further 1d4 points of magic damage - this chilling damage is caused by draining of life force, not cold. A Chilling Scythe has a speed factor of 5 and the Doomguide wields it as if <PRO_HESHE> is proficient.

If a Chilling Scythe even touches an undead creature it delivers 4d6 points of magic damage to the undead and hurls it helplessly 20 feet away from the Doomguide.

---

Summon Minor Death
(Necromancy)

Level: 6
Sphere: Necromantic
Range: 35
Duration: 1 turn/level
Casting Time: 9
Area of Effect: Special
Saving Throw: None

This spell summons a Minor Death to serve the Doomguide. It has 64 HP, 1 Thac0, AC -4, can only be damaged with weapons +1 or better, strikes twice per round delivering 2d8 points of slashing damage per hit and cannot be turned. The Minor Death is also immune to cold, fire, poison, electricity damage and all Enchantment/Charm spells.


====================================================================================================================================================================

19) RED KNIGHT

Divination
(Divination)

Level: 3
Sphere: Divination
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
Sphere: Divination
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
Sphere: Combat
Range: 30
Duration: 1 round/level
Casting Time: 3
Area of Effect: One creature
Saving Throw: None

When chaotic combat is cast on a creature, it is inspired beyond his years of training and is suddenly struck with numerous insights for variations on the standard moves of attack and defense.

Unfortunately, these insights are helpful in only four-fifths (80%) of the warrior's attacks. In the remaining attacks, the spell actually impairs the warrior's standard performance. This spell takes effect at the beginning of each round. On a positive roll the target gains bonuses of +2 to Thac0 and Armor Class. On a negative roll, the target suffers a -2 penalty to Thac0 and Armor Class.

---

Blood Armor
(Alteration)

Level: 4
Sphere: Combat, Protection
Range: 0
Duration: 5 rounds/level
Casting Time: 7
Area of Effect: The caster
Saving Throw: None

This spell enshrouds the priest in an armor of dense blood. Any weapon used to attack the Bloodreaver seems to impact on a iron wall as the blood momentarily coagulates to form a bulwark against the imminent attack.

While protected by a Blood Armor, the cleric has a +3 bonus to <PRO_HISHER> Armor Class and a 25% resistance to cold and fire as well as a 25% vulnerability to electricity.


====================================================================================================================================================================

21) VELSHAROON


Gaseous Form
(Necromancy)

Level: 6
Sphere: Necromantic
Range: 0
Duration: 1 turn/level
Casting Time: 5
Area of Effect: The caster
Saving Throw: None

This spell enables the Necrophant to assume the gaseous form of a vampire. No form of attack or spellcasting is possible while in gaseous form, but the cleric can flow/fly near the ground at a base movement rate equal to <PRO_HISHER> own.

In gaseous form, the priest is all but immune to attack. Only magical fire or lightning has any effect, inflicting normal damage.

The Necrophant immediately returns to his original form upon the expiration of the spell duration or by voluntarily ending the spell.

====================================================================================================================================================================

22) TYMORA


Moment
(Divination)

Level: 2
Sphere: Divination
Range: Touch
Duration: 1 round/level
Casting Time: 10
Area of Effect: One creature
Saving Throw: None

By twisting Fate accordingly to <PRO_HISHER> will, the Luckbringer makes every moment of a combat favorable to the target of this spell, granting a +2 bonus to Thac0, Speed Factor and to its critical hit range.

---

Favor of Tymora
(Abjuration)

Level: 2
Sphere: Protection
Range: Touch
Duration: 5 rounds
Casting Time: 5
Area of Effect: One creature
Saving Throw: None

This spell confers a protection for a single recipient creature that cannot be ended by dispel magic or other magical effects. For the duration of this spell the target creature receives a +4 bonus to its Saving Throws. This spell will cancel the effects of Bane of Beshaba.

---

Luckbolt
(Invocation/Evocation)

Level: 6
Sphere: Protection
Range: 100
Duration: 4 rounds
Casting Time: 9
Area of Effect: One creature
Saving Throw: None

This spell can be used by the caster directly or fired at a chosen creature as a bolt that cannot miss. If the recipient being is not the caster, the recipient must be viewed by the caster, either directly or through some means of scrying, as the Luckbolt is cast. The spell affects the target as follows:

Round 1: Maximum damage, +10 bonus to damage, automatically hits and succeeds on Saving Throws.

Round 2: +8 bonus to damage, +6 bonus to Thac0 and +4 bonus to Saving Throws.

Round 3: +6 bonus to damage, +3 bonus to Thac0 and +2 bonus to Saving Throws.

Round 4: +4 bonus to damage, +2 bonus to Thac0 and +1 bonus to Saving Throws.

---

Tymora's Blessing
(Abjuration)

Level: 7
Sphere: Protection
Range: 0
Duration: 5 rounds
Casting Time: 0
Area of Effect: The caster
Saving Throw: None

In the blink of an eye, the Luckbringer can be blessed by Tymora when asking for the Lady's help. The priest receives a +5 bonus to Armor Class, Saving Throws and to <PRO_HISHER> critical hit range.


====================================================================================================================================================================

23) BESHABA


Bad Luck
(Enchantment/Charm)

Level: 2
Sphere: Suffering
Range: 15 ft.
Duration: 3 rounds
Casting Time: 2
Area of Effect: One creature
Saving Throw: None

The recipient of this spell gains extraordinary bad luck for the next 3 rounds, receiving a -1 penalty to <PRO_HISHER> Saving Throws, attack rolls, and minimum damage/healing rolls as well as -5% to all thieving skills. Furthermore, damage dice for all effects outside a weapon's base damage is increased by 1. For example, a 6d6 fireball will do 6d7 damage, and a flaming long sword that deals 1d8+2 slashing plus 1d3 fire damage will deal 1d8+2 slashing plus 1d4 fire damage instead.
---

Bane of Beshaba
(Abjuration)

Level: 2
Sphere: Suffering
Range: Touch
Duration: 5 rounds
Casting Time: 5
Area of Effect: One creature
Saving Throw: None

This spell bestows a curse upon a single recipient creature that cannot be ended by dispel magic or other magical effects. For the duration of this spell the target creature receives a -4 penalty to its Saving Throws. This spell will cancel the effects of Favor of Tymora.

---

Misfortune
(Enchantment/Charm)

Level: 5
Sphere: Suffering
Range: Touch
Duration: 1 round/level
Casting Time: 5
Area of Effect: One creature
Saving Throw: None

This spell causes the recipient to receive a -3 penalty on all Saving Throws, initiative checks, Thac0, and damage rolls as well as a -15% penalty to all thieving skill checks for the spell duration. A Black Finger of Beshaba must physically touch the recipient to cast this spell.

---

Beshaba's Mercy
(Abjuration)

Level: 7
Sphere: Protection
Range: 0
Duration: 5 rounds
Casting Time: 0
Area of Effect: The caster
Saving Throw: None

In the blink of an eye, the Black Finger can be blessed by Beshaba when asking for the Maid's help. The priest receives a +5 bonus to Armor Class, Saving Throws and to <PRO_HISHER> critical hit range.

====================================================================================================================================================================

24) HOAR


Hand of Hoar
(Necromancy)

Level: 4
Sphere: Suffering
Range: Touch
Duration: Special
Casting Time: 7
Area of Effect: One creature
Saving Throw: Neg.

This spell inflicts punishment upon an evil and intelligent living target that cannot be terminated by Dispel Magic.

Upon casting this spell, the Doombringer must touch the spell's recipient. If the creature fails to Saving Throw vs. Death Magic and then dies during the effect of this spell, it will be raised as a Revenant cursed to serve the Doombringer until its destruction. 

---

Thunder Staff
(Invocation/Evocation)

Level: 4
Sphere: Air, Combat
Range: 0
Duration: Instantaneous
Casting Time: 4
Area of Effect: 18-ft. cone with 90-deg. arc
Saving Throw: 1/2

Upon completion of this spell, the Doombringer raps his weapon (usually a staff) on the ground and produces a thundering cone of force. All creatures wholly or partially within this cone must roll a successful Saving Throw vs. Spell or be stunned for 3 rounds and deafened for 4 rounds. Additionally, those who fail the save are hurled 20 feet by the wave of force, suffering 1 point of damage per two feet thrown.

If the save is successful, the victim avoids the stun effect, and is hurled only half the distance, receiving half the damage.


====================================================================================================================================================================

25) ULUTIU

Call Upon Polar Fury
(Altering)

Level: 3
Sphere: Animal, Combat
Range: 0
Duration: 1 turn
Casting Time: 3
Area of Effect: The caster
Saving Throw: None

By using this spell the Iceguardian communes with the spirit of the Great White Bear. The caster's Strength is raised to 18/00 and <PRO_HESHE> may deliver two attacks for 1d10/1d10 slashing damage. A critical hit will result in additional crushing damage of 3d6. All attacks are considered as delivered by a +2 weapon.


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

- Beshaba: Talos

- Clangeddin: Helm, Fighter
                                                                
- Cyric: Talos, Thief

- Eldath: Lathander, Druid

- Garagos: Talos                                   
                 
- Helm: Helm

- Hoar: Helm

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

- Savras: Wizard

- Selûne: Lathander

- Shar: Talos

- Shaundakul: Ranger

- Shiallia: Druid

- Sune: Lathander, Bard

- Talona: Talos                                   

- Talos: Talos

- Tempus: Fighter

- Torm: Helm, Paladin

- Tymora: Lathander

- Tyr: Helm, Paladin

- Umberlee: Talos

- Valkur: Lathander

- Velsharoon: Talos, Wizard

Without this component the strongholds will be chosen by alignment, as the unmodded game does.



====================================================================================================================================================================



e) Kits' Colors

This component will make all non-magical armors, helmets and shields use the kit's assigned colors instead of those imposed by the item.



====================================================================================================================================================================



f1) Sphere System

[All]

1 - Bless
    Curse
    Sanctuary

2 - Chant

3 - Dispel Magic
    Prayer
    Remove Curse

4 - Recitation

5 - Righteous Magic

6 - Bolt of Glory
    Spiritual Wrath

7 - Holy/Unholy Word

[Healing]

1 - Cure Light Wounds

2 - Aid
    Cure Moderate Wounds
    Slow Poison

3 - Cure Disease
    Cure Medium Wounds
    Remove Paralysis

4 - Cure Serious Wounds
    Lesser Restoration
    Neutralize Poison

5 - Cure Critical Wounds
    Mass Cure Light Wounds
    Raise Dead

6 - Heal

7 - Greater Restoration
    Resurrection

[Necromantic]

1 - Chill Touch
    Drain Life

2 - Ghoul Touch

3 - Animate Dead
    Circle of Bones
    Vampiric Touch

4 - Skull Trap
    Spirit Armor

5 - Darts of Bone
    Slay Living
    Summon Shadow

6 - Lich Touch
    Soul Eater

7 - Energy Drain
    Finger of Death
    Symbol: Death

[Suffering]

1 - Cause Light Wounds

2 - Cause Moderate Wounds
    Doom

3 - Cause Medium Wounds
    Cause Disease
    Mold Touch

4 - Cause Serious Wounds
    Cloud of Pestilance
    Contagion
    Poison

5 - Mass Cause Light Wounds
    Cause Critical Wounds
    Cloudkill

6 - Harm

7 - Dolorous Decay
    Suffocate
    Symbol: Pain

[Animal]

1 - Infravision

2 - Alicorn Lance
    Beast Claw
    Charm Person or Mammal

3 - Hold Person or Mammal

4 - Animal Summoning I	
    Call Woodland Beings
    Poison

5 - Animal Rage
    Animal Summoning II

6 - Animal Summoning III
    Conjure Animals
    Wyvern Call

7 - Nature's Beauty
    Pixie Dust

[Vermin]

1 - Grease

2 - Web

3 - Summon Insects

4 - Giant Insect
    Poison
    Spider Spawn

5 - Insect Plague

6 - Carrion Summons

7 - Creeping Doom

[Plant]

1 - Entangle
    Shillelagh

2 - Barkskin
    Goodberry
    Slow Poison

3 - Mold Touch
    Spire Growth

4 - Call Woodland Beings
    Neutralize Poison
    Poison
    Thorn Spray

5 - Regeneration

6 - Fire Seeds

7 - Nature's Beauty
    Stalker
    Wither

[Protection]

1 - Armor of Faith
    Protection From Evil
    Remove Fear

2 - Resist Fire & Cold

3 - Glyph of Warding
    Remove Paralysis
    Self-Sacrifice 

4 - Death Ward
    Defensive Harmony
    Protection From Evil 10' Radius

5 - Magic Resistance
    Shield of Divine
    Undead Ward

6 - Blade Barrier
    Entropy Shield
    Physical Mirror

7 - Greater Shield of Divine
    Shield of the Archons
    
[Sun]

1 - Sunscorch

2 - Flametongue

3 - Hold Undead
    Holy Smite

4 - Death Ward
    Emotion: Hope
    Negative Plane Protection

5 - Flame Strike
    Repulse Undead
    Sunfire
    Undead Ward

6 - False Dawn
    Sol's Searing Orb

7 - Sunray

[Moon]

1 - Remove Fear
    Sleep

2 - Power Word: Sleep
    Silence 15' Radius

3 - Ghost Armor
    Moonblade
    Wraithform

4 - Negative Plane Protection
    Spirit Armor
    Wall of Moonlight

5 - Phantom Blade

6 - Invisible Stalker
    Spiritual Lock

7 - Power Word: Silence
    Project Image

[Darkness]

1 - Blindness
    Spook

2 - Doom
    Horror

3 - Non-Detection
    Unholy Blight

4 - Cloak of Fear
    Emotion: Fear	
    Emotion: Hopelessness
    Shadow Monster

5 - Demi-Shadow Monster
    Summon Shadow

6 - Death Spell
    Shades

7 - Symbol: Fear
    Symbol: Hopelessness

[Thought]

1 - Command
    Remove Fear

2 - Charm Person or Mammal
    Hold Person

3 - Exaltation
    Ridig Thinking

4 - Blood Rage
    Cloak of Fear
    Mental Domination

5 - Chaotic Commands
    Greater Command

6 - Hold Monster

7 - Confusion
    Impervious Sanctity of Mind
    Nature's Beauty

[Combat]

1 - Armor of Faith
    Magical Stone
    Remove Fear

2 - Aid
    Draw Upon Holy Might
    Spiritual Hammer

3 - Holy Smite
    Strength of One
    Unholy Blight

4 - Blood Rage
    Defensive Harmony
    Emotion: Courage
    Holy Power

5 - Champion's Strength
    Righteous Wrath of the Faithful

6 - Antimagic Shell
    Blade Barrier

7 - Destruction
    Great Shout
    Symbol: Stun

[Creation]

1 - Shillelagh

2 - Flame Blade
    Spiritual Hammer

3 - Circle of Bones
    Moonblade

4 - Enchanted Weapon
    Star Metal Cudgel

5 - Phantom Blade

6 - Blade Barrier

7 - Magical Sword

[Summoning]

1 - Protection From Evil

2 - Monster Summoning I

3 - Animate Dead
    Monster Summoning II

4 - Monster Summoning III
    Protection From Evil 10' Radius

5 - Cacofiend
    Summon Shadow

6 - Summon Fiend

7 - Gate

[Air]

1 - Shocking Grasp

2 - Stinking Cloud
    Writhing Fog

3 - Call Lightning
    Lightning Bolt
    Storm Shell
    Zone of Sweet Air

4 - Cloud of Pestilance
    Protection From Lightning
    Static Charge

5 - Chain Lightning
    Cloudkill

6 - Aerial Servant
    Conjure Air Elemental
    Whirlwind

7 - Death Fog
    Suffocate

[Water]

1 - Chill Touch

2 - Snowball Swarm
    Writhing Fog

3 - Cloudburst
    Icelance
    Protection From Cold
    Storm Shell

4 - Ice Storm
    Smashing Wave

5 - Cone of Cold
    Protection From Acid

6 - Conjure Water Elemental
    Freezing Sphere

7 - Acid Storm
    Miracle Mists

[Earth]

1 - Magical Stone

2 - Dust Explosion

3 - Spike Growth

4 - Star Metal Cudgel
    Stoneskin
    Thorn Spray

5 - Iron Skin
    Spike Stones

6 - Conjure Earth Elemental
    Flesh to Stone
    Stone to Flesh

7 - Earthquake
    Iron Body

[Fire]

1 - Burning Hands

2 - Flameblade
    Flametongue

3 - Fireball
    Flame Arrow
    Protection From Fire

4 - Fireshield (Red)
    Produce Fire

5 - Flame Strike
    Shroud of Flames
    Sunfire

6 - Conjure Fire Elemental
    Fire Seeds

7 - Fire Storm
    Incendiary Cloud

[Divination]

1 - Detect Evil
    Identify

2 - Find Traps
    Know Alignment

3 - Clairvoyance
    Detect Illusions
    Invisibility Purge

4 - Farsight

5 - True Seeing

6 - Contingency
    Wondrous Recall

7 - Chain Contingency
    Seven Eyes

[Travelers]

1 - Expeditious Retreat

2 - Knock
    Luck

3 - Clairvoyance
    Haste
    Remove Paralysis

4 - Dimension Door
    Free Action
    Unfailing Endurance

5 - Teleport Field

6 - Improved Haste

7 - Ether Gate
    Maze

[Weave]

1 - Magic Missile
    Shield

2 - Silence 15' Radius
    Vocalize

3 - Lance of Disruption
    Miscast Magic
    Spell Thrust

4 - Force Missiles
    Minor Globe of Invulnerability
    Secret Word

5 - Breach
    Lower Resistance
    Magic Resistance

6 - Globe of Invulnerability
    Pierce Magic
    Spell Immunity

7 - Pierce Shield
    Protection From Magical Weapons
    
[Trickery]

1 - Blindness
    Color Spray
    Reflect Image

2 - Blur
    Knock
    Invisibility

3 - Invisibility 10' Radius
    Mirror Image

4 - Improved Invisibility

5 - Shadow Door

6 - Mislead

7 - Mass Invisibility
    Prismatic Spray

[Time]

1 - Expeditious Retreat

2 - Slow Poison

3 - Haste
    Slow

4 - Minor Sequencer

5 - Desintegrate

6 - Improved Haste
    Spell Sequencer
    Wondrous Recall

7 - Spell Trigger
    Time Stop

[Vocal]

1 - Command

2 - Deafness
    Power Word: Sleep
    Silence 15' Radius
    Vocalize

3 - Exaltation

4 - Call Woodland Beings
    Secret Word
    Shout

5 - Chaotic Commands
    Greater Command

6 - Power Word: Blind
    Wyvern Call

7 - Great Shout
    Power Word: Kill
    Power Word: Stun
    Wail of the Banshee

f2) Divine Casters:

Paladin (access only to level 4 spells): All, Combat, Divination, Healing, Protection.

  - Cavalier: All, Combat, Healing, Protection, Vocal.

  - Undead Hunter: All, Combat, Healing, Protection, Sun.

  - Inquisidor: All, Combat, Protection, Creation, Vocal.

  - Blackguard: All, Combat, Darkness, Necromantic, Suffering.

Druid/Shaman Major: All, Animal, Plant, Vermin, Air, Water, Earth. | Minor: Healing, Fire, Sun.

  - Totemic Druid: Major: All, Animal, Plant, Moon, Air, Water, Earth. | Minor: Healing, Fire, Divination.

  - Avenger: Major: All, Animal, Suffering, Combat, Water, Earth, Fire. | Minor: Travelers, Plant, Healing.

  - Shapeshifter: Major: All, Animal, Travelers, Vermin, Moon, Earth, Fire. | Minor: Healing, Plant, Air.

Ranger (access only to level 3 spells): All, Animal, Plant.

  - Archer: All, Combat, Air.

  - Stalker: All, Moon, Trickery.

  - Beastmaster: All, Animal, Thought.

.............................................
| Be aware that the Shaman's spells are now |
| selected through a special ability. Check |
| the Special Abilities menu and locate the |
| the "Select Spell" icon. You will need to |
| pick one spell per use of this ability.   |
.............................................

f3) Non-DoF kits compatible with DoF's Sphere System:

- Circle Enforcer (by Raduziel - I Hate Undead Kitpack)

	Major: All,
	Minor:

- Dreadful Witch (by Raduziel - I Hate Undead Kitpack)

	Major: All,
	Minor:

- Spirit Redeemer (by Raduziel - I Hate Undead Kitpack)

	Major: All,
	Minor:

- Hivemaster (by AionZ - Artisan's Kitpack)
	
	Major: All, Vermin, Plant, Protection, Healing, Earth, Suffering
	Minor: Animal, Darkness, Thought

- Warhorn Shaman (by AionZ - Artisan's Kitpack)

	Major: All, Combat, Vocal, Protection, Thought, Creation, Divination
	Minor: Healing, Air, Water

- Bearwalker (by Ulb): All, Combat, Animal

- Dreamwalker (by Ulb)

	Major: All, Air, Darkness, Suffering, Healing, Divination, Vocal 
	Minor: Trickery, Travelers, Time

- Spirit Hunter (by Ulb)

	Major: All
	Minor: Combat, Summoning, Air

- Spiritwalker (by Ulb)

	Major: All, Animal, Weave, Moon, Summoning, Combat, Vocal
	Minor: Travelers, Time, Healing

- Stormcaller (by Ulb)

	Major: All, Air, Water, Sun, Divination, Vocal, Combat
	Minor: Trickery, Travelers, Time

====================================================================================================================================================================

g) Bestiary

g1) Elementals

12HD:  96 HP | AC 2 | Thac0 9 | Attacks per Round 1 | Paralyze/Poison/Death 7; Rod/Staff/Wand 9; Petrify/Polymorph 8; Breath Weapons 8; Spells 10

16HD: 128 HP | AC 2 | Thac0 5 | Attacks per Round 1 | Paralyze/Poison/Death 4; Rod/Staff/Wand 6; Petrify/Polymorph 5; Breath Weapons 4; Spells 7

24HD: 192 HP | AC 2 | Thac0 0 | Attacks per Round 1 | Paralyze/Poison/Death 3; Rod/Staff/Wand 5; Petrify/Polymorph 4; Breath Weapons 4; Spells 6

g1.1) Ice Paraelemental

Damage:  3d8 (crushing) + 1d4 (cold) - strikes as +4

Resistances (%): -100 Fire; 100 Cold. Can only be hurt by weapons +1 or better.

g1.2) Air Elemental

Damage: 2d10 (crushing) - strikes as +4

Resistances (%): 50 Cold; 50 Electricity; 50 Missile. Can only be hurt by weapons +2 or better.

g1.3) Water Elemental

Damage: 5d6 (crushing) - strikes as +4

Resistances (%): 50 Cold; -100 Electricity; 50 Acid. Can only be hurt by weapons +2 or better.

g1.4) Earth Elemental

Damage: 4d8 (crushing) - strikes as +4

Resistances (%): 100 Electricity. Can only be hurt by weapons +2 or better.

---

g2) Treant (Changestaff)

12HD | 40 HP | AC 0 | Thac0 9 | Attacks per Round 2 | Paralyze/Poison/Death 7; Rod/Staff/Wand 9; Petrify/Polymorph 8; Breath Weapons 8; Spells 10

Damage: 4d6 (crushing) - strikes as +3

Resistances (%): -20 Fire.  Immunities as any plant.

---

g3) Erinyes (Ensnarement)

6HD | 48 HP | AC 2 | Thac0 13 | Attacks per Round 1 | Paralyze/Poison/Death 10; Rod/Staff/Wand 12; Petrify/Polymorph 11; Breath Weapons 12; Spells 13

Damage: per weapon. Erineyes uses a Shortbow +1 with Arrows of Biting and a Shortsword +2.

Resistances (%): 100 Fire; 50 Cold; 30 Magic. Immunities as any devil. Can only be hurt by weapons +1 or better.

Special: Erinyes may cast Charm Person, Spook, Detect Invisibility, Invisibility, Dimension Door at will and Gate once per day. 

---

g4) Minor Death

8HD | 64 HP | AC -4 | Thac0 1 | Attacks per Round 2 | Paralyze/Poison/Death 10; Rod/Staff/Wand 12; Petrify/Polymorph 11; Breath Weapons 12; Spells 13

Damage: 2d8 (slashing) - strikes as +3

Resistances (%): 100 Fire; 100 Cold; 100 Electricity 100 Poison. Immunities as any undead. Cannot be turned. Can only be hurt by weapons +1 or better. Movement 18. Bonus to Initiative (+10). Immune to Enchantment/Charm.

---

g5) Revenant (Hand of Hoar)

8HD | 64 HP | AC 10 | Thac0 13 | Attacks per Round 1 | Paralyze/Poison/Death 10; Rod/Staff/Wand 12; Petrify/Polymorph 11; Breath Weapons 12; Spells 13

Damage: 2d8 (crushing) + STR (18/00) - strikes as +1 and may paralyze (Save vs. Death negates).

Resistances (%): 100 Acid. Immunities as any undead. Cannot be turned. Can only be hurt by weapons +1 or better. Movement 9.

---

g6) Seeking Sword

6HD | 48 HP | AC 5 | Thac0 15 | Attacks per Round 4 | Paralyze/Poison/Death 11; Rod/Staff/Wand 13; Petrify/Polymorph 12; Breath Weapons 13; Spells 14

Damage: 2d4 (slashing) - strikes as +4

Resistances (%): 100 Cold; 100 Slashing, 100 Piercing, 100 Missile. Immunities as any construct.

---

g7) Great White Bear

AC 0 | Thac0 9 | Attacks per Round 3 | STR 18/00

Damage: 2d8 (slashing)  - strikes as +2

Resistances (%): 100 Cold. Can only be hurt by weapons +1 or better.

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