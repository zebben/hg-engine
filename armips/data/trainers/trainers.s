.nds
.thumb

.include "armips/include/constants.s"
.include "armips/include/macros.s"

.include "asm/include/abilities.inc"
.include "asm/include/items.inc"
.include "asm/include/moves.inc"
.include "asm/include/species.inc"

trainerdata 0, "-"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PKMN_TRAINER_0
    nummons 0
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags 0
    battletype SINGLE_BATTLE
    endentry

    party 0
        // mon 0
        ivs 0
        abilityslot 0
        level 0
        pokemon SPECIES_NONE
        ballseal 0
    endparty

trainerdata 1, "Silver"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_RIVAL
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 1
        // mon 0
        ivs 200
        abilityslot 32
        level 18
        pokemon SPECIES_DUSKULL
        item ITEM_NONE
        move MOVE_SHADOW_SNEAK
        move MOVE_CONFUSE_RAY
        move MOVE_NIGHT_SHADE
        move MOVE_WILL_O_WISP
        ability ABILITY_LEVITATE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 18
        pokemon SPECIES_CORVISQUIRE
        item ITEM_NONE
        move MOVE_PLUCK
        move MOVE_TAUNT
        move MOVE_THIEF
        move MOVE_U_TURN
        ability ABILITY_UNNERVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    
        // mon 2
        ivs 200
        abilityslot 32
        level 20
        pokemon SPECIES_BAYLEEF
        item ITEM_SITRUS_BERRY
        move MOVE_REFLECT
        move MOVE_MEGA_DRAIN
        move MOVE_LIGHT_SCREEN
        move MOVE_POISON_POWDER
        ability ABILITY_OVERGROW
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 2, "Silver"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_RIVAL
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 2
        // mon 0
        ivs 0
        abilityslot 0
        level 5
        pokemon SPECIES_CYNDAQUIL
        ballseal 0
    endparty

trainerdata 3, "Silver"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_RIVAL
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 3
        // mon 0
        ivs 0
        abilityslot 0
        level 5
        pokemon SPECIES_TOTODILE
        ballseal 0
    endparty

trainerdata 4, "Wade"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BUG_CATCHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 4
        // mon 0
        ivs 0
        abilityslot 0
        level 7
        pokemon SPECIES_SPINARAK
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 7
        pokemon SPECIES_LEDYBA
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 6
        pokemon SPECIES_PARAS
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 6
        pokemon SPECIES_VENONAT
        ballseal 0
    endparty

trainerdata 5, "Victoria"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BEAUTY
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 5
        // mon 0
        ivs 50
        abilityslot 32
        level 19
        pokemon SPECIES_FURFROU
        move MOVE_HEADBUTT
        move MOVE_BABY_DOLL_EYES
        move MOVE_BITE
        move MOVE_CHARM
        ballseal 0

        // mon 1
        ivs 150
        abilityslot 32
        level 19
        pokemon SPECIES_CHANSEY
        move MOVE_HEADBUTT
        move MOVE_SOFT_BOILED
        move MOVE_HELPING_HAND
        move MOVE_COPYCAT
        ballseal 0

        // mon 2
        ivs 150
        abilityslot 32
        level 18
        pokemon SPECIES_SENTRET
        move MOVE_HEADBUTT
        move MOVE_FAKE_OUT
        move MOVE_DIG
        move MOVE_HELPING_HAND
        ballseal 0
    endparty

trainerdata 6, "Keith"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POLICEMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 6
        // mon 0
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_LUXIO
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 17
        pokemon SPECIES_SNUBBULL
        ballseal 0
    endparty

trainerdata 7, "Irwin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_JUGGLER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 7
        // mon 0
        ivs 0
        abilityslot 0
        level 21
        pokemon SPECIES_BRONZOR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_HATTREM
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_WOBBUFFET
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 21
        pokemon SPECIES_PINECO
        ballseal 0
    endparty

trainerdata 8, "Joey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 8
        // mon 0
        ivs 0
        abilityslot 0
        level 3
        pokemon SPECIES_RATTATA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 3
        pokemon SPECIES_SKWOVET
        ballseal 0
    endparty

trainerdata 9, "Elaine"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 9
        // mon 0
        ivs 0
        abilityslot 32
        level 33
        pokemon SPECIES_BARRASKEWDA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 33
        pokemon SPECIES_CRAMORANT
        ballseal 0
    endparty

trainerdata 10, "Amy & Mimi"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 10
        // mon 0
        ivs 200
        abilityslot 0
        level 16
        pokemon SPECIES_ANORITH
        item ITEM_NONE
        move MOVE_WATER_GUN
        move MOVE_SMACK_DOWN
        move MOVE_FURY_CUTTER
        move MOVE_METAL_CLAW
        ability ABILITY_BATTLE_ARMOR
        setivs 25, 25, 25, 25, 25, 25 // hp, atk, def, spd, spatk, spdef
        setevs 32, 32, 32, 32, 32, 32 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 16
        pokemon SPECIES_DEWPIDER
        item ITEM_NONE
        move MOVE_WATER_GUN
        move MOVE_BITE
        move MOVE_INFESTATION
        move MOVE_AQUA_RING
        ability ABILITY_WATER_BUBBLE
        setivs 25, 25, 25, 25, 25, 25 // hp, atk, def, spd, spatk, spdef
        setevs 32, 32, 32, 32, 32, 32 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 11, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_KIMONO_GIRL
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 11
        // mon 0
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_SKIPLOOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_VULPIX
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_SKIPLOOM
        ballseal 0
    endparty

trainerdata 12, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 12
        // mon 0
        ivs 30
        abilityslot 32
        level 13
        pokemon SPECIES_AIPOM
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 12
        pokemon SPECIES_SKRELP
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 0
        level 13
        pokemon SPECIES_TOXEL
        ballseal 0
    endparty

trainerdata 13, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 13
        // mon 0
        ivs 30
        abilityslot 0
        level 13
        pokemon SPECIES_INKAY
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 14
        pokemon SPECIES_DUNSPARCE
        ballseal 0
    endparty

trainerdata 14, "Duncan"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BURGLAR
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 14
        // mon 0
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_UMBREON
        move MOVE_HELPING_HAND
        move MOVE_MOONLIGHT
        move MOVE_DARK_PULSE
        move MOVE_BATON_PASS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_HONCHKROW
        move MOVE_BRAVE_BIRD
        move MOVE_SUCKER_PUNCH
        move MOVE_SUPERPOWER
        move MOVE_PURSUIT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_SKUNTANK
        move MOVE_SUCKER_PUNCH
        move MOVE_EARTHQUAKE
        move MOVE_TOXIC
        move MOVE_KNOCK_OFF
        ballseal 0
    endparty

trainerdata 15, "Otis"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FIREBREATHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 15
        // mon 0
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_SCOVILLAIN
        move MOVE_OVERHEAT
        move MOVE_SEED_BOMB
        move MOVE_STRENGTH_SAP
        move MOVE_CRUNCH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_REVAVROOM
        move MOVE_SHIFT_GEAR
        move MOVE_IRON_HEAD
        move MOVE_GUNK_SHOT
        move MOVE_ROCK_SLIDE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_CLODSIRE
        move MOVE_TOXIC
        move MOVE_RECOVER
        move MOVE_EARTHQUAKE
        move MOVE_HELPING_HAND
        ballseal 0
    endparty

trainerdata 16, "Simon"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 16
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_LANTURN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 33
        pokemon SPECIES_LUMINEON
        ballseal 0
    endparty

trainerdata 17, "Kenji"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BLACK_BELT
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 17
        // mon 0
        ivs 30
        abilityslot 0
        level 28
        pokemon SPECIES_MACHOKE
        ballseal 0
    endparty

trainerdata 18, "Justin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 18
        // mon 0
        ivs 0
        abilityslot 0
        level 9
        pokemon SPECIES_BASCULIN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_FINNEON
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 9
        pokemon SPECIES_FROAKIE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 9
        pokemon SPECIES_CLAUNCHER
        ballseal 0
    endparty

trainerdata 19, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 19
        // mon 0
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_KOFFING
        ballseal 0
    endparty

trainerdata 20, "Falkner"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LEADER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 20
        // mon 0
        ivs 200
        abilityslot 0
        level 11
        pokemon SPECIES_NATU
        item ITEM_LIGHT_CLAY
        move MOVE_ROOST
        move MOVE_REFLECT
        move MOVE_HYPNOSIS
        move MOVE_GUST
        ability ABILITY_SYNCHRONIZE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 13
        pokemon SPECIES_MURKROW
        item ITEM_ORAN_BERRY
        move MOVE_PECK
        move MOVE_ROOST
        move MOVE_PURSUIT
        move MOVE_HAZE
        ability ABILITY_INSOMNIA
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 21, "Bugsy"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LEADER_F
    nummons 3
    item ITEM_SUPER_POTION
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 21
        // mon 0
        ivs 200
        abilityslot 32
        level 17
        pokemon SPECIES_SCYTHER
        item ITEM_NONE
        move MOVE_U_TURN
        move MOVE_QUICK_ATTACK
        move MOVE_AERIAL_ACE
        move MOVE_BUG_BITE
        ability ABILITY_TECHNICIAN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 17
        pokemon SPECIES_CHARJABUG
        item ITEM_NONE
        move MOVE_U_TURN
        move MOVE_BUG_BITE
        move MOVE_SPARK
        move MOVE_BITE
        ability ABILITY_BATTERY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 18
        pokemon SPECIES_ARIADOS
        item ITEM_SITRUS_BERRY
        move MOVE_U_TURN
        move MOVE_BUG_BITE
        move MOVE_SHADOW_SNEAK
        move MOVE_SWORDS_DANCE
        ability ABILITY_SWARM
        setivs 15, 15, 15, 15, 15, 15 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 22, "Carrie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LASS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 22
        // mon 0
        ivs 150
        abilityslot 0
        level 20
        pokemon SPECIES_TEDDIURSA
        move MOVE_SCARY_FACE
        move MOVE_SCRATCH
        move MOVE_BITE
        move MOVE_LICK
        ballseal 0

        // mon 1
        ivs 150
        abilityslot 0
        level 19
        pokemon SPECIES_STANTLER
        move MOVE_STOMP
        move MOVE_HYPNOSIS
        move MOVE_ASTONISH
        move MOVE_CONFUSE_RAY
        ballseal 0
    endparty

trainerdata 23, "Larry"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKE_MANIAC
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 23
        // mon 0
        ivs 0
        abilityslot 32
        level 12
        pokemon SPECIES_CORSOLA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 13
        pokemon SPECIES_AMAURA
        ballseal 0
    endparty

trainerdata 24, "Alan"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 24
        // mon 0
        ivs 0
        abilityslot 0
        level 23
        pokemon SPECIES_SEADRA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_GROTLE
        ballseal 0
    endparty

trainerdata 25, "Russel"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 25
        // mon 0
        ivs 0
        abilityslot 32
        level 12
        pokemon SPECIES_ROLYCOLY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 12
        pokemon SPECIES_CRANIDOS
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 11
        pokemon SPECIES_NOSEPASS
        ballseal 0
    endparty

trainerdata 26, "Roland"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 26
        // mon 0
        ivs 0
        abilityslot 32
        level 11
        pokemon SPECIES_BUNNELBY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 10
        pokemon SPECIES_GIBLE
        ballseal 0
    endparty

trainerdata 27, "Liz"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 27
        // mon 0
        ivs 0
        abilityslot 32
        level 10
        pokemon SPECIES_PHANPY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 10
        pokemon SPECIES_HIPPOPOTAS
        ballseal 0
    endparty

trainerdata 28, "Jake"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 28
        // mon 0
        ivs 50
        abilityslot 32
        level 53
        pokemon SPECIES_KLEAVOR
        move MOVE_STONE_AXE
        move MOVE_ROCK_SLIDE
        move MOVE_X_SCISSOR
        move MOVE_SWORDS_DANCE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 53
        pokemon SPECIES_LOPUNNY
        move MOVE_HIGH_JUMP_KICK
        move MOVE_ICE_PUNCH
        move MOVE_THUNDER_PUNCH
        move MOVE_QUICK_ATTACK
        ballseal 0
    endparty

trainerdata 29, "Rod"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 29
        // mon 0
        ivs 200
        abilityslot 0
        level 10
        pokemon SPECIES_GLIGAR
        item ITEM_NONE
        move MOVE_WING_ATTACK
        move MOVE_DIG
        move MOVE_GROWL
        move MOVE_NONE
        ability ABILITY_HYPER_CUTTER
        setivs 25, 25, 25, 25, 25, 25 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 10
        pokemon SPECIES_MANTYKE
        item ITEM_NONE
        move MOVE_WATER_GUN
        move MOVE_WING_ATTACK
        move MOVE_AQUA_RING
        move MOVE_NONE
        ability ABILITY_KEEN_EYE
        setivs 25, 25, 25, 25, 25, 25 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 30, "Whitney"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LEADER
    nummons 3
    item ITEM_SUPER_POTION
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 30
        // mon 0
        ivs 255
        abilityslot 0
        level 19
        monwithform SPECIES_ZORUA, 1
        item ITEM_SITRUS_BERRY
        move MOVE_SHADOW_SNEAK
        move MOVE_TAUNT
        move MOVE_TACKLE
        move MOVE_ATTRACT
        ability ABILITY_ILLUSION
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 32
        level 21
        pokemon SPECIES_MILTANK
        item ITEM_LUM_BERRY
        move MOVE_ROLLOUT
        move MOVE_ATTRACT
        move MOVE_STOMP
        move MOVE_MILK_DRINK
        ability ABILITY_THICK_FAT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 32
        level 19
        pokemon SPECIES_LICKITUNG
        item ITEM_NONE
        move MOVE_REST
        move MOVE_SLEEP_TALK
        move MOVE_ROUND
        move MOVE_ATTRACT
        ability ABILITY_OBLIVIOUS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 31, "Morty"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LEADER_0
    nummons 4
    item ITEM_HYPER_POTION
    item ITEM_HYPER_POTION
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 31
        // mon 0
        ivs 255
        abilityslot 0
        level 26
        pokemon SPECIES_FRILLISH
        item ITEM_NONE
        move MOVE_TRICK_ROOM
        move MOVE_WATER_PULSE
        move MOVE_NIGHT_SHADE
        move MOVE_RECOVER
        ability ABILITY_WATER_ABSORB
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 26
        monwithform SPECIES_TYPHLOSION, 1
        item ITEM_NONE
        move MOVE_ERUPTION
        move MOVE_LAVA_PLUME
        move MOVE_INFERNAL_PARADE
        move MOVE_SHADOW_BALL
        ability ABILITY_MOLD_BREAKER
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 26
        pokemon SPECIES_POLTCHAGEIST
        item ITEM_NONE
        move MOVE_TRICK_ROOM
        move MOVE_MEGA_DRAIN
        move MOVE_FOUL_PLAY
        move MOVE_RAGE_POWDER
        ability ABILITY_HOSPITALITY
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 0
        level 28
        pokemon SPECIES_MISMAGIUS
        item ITEM_NONE
        move MOVE_SHADOW_BALL
        move MOVE_DAZZLING_GLEAM
        move MOVE_MAGICAL_LEAF
        move MOVE_MYSTICAL_FIRE
        ability ABILITY_LEVITATE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 32, "Pryce"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LEADER_1
    nummons 5
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 32
        // mon 0
        ivs 255
        abilityslot 0
        level 41
        pokemon SPECIES_VANILLUXE
        item ITEM_ICY_ROCK
        move MOVE_PROTECT
        move MOVE_HAIL
        move MOVE_WEATHER_BALL
        move MOVE_AURORA_VEIL
        ability ABILITY_SNOW_WARNING
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CALM
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 40
        pokemon SPECIES_ARCTOVISH
        item ITEM_NONE
        move MOVE_FISHIOUS_REND
        move MOVE_ICICLE_CRASH
        move MOVE_DRAGON_RUSH
        move MOVE_CRUNCH
        ability ABILITY_SLUSH_RUSH
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
        
        // mon 2
        ivs 255
        abilityslot 0
        level 40
        pokemon SPECIES_AURORUS
        item ITEM_NEVER_MELT_ICE
        move MOVE_FREEZE_DRY
        move MOVE_POWER_GEM
        move MOVE_DRAGON_PULSE
        move MOVE_HYPER_BEAM
        ability ABILITY_REFRIGERATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
        
        // mon 3
        ivs 255
        abilityslot 0
        level 41
        pokemon SPECIES_DELIBIRD
        item ITEM_FOCUS_SASH
        move MOVE_AIR_SLASH
        move MOVE_ICY_WIND
        move MOVE_FLIP_TURN
        move MOVE_HYDRO_PUMP
        ability ABILITY_VITAL_SPIRIT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
        
        // mon 4
        ivs 255
        abilityslot 0
        level 43
        pokemon SPECIES_MAMOSWINE
        item ITEM_LIFE_ORB
        move MOVE_EARTHQUAKE
        move MOVE_ICICLE_CRASH
        move MOVE_ICE_SHARD
        move MOVE_IRON_HEAD
        ability ABILITY_THICK_FAT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 33, "Jasmine"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LEADER_2
    nummons 5
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 33
        // mon 0
        ivs 255
        abilityslot 0
        level 41
        pokemon SPECIES_FORRETRESS
        item ITEM_LEFTOVERS
        move MOVE_SPIKES
        move MOVE_VOLT_SWITCH
        move MOVE_GYRO_BALL
        move MOVE_PROTECT
        ability ABILITY_OVERCOAT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_RELAXED
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 40
        pokemon SPECIES_EMPOLEON
        item ITEM_DAMP_ROCK
        move MOVE_SCALD
        move MOVE_RAIN_DANCE
        move MOVE_FLASH_CANNON
        move MOVE_TOXIC
        ability ABILITY_DEFIANT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CALM
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 41
        pokemon SPECIES_SKARMORY
        item ITEM_NONE
        move MOVE_TAILWIND
        move MOVE_ROOST
        move MOVE_FLY
        move MOVE_PARTING_SHOT
        ability ABILITY_STURDY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CALM
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 0
        level 44
        pokemon SPECIES_STEELIX
        item ITEM_NONE
        move MOVE_HEADLONG_RUSH
        move MOVE_ROCK_SLIDE
        move MOVE_IRON_TAIL
        move MOVE_SCREECH
        ability ABILITY_ROCK_HEAD
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 0
        level 40
        pokemon SPECIES_METAGROSS
        item ITEM_NONE
        move MOVE_METEOR_MASH
        move MOVE_ZEN_HEADBUTT
        move MOVE_EARTHQUAKE
        move MOVE_AGILITY
        ability ABILITY_TOUGH_CLAWS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 34, "Chuck"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LEADER_3
    nummons 4
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 34
        // mon 0
        ivs 200
        abilityslot 0
        level 36
        pokemon SPECIES_POLIWRATH
        item ITEM_SITRUS_BERRY
        move MOVE_ROCK_SMASH
        move MOVE_BELLY_DRUM
        move MOVE_LIQUIDATION
        move MOVE_DETECT
        ability ABILITY_WATER_ABSORB
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 36
        pokemon SPECIES_SCRAFTY
        item ITEM_LEFTOVERS
        move MOVE_TOXIC
        move MOVE_FOCUS_PUNCH
        move MOVE_SUBSTITUTE
        move MOVE_DETECT
        ability ABILITY_SHED_SKIN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 38
        pokemon SPECIES_HERACROSS
        item ITEM_FLAME_ORB
        move MOVE_CLOSE_COMBAT
        move MOVE_MEGAHORN
        move MOVE_THROAT_CHOP
        move MOVE_DETECT
        ability ABILITY_GUTS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 37
        pokemon SPECIES_ANNIHILAPE
        item ITEM_NONE
        move MOVE_RAGE_FIST
        move MOVE_ROCK_SMASH
        move MOVE_STOMPING_TANTRUM
        move MOVE_SWAGGER
        ability ABILITY_DEFIANT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 35, "Clair"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LEADER_4
    nummons 6
    item ITEM_HYPER_POTION
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 35
        // mon 0
        ivs 200
        abilityslot 0
        level 48
        pokemon SPECIES_SCEPTILE
        item ITEM_TOXIC_ORB
        move MOVE_NIGHT_SLASH
        move MOVE_CLOSE_COMBAT
        move MOVE_EARTHQUAKE
        move MOVE_LEAF_BLADE
        ability ABILITY_GUTS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 49
        pokemon SPECIES_FLYGON
        item ITEM_HEAVY_DUTY_BOOTS
        move MOVE_EARTH_POWER
        move MOVE_QUIVER_DANCE
        move MOVE_DRAGON_PULSE
        move MOVE_BUG_BUZZ
        ability ABILITY_SHED_SKIN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 49
        pokemon SPECIES_GYARADOS
        item ITEM_LEFTOVERS
        move MOVE_WAVE_CRASH
        move MOVE_DRAGON_RUSH
        move MOVE_THUNDER_WAVE
        move MOVE_PROTECT
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 48
        pokemon SPECIES_ALTARIA
        item ITEM_FAIRY_FEATHER
        move MOVE_PLAY_ROUGH
        move MOVE_DEFOG
        move MOVE_HIGH_HORSEPOWER
        move MOVE_ROOST
        ability ABILITY_NATURAL_CURE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 49
        pokemon SPECIES_HAXORUS
        item ITEM_FOCUS_SASH
        move MOVE_DUAL_CHOP
        move MOVE_EARTHQUAKE
        move MOVE_CLOSE_COMBAT
        move MOVE_CRUNCH
        ability ABILITY_DEFIANT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 50
        pokemon SPECIES_KINGDRA
        item ITEM_DAMP_ROCK
        move MOVE_HYDRO_PUMP
        move MOVE_FLIP_TURN
        move MOVE_DRAGON_PULSE
        move MOVE_RAIN_DANCE
        ability ABILITY_SWIFT_SWIM
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 36, "Joyce"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 36
        // mon 0
        ivs 50
        abilityslot 0
        level 53
        pokemon SPECIES_PYROAR
        move MOVE_HYPER_VOICE
        move MOVE_LAVA_PLUME
        move MOVE_WILL_O_WISP
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 53
        pokemon SPECIES_PACHIRISU
        move MOVE_HELPING_HAND
        move MOVE_FOLLOW_ME
        move MOVE_THUNDER_WAVE
        move MOVE_THUNDERBOLT
        ballseal 0
    endparty

trainerdata 37, "Preston"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_GENTLEMAN
    nummons 2
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 37
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_CARNIVINE
        move MOVE_VINE_WHIP
        move MOVE_CRUNCH
        move MOVE_SLEEP_POWDER
        move MOVE_HELPING_HAND
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_BARBARACLE
        move MOVE_SHELL_SMASH
        move MOVE_RAZOR_SHELL
        move MOVE_STONE_EDGE
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 38, "Colette"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_TEACHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 38
        // mon 0
        ivs 0
        abilityslot 32
        level 72
        pokemon SPECIES_CLEFABLE
        move MOVE_MOONBLAST
        move MOVE_FOLLOW_ME
        move MOVE_SOFT_BOILED
        move MOVE_FLAMETHROWER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 72
        pokemon SPECIES_FEAROW
        move MOVE_DRILL_RUN
        move MOVE_BRAVE_BIRD
        move MOVE_ROOST
        move MOVE_PURSUIT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 72
        pokemon SPECIES_DHELMISE
        move MOVE_PHANTOM_FORCE
        move MOVE_HEAVY_SLAM
        move MOVE_POWER_WHIP
        move MOVE_LIQUIDATION
        ballseal 0
    endparty

trainerdata 39, "Eugene"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SAILOR
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 39
        // mon 0
        ivs 0
        abilityslot 0
        level 29
        pokemon SPECIES_OCTILLERY
        move MOVE_OCTAZOOKA
        move MOVE_AURORA_BEAM
        move MOVE_HELPING_HAND
        move MOVE_FLAMETHROWER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 28
        pokemon SPECIES_GREEDENT
        move MOVE_REST
        move MOVE_SLEEP_TALK
        move MOVE_TAKE_DOWN
        move MOVE_NONE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 28
        pokemon SPECIES_CLAWITZER
        move MOVE_WATER_PULSE
        move MOVE_DRAGON_PULSE
        move MOVE_HEAL_PULSE
        move MOVE_HONE_CLAWS
        ballseal 0
    endparty

trainerdata 40, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SUPER_NERD
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 40
        // mon 0
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_GRIMER
        ballseal 0
    endparty

trainerdata 41, "Clyde"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_GUITARIST
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 41
        // mon 0
        ivs 0
        abilityslot 0
        level 42
        pokemon SPECIES_ELECTABUZZ
        ballseal 0
    endparty

trainerdata 42, "Nathan" // TODO
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PSYCHIC_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 42
        // mon 0
        ivs 0
        abilityslot 0
        level 26
        pokemon SPECIES_GIRAFARIG
        ballseal 0
    endparty

trainerdata 43, "Chow"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SAGE
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 43
        // mon 0
        ivs 0
        abilityslot 0
        level 6
        pokemon SPECIES_BELLSPROUT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 6
        pokemon SPECIES_ESPURR
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 6
        pokemon SPECIES_YAMPER
        ballseal 0
    endparty

trainerdata 44, "Derek"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKEFAN_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 44
        // mon 0
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_MORPEKO
        move MOVE_SPARK
        move MOVE_SUCKER_PUNCH
        move MOVE_TORMENT
        move MOVE_BITE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_MORPEKO
        move MOVE_SPARK
        move MOVE_SUCKER_PUNCH
        move MOVE_FLATTER
        move MOVE_BITE
        ballseal 0
    endparty

trainerdata 45, "Ruth"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKEFAN_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 45
        // mon 0
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_AROMATISSE
        move MOVE_HEAL_PULSE
        move MOVE_FAIRY_WIND
        move MOVE_MISTY_TERRAIN
        move MOVE_SLUDGE
        ballseal 0
        
        // mon 1
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_SLURPUFF
        move MOVE_BELLY_DRUM
        move MOVE_DRAIN_PUNCH
        move MOVE_PLAY_ROUGH
        move MOVE_NONE
        ballseal 0
    endparty

trainerdata 46, "Martha"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_MEDIUM
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 46
        // mon 0
        ivs 255
        abilityslot 0
        level 26
        pokemon SPECIES_SINISTEA
        item ITEM_SITRUS_BERRY
        move MOVE_CALM_MIND
        move MOVE_WITHDRAW
        move MOVE_SHADOW_BALL
        move MOVE_MEGA_DRAIN
        ability ABILITY_CURSED_BODY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 26
        pokemon SPECIES_SINISTEA
        item ITEM_SITRUS_BERRY
        move MOVE_WILL_O_WISP
        move MOVE_WITHDRAW
        move MOVE_NIGHT_SHADE
        move MOVE_CONFUSE_RAY
        ability ABILITY_CURSED_BODY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 47, "Mikey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 47
        // mon 0
        ivs 0
        abilityslot 0
        level 4
        pokemon SPECIES_PIDGEY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 5
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 48, "Rob"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 48
        // mon 0
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_BEEDRILL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 39
        pokemon SPECIES_BUTTERFREE
        ballseal 0
    endparty

trainerdata 49, "Albert"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 49
        // mon 0
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_MUNCHLAX
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_TEDDIURSA
        ballseal 0
    endparty

trainerdata 50, "Abe"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 50
        // mon 0
        ivs 200
        abilityslot 0
        level 9
        pokemon SPECIES_NOIBAT
        item ITEM_NONE
        move MOVE_GUST
        move MOVE_DRAGON_BREATH
        move MOVE_ABSORB
        move MOVE_SUPERSONIC
        ability ABILITY_INFILTRATOR
        setivs 25, 25, 25, 25, 25, 25 // hp, atk, def, spd, spatk, spdef
        setevs 32, 32, 32, 32, 32, 32 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 10
        pokemon SPECIES_STARLY
        item ITEM_NONE
        move MOVE_PECK
        move MOVE_QUICK_ATTACK
        move MOVE_GROWL
        move MOVE_NONE
        ability ABILITY_KEEN_EYE
        setivs 25, 25, 25, 25, 25, 25 // hp, atk, def, spd, spatk, spdef
        setevs 32, 32, 32, 32, 32, 32 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 51, "Nico"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SAGE
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 51
        // mon 0
        ivs 0
        abilityslot 0
        level 6
        pokemon SPECIES_BELLSPROUT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 6
        pokemon SPECIES_SPRITZEE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 7
        pokemon SPECIES_STUNKY
        ballseal 0
    endparty

trainerdata 52, "Edmond"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SAGE
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 52
        // mon 0
        ivs 0
        abilityslot 0
        level 6
        pokemon SPECIES_BELLSPROUT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 7
        pokemon SPECIES_HOPPIP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 6
        pokemon SPECIES_MARILL
        ballseal 0
    endparty

trainerdata 53, "Jin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SAGE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 53
        // mon 0
        ivs 0
        abilityslot 0
        level 7
        pokemon SPECIES_BELLSPROUT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 7
        pokemon SPECIES_WOOLOO
        ballseal 0
    endparty

trainerdata 54, "Troy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SAGE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 54
        // mon 0
        ivs 0
        abilityslot 0
        level 7
        pokemon SPECIES_BELLSPROUT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 7
        pokemon SPECIES_HOOTHOOT
        ballseal 0
    endparty

trainerdata 55, "Neal"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SAGE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 55
        // mon 0
        ivs 0
        abilityslot 0
        level 7
        pokemon SPECIES_BELLSPROUT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 7
        pokemon SPECIES_NICKIT
        ballseal 0
    endparty

trainerdata 56, "Gordon"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 56
        // mon 0
        ivs 0
        abilityslot 32
        level 11
        pokemon SPECIES_WOOPER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 11
        pokemon SPECIES_BUIZEL
        ballseal 0
    endparty

trainerdata 57, "Ralph"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 57
        // mon 0
        ivs 0
        abilityslot 0
        level 11
        pokemon SPECIES_SHELLOS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 11
        pokemon SPECIES_ARROKUDA
        ballseal 0
    endparty

trainerdata 58, "Arnold"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 58
        // mon 0
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_CLOYSTER
        move MOVE_ROCK_BLAST
        move MOVE_ICICLE_SPEAR
        move MOVE_RAZOR_SHELL
        move MOVE_SHELL_SMASH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_KILOWATTREL
        move MOVE_ELECTRO_BALL
        move MOVE_HURRICANE
        move MOVE_ROOST
        move MOVE_TAILWIND
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_STARMIE
        move MOVE_SURF
        move MOVE_RECOVER
        move MOVE_PSYCHIC
        move MOVE_POWER_GEM
        ballseal 0
    endparty

trainerdata 59, "Kyle"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 59
        // mon 0
        ivs 0
        abilityslot 0
        level 69
        pokemon SPECIES_DONDOZO
        move MOVE_WAVE_CRASH
        move MOVE_REST
        move MOVE_SLEEP_TALK
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 69
        pokemon SPECIES_TATSUGIRI
        move MOVE_MUDDY_WATER
        move MOVE_PROTECT
        move MOVE_DRAGON_PULSE
        move MOVE_HYDRO_PUMP
        ballseal 0

        // mon 0
        ivs 0
        abilityslot 0
        level 69
        pokemon SPECIES_SEAKING
        move MOVE_MEGAHORN
        move MOVE_DOUBLE_EDGE
        move MOVE_WAVE_CRASH
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 60, "Henry"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 60
        // mon 0
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_REMORAID
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 11
        pokemon SPECIES_POLIWAG
        ballseal 0
    endparty

trainerdata 61, "Anthony"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 61
        // mon 0
        ivs 0
        abilityslot 0
        level 13
        pokemon SPECIES_SHIELDON
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 12
        pokemon SPECIES_TIMBURR
        ballseal 0
    endparty

trainerdata 62, "Samuel"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_YOUNGSTER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 62
        // mon 0
        ivs 0
        abilityslot 32
        level 16
        pokemon SPECIES_SLUGMA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_CHINCHOU
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_HOOTHOOT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_WOOPER
        ballseal 0
    endparty

trainerdata 63, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 63
        // mon 0
        ivs 30
        abilityslot 0
        level 14
        pokemon SPECIES_KOFFING
        ballseal 0
    endparty

trainerdata 64, "Ian"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 64
        // mon 0
        ivs 0
        abilityslot 0
        level 17
        pokemon SPECIES_BUNEARY
        move MOVE_FOCUS_ENERGY
        move MOVE_SCRATCH
        move MOVE_LOW_KICK
        move MOVE_LEER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 17
        pokemon SPECIES_WOOPER
        move MOVE_WATER_GUN
        move MOVE_MUD_SLAP
        move MOVE_TAIL_WHIP
        move MOVE_SAND_ATTACK
        ballseal 0
    endparty

trainerdata 65, "Gina"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 65
        // mon 0
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_JUMPLUFF
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 17
        pokemon SPECIES_SUNKERN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 17
        pokemon SPECIES_PHANPY
        ballseal 0
    endparty

trainerdata 66, "Todd"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 66
        // mon 0
        ivs 0
        abilityslot 0
        level 17
        pokemon SPECIES_PRINPLUP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_KRICKETOT
        ballseal 0
    endparty

trainerdata 67, "Benny"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_BUG_CATCHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 67
        // mon 0
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_WORMADAM
        item ITEM_NONE
        move MOVE_STRUGGLE_BUG
        move MOVE_ASSURANCE
        move MOVE_RAZOR_LEAF
        move MOVE_NONE
        ability ABILITY_OVERCOAT
        setivs 0, 0, 0, 0, 0, 0 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 15
        pokemon SPECIES_SPEWPA
        item ITEM_NONE
        move MOVE_BUG_BITE
        move MOVE_RAGE_POWDER
        move MOVE_POISON_POWDER
        move MOVE_IRON_DEFENSE
        ability ABILITY_SWARM
        setivs 25, 25, 25, 25, 25, 25 // hp, atk, def, spd, spatk, spdef
        setevs 32, 32, 32, 32, 32, 32 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 15
        pokemon SPECIES_COMBEE
        item ITEM_NONE
        move MOVE_STRUGGLE_BUG
        move MOVE_GUST
        move MOVE_CONFUSE_RAY
        move MOVE_NONE
        ability ABILITY_SWARM
        setivs 25, 25, 25, 25, 25, 25 // hp, atk, def, spd, spatk, spdef
        setevs 32, 32, 32, 32, 32, 32 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 68, "Al"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 68
        // mon 0
        ivs 200
        abilityslot 0
        level 15
        pokemon SPECIES_SIZZLIPEDE
        item ITEM_NONE
        move MOVE_STRUGGLE_BUG
        move MOVE_EMBER
        move MOVE_BITE
        move MOVE_ROLLOUT
        ability ABILITY_TINTED_LENS
        setivs 25, 25, 25, 25, 25, 25 // hp, atk, def, spd, spatk, spdef
        setevs 32, 32, 32, 32, 32, 32 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 15
        pokemon SPECIES_SNOM
        item ITEM_NONE
        move MOVE_POWDER_SNOW
        move MOVE_STRUGGLE_BUG
        move MOVE_PROTECT
        move MOVE_STUN_SPORE
        ability ABILITY_ICE_SCALES
        setivs 25, 25, 25, 25, 25, 25 // hp, atk, def, spd, spatk, spdef
        setevs 32, 32, 32, 32, 32, 32 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 69, "Josh"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 69
        // mon 0
        ivs 200
        abilityslot 0
        level 16
        pokemon SPECIES_PINECO
        item ITEM_NONE
        move MOVE_BUG_BITE
        move MOVE_ROLLOUT
        move MOVE_IRON_DEFENSE
        move MOVE_PAYBACK
        ability ABILITY_OVERCOAT
        setivs 25, 25, 25, 25, 25, 25 // hp, atk, def, spd, spatk, spdef
        setevs 32, 32, 32, 32, 32, 32 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0


        // mon 0
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_MOTHIM
        item ITEM_NONE
        move MOVE_POISON_POWDER
        move MOVE_BUG_BITE
        move MOVE_GUST
        move MOVE_PROTECT
        ability ABILITY_TINTED_LENS
        setivs 0, 0, 0, 0, 0, 0 // hp, atk, def, spd, spatk, spdef
        setevs 0, 0, 0, 0, 0, 0 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 70, "Samantha"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BEAUTY
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 70
        // mon 0
        ivs 150
        abilityslot 32
        level 19
        pokemon SPECIES_SMEARGLE
        move MOVE_SPORE
        move MOVE_FAKE_OUT
        move MOVE_RECOVER
        move MOVE_SPIKY_SHIELD
        ballseal 0

        // mon 1
        ivs 150
        abilityslot 32
        level 19
        pokemon SPECIES_MEOWTH
        move MOVE_HEADBUTT
        move MOVE_GROWL
        move MOVE_BITE
        move MOVE_TAIL_WHIP
        ballseal 0
    endparty

trainerdata 71, "Cathy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LASS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 71
        // mon 0
        ivs 150
        abilityslot 0
        level 20
        pokemon SPECIES_GLAMEOW
        move MOVE_FAKE_OUT
        move MOVE_SCRATCH
        move MOVE_HYPNOSIS
        move MOVE_AERIAL_ACE
        ballseal 0

        // mon 1
        ivs 150
        abilityslot 0
        level 19
        pokemon SPECIES_AIPOM
        move MOVE_FAKE_OUT
        move MOVE_SCRATCH
        move MOVE_ASTONISH
        move MOVE_SCREECH
        ballseal 0

        // mon 2
        ivs 150
        abilityslot 0
        level 19
        pokemon SPECIES_BUNEARY
        move MOVE_STOMP
        move MOVE_BABY_DOLL_EYES
        move MOVE_DOUBLE_KICK
        move MOVE_HELPING_HAND
        ballseal 0
    endparty

trainerdata 72, "Bryan"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 72
        // mon 0
        ivs 50
        abilityslot 0
        level 22
        pokemon SPECIES_DRIFLOON
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 22
        pokemon SPECIES_HOOTHOOT
        ballseal 0
    endparty

trainerdata 73, "Theo"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 73
        // mon 0
        ivs 50
        abilityslot 0
        level 32
        pokemon SPECIES_CRAMORANT
        move MOVE_DRILL_PECK
        move MOVE_AQUA_TAIL
        move MOVE_AQUA_JET
        move MOVE_ROOST
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 32
        pokemon SPECIES_STARAPTOR
        move MOVE_DRILL_PECK
        move MOVE_CLOSE_COMBAT
        move MOVE_QUICK_ATTACK
        move MOVE_ROOST
        ballseal 0
    endparty

trainerdata 74, "Ivan"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 74
        // mon 0
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_MILCERY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_CUFANT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_SKIDDO
        ballseal 0
    endparty

trainerdata 75, "Elliot"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 75
        // mon 0
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_THWACKEY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 21
        pokemon SPECIES_MARILL
        ballseal 0
    endparty

trainerdata 76, "Brooke"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 76
        // mon 0
        ivs 0
        abilityslot 0
        level 21
        pokemon SPECIES_SINISTEA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_GOSSIFLEUR
        ballseal 0
    endparty

trainerdata 77, "Kim"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 77
        // mon 0
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_QUILLADIN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_DRIZZILE
        ballseal 0
    endparty

trainerdata 78, "Arnie"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 78
        // mon 0
        ivs 0
        abilityslot 0
        level 22
        pokemon SPECIES_SCYTHER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 22
        pokemon SPECIES_SHUCKLE
        ballseal 0
    endparty

trainerdata 79, "Ken"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 79
        // mon 0
        ivs 0
        abilityslot 32
        level 39
        pokemon SPECIES_ARIADOS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 40
        pokemon SPECIES_PINSIR
        ballseal 0
    endparty

trainerdata 80, "Dirk"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POLICEMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 80
        // mon 0
        ivs 0
        abilityslot 0
        level 22
        pokemon SPECIES_HOUNDOUR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 22
        pokemon SPECIES_YAMPER
        ballseal 0
    endparty

trainerdata 81, "Tori & Til"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 81
        // mon 0
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_MARILL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_MAREEP
        ballseal 0
    endparty

trainerdata 82, "Toby"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 82
        // mon 0
        ivs 50
        abilityslot 0
        level 27
        pokemon SPECIES_XATU
        move MOVE_REFLECT
        move MOVE_LIGHT_SCREEN
        move MOVE_GUST
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 27
        pokemon SPECIES_SKARMORY
        move MOVE_DRILL_PECK
        move MOVE_ROOST
        move MOVE_IRON_DEFENSE
        move MOVE_STEEL_WING
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 27
        pokemon SPECIES_DELIBIRD
        move MOVE_GUST
        move MOVE_WATER_PULSE
        move MOVE_ICY_WIND
        move MOVE_ROOST
        ballseal 0
    endparty

trainerdata 83, "Cindy"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_PICNICKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 83
        // mon 0
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_ARBOK
        item ITEM_SITRUS_BERRY
        move MOVE_GUNK_SHOT
        move MOVE_KNOCK_OFF
        move MOVE_GLARE
        move MOVE_COIL
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_NIDOQUEEN
        item ITEM_LIFE_ORB
        move MOVE_EARTH_POWER
        move MOVE_SLUDGE_BOMB
        move MOVE_FOCUS_BLAST
        move MOVE_HELPING_HAND
        ability ABILITY_SHEER_FORCE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_VENOMOTH
        item ITEM_LEFTOVERS
        move MOVE_QUIVER_DANCE
        move MOVE_SLUDGE_WAVE
        move MOVE_BUG_BUZZ
        move MOVE_PSYCHIC
        ability ABILITY_TINTED_LENS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_MUK
        item ITEM_BLACK_SLUDGE
        move MOVE_DISABLE
        move MOVE_POISON_JAB
        move MOVE_PROTECT
        move MOVE_SHADOW_PUNCH
        ability ABILITY_POISON_TOUCH
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 84, "Barry"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 84
        // mon 0
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_GARBODOR
        item ITEM_LEFTOVERS
        move MOVE_IRON_DEFENSE
        move MOVE_BODY_PRESS
        move MOVE_EARTHQUAKE
        move MOVE_PAIN_SPLIT
        ability ABILITY_REGENERATOR
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_IMPISH
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_SEVIPER
        item ITEM_SITRUS_BERRY
        move MOVE_U_TURN
        move MOVE_FIRE_FANG
        move MOVE_GUNK_SHOT
        move MOVE_ICE_FANG
        ability ABILITY_SHED_SKIN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_GENGAR
        item ITEM_SITRUS_BERRY
        move MOVE_HAZE
        move MOVE_SHADOW_BALL
        move MOVE_SLUDGE_BOMB
        move MOVE_PROTECT
        ability ABILITY_LEVITATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_GRAFAIAI
        item ITEM_FOCUS_SASH
        move MOVE_GUNK_SHOT
        move MOVE_KNOCK_OFF
        move MOVE_TAUNT
        move MOVE_PROTECT
        ability ABILITY_UNBURDEN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 85, "Paula"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 85
        // mon 0
        ivs 0
        abilityslot 32
        level 33
        pokemon SPECIES_DRACOVISH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 33
        pokemon SPECIES_ARCTOVISH
        ballseal 0
    endparty

trainerdata 86, "Randall"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 86
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_CLOYSTER
        move MOVE_ROCK_BLAST
        move MOVE_ICICLE_SPEAR
        move MOVE_RAZOR_SHELL
        move MOVE_SHELL_SMASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_BLASTOISE
        move MOVE_WATER_PULSE
        move MOVE_DARK_PULSE
        move MOVE_SLEEP_TALK
        move MOVE_REST
        ballseal 0
    endparty

trainerdata 87, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SAGE
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 87
        // mon 0
        ivs 0
        abilityslot 0
        level 22
        pokemon SPECIES_HAUNTER
        ballseal 0
    endparty

trainerdata 88, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SAGE
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 88
        // mon 0
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_GASTLY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_GASTLY
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_GASTLY
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_GASTLY
        ballseal 0

        // mon 4
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_GASTLY
        ballseal 0
    endparty

trainerdata 89, "Grace"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_MEDIUM
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 89
        // mon 0
        ivs 255
        abilityslot 0
        level 25
        pokemon SPECIES_MISDREAVUS
        item ITEM_NONE
        move MOVE_PAIN_SPLIT
        move MOVE_CONFUSION
        move MOVE_SHADOW_BALL
        move MOVE_NONE
        ability ABILITY_LEVITATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 25
        pokemon SPECIES_DOUBLADE
        item ITEM_NONE
        move MOVE_AERIAL_ACE
        move MOVE_SHADOW_SNEAK
        move MOVE_FURY_CUTTER
        move MOVE_NIGHT_SLASH
        ability ABILITY_NO_GUARD
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 90, "Kaylee"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 90
        // mon 0
        ivs 0
        abilityslot 32
        level 34
        pokemon SPECIES_SLOWKING
        move MOVE_FUTURE_SIGHT
        move MOVE_SLACK_OFF
        move MOVE_WATER_GUN
        move MOVE_NASTY_PLOT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_MANTINE
        move MOVE_WATER_PULSE
        move MOVE_AIR_SLASH
        move MOVE_CONFUSE_RAY
        move MOVE_SUPERSONIC
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 34
        pokemon SPECIES_KINGDRA
        move MOVE_SURF
        move MOVE_DRAGON_PULSE
        move MOVE_DRAGON_BREATH
        move MOVE_AGILITY
        ballseal 0
    endparty

trainerdata 91, "Susie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 91
        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_PSYDUCK
        move MOVE_SCRATCH
        move MOVE_WATER_GUN
        move MOVE_DISABLE
        move MOVE_CONFUSION
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_GOLDEEN
        move MOVE_FLAIL
        move MOVE_WATER_PULSE
        move MOVE_SUPERSONIC
        move MOVE_HORN_ATTACK
        ballseal 0
    endparty

trainerdata 92, "Denise"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 92
        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_DEWGONG
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_LUMINEON
        ballseal 0
    endparty

trainerdata 93, "Kara"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 93
        // mon 0
        ivs 0
        abilityslot 32
        level 34
        pokemon SPECIES_STARMIE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 34
        pokemon SPECIES_INTELEON
        ballseal 0
    endparty

trainerdata 94, "Wendy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 94
        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_KINGDRA
        move MOVE_SURF
        move MOVE_DRAGON_PULSE
        move MOVE_AGILITY
        move MOVE_BRINE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_BARBARACLE
        move MOVE_SHELL_SMASH
        move MOVE_RAZOR_SHELL
        move MOVE_STONE_EDGE
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 95, "Charlie"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 95
        // mon 0
        ivs 0
        abilityslot 32
        level 34
        pokemon SPECIES_BARBARACLE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_DREDNAW
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 34
        pokemon SPECIES_GRAPPLOCT
        ballseal 0
    endparty

trainerdata 96, "George"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 96
        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_OCTILLERY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 34
        monwithform SPECIES_BASCULEGION, 1
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_BASCULEGION
        ballseal 0
    endparty

trainerdata 97, "Berke"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 97
        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_OVERQWIL
        ballseal 0

        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_DRACOVISH
        ballseal 0
    endparty

trainerdata 98, "Ronald"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 98
        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_GYARADOS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_GOODRA
        ballseal 0
    endparty

trainerdata 99, "Matthew"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 99
        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_GRAPPLOCT
        ballseal 0

        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_BARRASKEWDA
        ballseal 0
    endparty

trainerdata 100, "Anthony"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 100
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 32
        pokemon SPECIES_MACHOKE
        ballseal 0
    endparty

trainerdata 101, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 101
        // mon 0
        ivs 30
        abilityslot 32
        level 13
        pokemon SPECIES_GLAMEOW
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 32
        level 13
        pokemon SPECIES_BIDOOF
        ballseal 0
    endparty

trainerdata 102, "Gaven"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 102
        // mon 0
        ivs 50
        abilityslot 0
        level 53
        pokemon SPECIES_RILLABOOM
        move MOVE_WOOD_HAMMER
        move MOVE_KNOCK_OFF
        move MOVE_FAKE_OUT
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 53
        pokemon SPECIES_GOODRA
        move MOVE_FLAMETHROWER
        move MOVE_MUDDY_WATER
        move MOVE_POWER_WHIP
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 103, "Blake"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass CLASS_ACE_TRAINER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 103
        // mon 0
        ivs 50
        abilityslot 32
        level 50
        pokemon SPECIES_DRAGAPULT
        item ITEM_HEAVY_DUTY_BOOTS
        move MOVE_DRAGON_DARTS
        move MOVE_U_TURN
        move MOVE_PHANTOM_FORCE
        move MOVE_DRAGON_DANCE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 50
        pokemon SPECIES_QUAGSIRE
        item ITEM_LEFTOVERS
        move MOVE_RECOVER
        move MOVE_WATERFALL
        move MOVE_YAWN
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 50
        pokemon SPECIES_WYRDEER
        item ITEM_LIFE_ORB
        move MOVE_PSYSHIELD_BASH
        move MOVE_HELPING_HAND
        move MOVE_JUMP_KICK
        move MOVE_WILD_CHARGE
        ballseal 0
    endparty

trainerdata 104, "Brian"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 104
        // mon 0
        ivs 50
        abilityslot 0
        level 52
        pokemon SPECIES_AMPHAROS
        move MOVE_DISCHARGE
        move MOVE_POWER_GEM
        move MOVE_DRAGON_PULSE
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 51
        pokemon SPECIES_GLISCOR
        move MOVE_ACROBATICS
        move MOVE_X_SCISSOR
        move MOVE_KNOCK_OFF
        move MOVE_SWORDS_DANCE
        ballseal 0
    endparty

trainerdata 105, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_ACE_TRAINER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 105
        // mon 0
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_BULBASAUR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_CHARMANDER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_SQUIRTLE
        ballseal 0
    endparty

trainerdata 106, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_ACE_TRAINER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 106
        // mon 0
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_BULBASAUR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_CHARMANDER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_SQUIRTLE
        ballseal 0
    endparty

trainerdata 107, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_ACE_TRAINER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 107
        // mon 0
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_BULBASAUR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_CHARMANDER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_SQUIRTLE
        ballseal 0
    endparty

trainerdata 108, "Ryan"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_ACE_TRAINER_M
    nummons 3
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 108
        // mon 0
        ivs 50
        abilityslot 0
        level 50
        pokemon SPECIES_ABOMASNOW
        move MOVE_GRASS_WHISTLE
        move MOVE_PROTECT
        move MOVE_BLIZZARD
        move MOVE_AURORA_VEIL
        ability ABILITY_SNOW_WARNING
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 50
        pokemon SPECIES_MAMOSWINE
        move MOVE_EARTHQUAKE
        move MOVE_ICICLE_CRASH
        move MOVE_ROCK_SLIDE
        move MOVE_PROTECT
        ability ABILITY_ICE_BODY
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 51
        pokemon SPECIES_FROSLASS
        move MOVE_BLIZZARD
        move MOVE_ICY_WIND
        move MOVE_HEX
        move MOVE_WILL_O_WISP
        ability ABILITY_ADAPTABILITY
        ballseal 0
    endparty

trainerdata 109, "Alton" // TODO
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_ACE_TRAINER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 109
        // mon 0
        ivs 50
        abilityslot 0
        level 24
        pokemon SPECIES_IVYSAUR
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 24
        pokemon SPECIES_CHARMELEON
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 24
        pokemon SPECIES_WARTORTLE
        ballseal 0
    endparty

trainerdata 110, "Paulo"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_ACE_TRAINER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 110
        // mon 0
        ivs 200
        abilityslot 0
        level 48
        pokemon SPECIES_GARCHOMP
        item ITEM_ROCKY_HELMET
        move MOVE_EARTHQUAKE
        move MOVE_DRAGON_RUSH
        move MOVE_FIRE_FANG
        move MOVE_PROTECT
        ability ABILITY_ROUGH_SKIN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 48
        pokemon SPECIES_NOIVERN
        item ITEM_FOCUS_SASH
        move MOVE_BOOMBURST
        move MOVE_DRAGON_PULSE
        move MOVE_FIRE_BLAST
        move MOVE_WHIRLWIND
        ability ABILITY_AERILATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 111, "Mike"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_ACE_TRAINER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 111
        // mon 0
        ivs 200
        abilityslot 0
        level 48
        monwithform SPECIES_GOODRA, 1
        item ITEM_LEFTOVERS
        move MOVE_HEAVY_SLAM
        move MOVE_BODY_PRESS
        move MOVE_ACID_ARMOR
        move MOVE_LIFE_DEW
        ability ABILITY_SHELL_ARMOR
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 49
        pokemon SPECIES_DRACOVISH
        item ITEM_LIFE_ORB
        move MOVE_FISHIOUS_REND
        move MOVE_PSYCHIC_FANGS
        move MOVE_DRAGON_RUSH
        move MOVE_BRUTAL_SWING
        ability ABILITY_WATER_ABSORB
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 112, "Cody"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_ACE_TRAINER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 112
        // mon 0
        ivs 200
        abilityslot 0
        level 48
        pokemon SPECIES_TYRANTRUM
        item ITEM_FOCUS_SASH
        move MOVE_ROCK_SLIDE
        move MOVE_HEAD_SMASH
        move MOVE_SUPERPOWER
        move MOVE_DRAGON_DANCE
        ability ABILITY_ROCK_HEAD
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 48
        pokemon SPECIES_GOODRA
        item ITEM_LEFTOVERS
        move MOVE_GUNK_SHOT
        move MOVE_MUDDY_WATER
        move MOVE_POWER_WHIP
        move MOVE_PROTECT
        ability ABILITY_POISON_HEAL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_RELAXED
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 113, "Jamie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 113
        // mon 0
        ivs 50
        abilityslot 32
        level 53
        pokemon SPECIES_YANMEGA
        move MOVE_BUG_BUZZ
        move MOVE_DRAGON_PULSE
        move MOVE_GIGA_DRAIN
        move MOVE_CALM_MIND
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 53
        pokemon SPECIES_GARCHOMP
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        move MOVE_DRAGON_RUSH
        move MOVE_SWORDS_DANCE
        ballseal 0
    endparty

trainerdata 114, "Reena"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_ACE_TRAINER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 114
        // mon 0
        ivs 50
        abilityslot 0
        level 36
        pokemon SPECIES_GROWLITHE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 33
        pokemon SPECIES_NIDORINA
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 36
        pokemon SPECIES_STARYU
        ballseal 0
    endparty

trainerdata 115, "Megan"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass CLASS_ACE_TRAINER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 115
        // mon 0
        ivs 50
        abilityslot 0
        level 50
        pokemon SPECIES_TORTERRA
        item ITEM_LEFTOVERS
        move MOVE_EARTHQUAKE
        move MOVE_HEADLONG_RUSH
        move MOVE_LEECH_SEED
        move MOVE_SPIKY_SHIELD
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 50
        pokemon SPECIES_STARAPTOR
        item ITEM_FOCUS_SASH
        move MOVE_CLOSE_COMBAT
        move MOVE_BRAVE_BIRD
        move MOVE_ENDEAVOR
        move MOVE_QUICK_ATTACK
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 52
        pokemon SPECIES_SNEASLER
        item ITEM_LIFE_ORB
        move MOVE_DIRE_CLAW
        move MOVE_CLOSE_COMBAT
        move MOVE_ICICLE_CRASH
        move MOVE_SWORDS_DANCE
        ballseal 0
    endparty

trainerdata 116, "Lois"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_F
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 116
        // mon 0
        ivs 50
        abilityslot 0
        level 36
        pokemon SPECIES_POLITOED
        move MOVE_HYDRO_PUMP
        move MOVE_HYPNOSIS
        move MOVE_EARTH_POWER
        move MOVE_RAIN_DANCE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 36
        pokemon SPECIES_BOLTUND
        move MOVE_THUNDER
        move MOVE_FIRE_FANG
        move MOVE_ICE_FANG
        move MOVE_PLAY_ROUGH
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 36
        pokemon SPECIES_PERRSERKER
        move MOVE_IRON_HEAD
        move MOVE_BULLET_PUNCH
        move MOVE_SLASH
        move MOVE_SWORDS_DANCE
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 0
        level 36
        pokemon SPECIES_WYRDEER
        move MOVE_PSYSHIELD_BASH
        move MOVE_QUICK_ATTACK
        move MOVE_MEGAHORN
        move MOVE_WILD_CHARGE
        ballseal 0
    endparty

trainerdata 117, "Lola"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_ACE_TRAINER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 117
        // mon 0
        ivs 200
        abilityslot 0
        level 48
        pokemon SPECIES_DRAGALGE
        item ITEM_BLACK_SLUDGE
        move MOVE_HYDRO_PUMP
        move MOVE_SLUDGE_BOMB
        move MOVE_DRAGON_PULSE
        move MOVE_PROTECT
        ability ABILITY_ADAPTABILITY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 48
        pokemon SPECIES_AMPHAROS
        item ITEM_AIR_BALLOON
        move MOVE_NASTY_PLOT
        move MOVE_POWER_GEM
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        ability ABILITY_MOLD_BREAKER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 118, "Kate" // TODO
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 118
        // mon 0
        ivs 50
        abilityslot 0
        level 31
        pokemon SPECIES_TORTERRA
        move MOVE_EARTHQUAKE
        move MOVE_RAZOR_LEAF
        move MOVE_LEECH_SEED
        move MOVE_SPIKY_SHIELD
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 31
        pokemon SPECIES_VESPIQUEN
        move MOVE_DEFEND_ORDER
        move MOVE_HEAL_ORDER
        move MOVE_ATTACK_ORDER
        move MOVE_DUAL_WINGBEAT
        ballseal 0
    endparty

trainerdata 119, "Fran"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_ACE_TRAINER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 119
        // mon 0
        ivs 200
        abilityslot 0
        level 49
        pokemon SPECIES_FLAPPLE
        item ITEM_YACHE_BERRY
        move MOVE_DRAGON_DANCE
        move MOVE_GRAV_APPLE
        move MOVE_FLY
        move MOVE_DRAGON_RUSH
        ability ABILITY_RIPEN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 48
        pokemon SPECIES_AURORUS
        item ITEM_FOCUS_SASH
        move MOVE_BOOMBURST
        move MOVE_ICY_WIND
        move MOVE_POWER_GEM
        move MOVE_ROCK_POLISH
        ability ABILITY_REFRIGERATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 120, "Irene" // TODO
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_ACE_TRAINER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 120
        // mon 0
        ivs 200
        abilityslot 0
        level 32
        pokemon SPECIES_TYRANITAR
        item ITEM_SMOOTH_ROCK
        move MOVE_CRUNCH
        move MOVE_ROCK_SLIDE
        move MOVE_REST
        move MOVE_SLEEP_TALK
        ability ABILITY_SAND_STREAM
        setivs 15, 15, 15, 15, 15, 15 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 32
        pokemon SPECIES_LANTURN
        item ITEM_NONE
        move MOVE_SCALD
        move MOVE_TOXIC
        move MOVE_HEAL_BELL
        move MOVE_THUNDERBOLT
        ability ABILITY_WATER_ABSORB
        setivs 15, 15, 15, 15, 15, 15 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 121, "Kelly"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_ACE_TRAINER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 121
        // mon 0
        ivs 50
        abilityslot 0
        level 51
        pokemon SPECIES_TYRANITAR
        move MOVE_ROCK_SLIDE
        move MOVE_PROTECT
        move MOVE_KNOCK_OFF
        move MOVE_ICE_PUNCH
        ability ABILITY_SAND_STREAM
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 51
        pokemon SPECIES_GARCHOMP
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        move MOVE_DRAGON_RUSH
        move MOVE_SWORDS_DANCE
        ability ABILITY_SAND_FORCE
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 50
        pokemon SPECIES_SKARMORY
        move MOVE_ROOST
        move MOVE_BRAVE_BIRD
        move MOVE_TOXIC
        move MOVE_PARTING_SHOT
        ability ABILITY_STURDY
        ballseal 0
    endparty

trainerdata 122, "Marvin"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 122
        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_QWILFISH
        move MOVE_LIQUIDATION
        move MOVE_BARB_BARRAGE
        move MOVE_THUNDER_WAVE
        move MOVE_PAIN_SPLIT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_CLAWITZER
        move MOVE_WATER_PULSE
        move MOVE_AURA_SPHERE
        move MOVE_HEAL_PULSE
        move MOVE_HONE_CLAWS
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_DREDNAW
        move MOVE_ROCK_SLIDE
        move MOVE_AQUA_TAIL
        move MOVE_AQUA_JET
        move MOVE_ROCK_POLISH
        ballseal 0
    endparty

trainerdata 123, "Tully"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 123
        // mon 0
        ivs 0
        abilityslot 0
        level 28
        pokemon SPECIES_QWILFISH
        move MOVE_LIQUIDATION
        move MOVE_BARB_BARRAGE
        move MOVE_THUNDER_WAVE
        move MOVE_PAIN_SPLIT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 28
        pokemon SPECIES_OVERQWIL
        move MOVE_LIQUIDATION
        move MOVE_BARB_BARRAGE
        move MOVE_CRUNCH
        move MOVE_PAIN_SPLIT
        ballseal 0
    endparty

trainerdata 124, "Wilton"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 124
        // mon 0
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_QWILFISH
        move MOVE_LIQUIDATION
        move MOVE_BARB_BARRAGE
        move MOVE_THUNDER_WAVE
        move MOVE_PAIN_SPLIT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_EMPOLEON
        move MOVE_HYDRO_PUMP
        move MOVE_FLASH_CANNON
        move MOVE_ICE_BEAM
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_GASTRODON
        move MOVE_SCALD
        move MOVE_EARTH_POWER
        move MOVE_TOXIC
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 125, "Edgar"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 125
        // mon 0
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_LANTURN
        move MOVE_SCALD
        move MOVE_DISCHARGE
        move MOVE_PROTECT
        move MOVE_DAZZLING_GLEAM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 47
        pokemon SPECIES_QWILFISH
        move MOVE_AQUA_TAIL
        move MOVE_BARB_BARRAGE
        move MOVE_THUNDER_WAVE
        move MOVE_PAIN_SPLIT
        ballseal 0
    endparty

trainerdata 126, "Andre"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 126
        // mon 0
        ivs 0
        abilityslot 0
        level 35
        pokemon SPECIES_QUAGSIRE
        move MOVE_EARTHQUAKE
        move MOVE_RECOVER
        move MOVE_SCALD
        move MOVE_TOXIC
        ballseal 0

        // mon 0
        ivs 0
        abilityslot 0
        level 35
        pokemon SPECIES_MANTINE
        move MOVE_WIDE_GUARD
        move MOVE_AIR_SLASH
        move MOVE_WATER_PULSE
        move MOVE_SIGNAL_BEAM
        ballseal 0
    endparty

trainerdata 127, "Raymond"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 127
        // mon 0
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_FLOATZEL
        move MOVE_LIQUIDATION
        move MOVE_CLOSE_COMBAT
        move MOVE_FLIP_TURN
        move MOVE_ICE_PUNCH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 35
        pokemon SPECIES_GASTRODON
        move MOVE_RECOVER
        move MOVE_MUDDY_WATER
        move MOVE_EARTHQUAKE
        move MOVE_RAIN_DANCE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 35
        monwithform SPECIES_ROTOM, 2
        move MOVE_HYDRO_PUMP
        move MOVE_THUNDER
        move MOVE_VOLT_SWITCH
        move MOVE_WILL_O_WISP
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_BARBARACLE
        move MOVE_LIQUIDATION
        move MOVE_ROCK_SLIDE
        move MOVE_CROSS_CHOP
        move MOVE_SHELL_SMASH
        ballseal 0
    endparty

trainerdata 128, "Jonah"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 128
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_SHELLDER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 37
        pokemon SPECIES_OCTILLERY
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 33
        pokemon SPECIES_REMORAID
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 37
        pokemon SPECIES_CLOYSTER
        ballseal 0
    endparty

trainerdata 129, "Shane"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKE_MANIAC
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 129
        // mon 0
        ivs 0
        abilityslot 0
        level 28
        pokemon SPECIES_SCIZOR
        move MOVE_BULLET_PUNCH
        move MOVE_BUG_BITE
        move MOVE_ROOST
        move MOVE_SWORDS_DANCE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 28
        pokemon SPECIES_PACHIRISU
        move MOVE_HELPING_HAND
        move MOVE_FOLLOW_ME
        move MOVE_THUNDER_WAVE
        move MOVE_THUNDERBOLT
        ballseal 0
    endparty

trainerdata 130, "Beckett"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKE_MANIAC
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 130
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_SPIRITOMB
        move MOVE_DARK_PULSE
        move MOVE_SHADOW_BALL
        move MOVE_WILL_O_WISP
        move MOVE_RECOVER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_MAGMAR
        move MOVE_LAVA_PLUME
        move MOVE_EARTH_POWER
        move MOVE_SCORCHING_SANDS
        move MOVE_NASTY_PLOT
        ballseal 0
    endparty

trainerdata 131, "Brent"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKE_MANIAC
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 131
        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_KLEFKI
        move MOVE_PLAY_ROUGH
        move MOVE_FOUL_PLAY
        move MOVE_CRAFTY_SHIELD
        move MOVE_THUNDER_WAVE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_ARIADOS
        move MOVE_GUNK_SHOT
        move MOVE_FIRST_IMPRESSION
        move MOVE_MEGAHORN
        move MOVE_TOXIC_THREAD
        ballseal 0
    endparty

trainerdata 132, "Ron"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKE_MANIAC
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 132
        // mon 0
        ivs 0
        abilityslot 32
        level 34
        pokemon SPECIES_ABOMASNOW
        move MOVE_WOOD_HAMMER
        move MOVE_ICICLE_CRASH
        move MOVE_LEECH_SEED
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 34
        pokemon SPECIES_FROSLASS
        move MOVE_SHADOW_BALL
        move MOVE_BLIZZARD
        move MOVE_AURORA_VEIL
        move MOVE_WILL_O_WISP
        ballseal 0
    endparty

trainerdata 133, "Morgan"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKE_MANIAC
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 133
        // mon 0
        ivs 0
        abilityslot 32
        level 39
        pokemon SPECIES_RHYHORN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 39
        pokemon SPECIES_RHYDON
        ballseal 0
    endparty

trainerdata 134, "Benjamin"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 134
        // mon 0
        ivs 0
        abilityslot 0
        level 28
        pokemon SPECIES_RHYPERIOR
        move MOVE_HAMMER_ARM
        move MOVE_BULLDOZE
        move MOVE_ROCK_WRECKER
        move MOVE_MEGAHORN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 29
        pokemon SPECIES_CARBINK
        move MOVE_SAFEGUARD
        move MOVE_HELPING_HAND
        move MOVE_ROCK_SLIDE
        move MOVE_TRICK_ROOM
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 28
        monwithform SPECIES_AVALUGG, 1
        move MOVE_ROCK_SLIDE
        move MOVE_MOUNTAIN_GALE
        move MOVE_RECOVER
        move MOVE_BODY_PRESS
        ballseal 0
    endparty

trainerdata 135, "Johnny"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 135
        // mon 0
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_PINSIR
        move MOVE_CLOSE_COMBAT
        move MOVE_X_SCISSOR
        move MOVE_STRENGTH
        move MOVE_SWORDS_DANCE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_CRYOGONAL
        move MOVE_RECOVER
        move MOVE_POWER_GEM
        move MOVE_DARK_PULSE
        move MOVE_ICY_WIND
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_TOEDSCRUEL
        move MOVE_GIGA_DRAIN
        move MOVE_EARTH_POWER
        move MOVE_SPORE
        move MOVE_HEX
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_WISHIWASHI
        move MOVE_SURF
        move MOVE_REST
        move MOVE_SLEEP_TALK
        move MOVE_ICE_BEAM
        ballseal 0
    endparty

trainerdata 136, "Linda"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LASS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 136
        // mon 0
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_SCOLIPEDE
        item ITEM_FOCUS_SASH
        move MOVE_PROTECT
        move MOVE_GUNK_SHOT
        move MOVE_MEGAHORN
        move MOVE_BATON_PASS
        ability ABILITY_SPEED_BOOST
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_CLODSIRE
        item ITEM_BLACK_SLUDGE
        move MOVE_TOXIC
        move MOVE_RECOVER
        move MOVE_EARTHQUAKE
        move MOVE_HELPING_HAND
        ability ABILITY_UNAWARE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SASSY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_NIDOKING
        item ITEM_LIFE_ORB
        move MOVE_MEGAHORN
        move MOVE_HIGH_HORSEPOWER
        move MOVE_POISON_JAB
        move MOVE_ROCK_SLIDE
        ability ABILITY_SHEER_FORCE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_VICTREEBEL
        item ITEM_SITRUS_BERRY
        move MOVE_FIRE_FANG
        move MOVE_ICE_FANG
        move MOVE_THUNDER_FANG
        move MOVE_LEAF_STORM
        ability ABILITY_STRONG_JAW
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 137, "Vance"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 137
        // mon 0
        ivs 50
        abilityslot 0
        level 47
        pokemon SPECIES_TOGEKISS
        move MOVE_AIR_SLASH
        move MOVE_THUNDER_WAVE
        move MOVE_AURA_SPHERE
        move MOVE_ROOST
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 47
        pokemon SPECIES_NOCTOWL
        move MOVE_HURRICANE
        move MOVE_DARK_PULSE
        move MOVE_HYPNOSIS
        move MOVE_ROOST
        ballseal 0
    endparty

trainerdata 138, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 138
        // mon 0
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_NIDORINO
        ballseal 0
    endparty

trainerdata 139, "Debra"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 139
        // mon 0
        ivs 0
        abilityslot 32
        level 62
        pokemon SPECIES_CINCCINO
        move MOVE_FAKE_OUT
        move MOVE_BULLET_SEED
        move MOVE_ROCK_BLAST
        move MOVE_TAIL_SLAP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 62
        pokemon SPECIES_MUDSDALE
        move MOVE_BODY_PRESS
        move MOVE_EARTHQUAKE
        move MOVE_IRON_DEFENSE
        move MOVE_COUNTER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 62
        pokemon SPECIES_NIDOQUEEN
        move MOVE_EARTH_POWER
        move MOVE_SLUDGE_BOMB
        move MOVE_FOCUS_BLAST
        move MOVE_HELPING_HAND
        ballseal 0
    endparty

trainerdata 140, "Doug"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BUG_CATCHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 140
        // mon 0
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_BUTTERFREE
        move MOVE_TAILWIND
        move MOVE_RAGE_POWDER
        move MOVE_SLEEP_POWDER
        move MOVE_BUG_BUZZ
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_ARIADOS
        move MOVE_U_TURN
        move MOVE_BUG_BITE
        move MOVE_SHADOW_SNEAK
        move MOVE_SWORDS_DANCE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_RABSCA
        move MOVE_PSYCHIC
        move MOVE_BUG_BUZZ
        move MOVE_PROTECT
        move MOVE_SAFEGUARD
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_BEAUTIFLY
        move MOVE_QUIVER_DANCE
        move MOVE_MOONBLAST
        move MOVE_GIGA_DRAIN
        move MOVE_BUG_BUZZ
        ballseal 0
    endparty

trainerdata 141, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 141
        // mon 0
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_NIDORINO
        ballseal 0
    endparty

trainerdata 142, "Gina"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 142
        // mon 0
        ivs 10
        abilityslot 0
        level 24
        pokemon SPECIES_HOPPIP
        ballseal 0

        // mon 1
        ivs 10
        abilityslot 0
        level 24
        pokemon SPECIES_HOPPIP
        ballseal 0

        // mon 2
        ivs 10
        abilityslot 0
        level 32
        pokemon SPECIES_IVYSAUR
        ballseal 0
    endparty

trainerdata 143, "Erik"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 143
        // mon 0
        ivs 0
        abilityslot 0
        level 50
        pokemon SPECIES_HITMONTOP
        move MOVE_WIDE_GUARD
        move MOVE_CLOSE_COMBAT
        move MOVE_FAKE_OUT
        move MOVE_HELPING_HAND
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 50
        pokemon SPECIES_BASTIODON
        move MOVE_HEAVY_SLAM
        move MOVE_HEAD_SMASH
        move MOVE_IRON_DEFENSE
        move MOVE_BODY_PRESS
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 51
        pokemon SPECIES_ELECTIVIRE
        move MOVE_SUPERCELL_SLAM
        move MOVE_CLOSE_COMBAT
        move MOVE_FIRE_PUNCH
        move MOVE_THUNDER_WAVE
        ballseal 0
    endparty

trainerdata 144, "Michael"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 144
        // mon 0
        ivs 30
        abilityslot 0
        level 51
        pokemon SPECIES_SANDACONDA
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        move MOVE_BODY_PRESS
        move MOVE_COIL
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 51
        pokemon SPECIES_GASTRODON
        move MOVE_TOXIC
        move MOVE_EARTH_POWER
        move MOVE_RECOVER
        move MOVE_SCALD
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 0
        level 50
        pokemon SPECIES_URSALUNA
        move MOVE_HEADLONG_RUSH
        move MOVE_STOMPING_TANTRUM
        move MOVE_QUICK_ATTACK
        move MOVE_HAMMER_ARM
        ballseal 0
    endparty

trainerdata 145, "Parry"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 145
        // mon 0
        ivs 0
        abilityslot 0
        level 51
        pokemon SPECIES_DIGGERSBY
        move MOVE_DOUBLE_EDGE
        move MOVE_EARTHQUAKE
        move MOVE_HAMMER_ARM
        move MOVE_ROCK_SLIDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 51
        pokemon SPECIES_CARBINK
        move MOVE_SAFEGUARD
        move MOVE_HELPING_HAND
        move MOVE_ROCK_SLIDE
        move MOVE_TRICK_ROOM
        ballseal 0
    endparty

trainerdata 146, "Timothy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 146
        // mon 0
        ivs 30
        abilityslot 0
        level 51
        pokemon SPECIES_GRAPPLOCT
        move MOVE_BULK_UP
        move MOVE_ROCK_SLIDE
        move MOVE_CLOSE_COMBAT
        move MOVE_LIQUIDATION
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 51
        pokemon SPECIES_COALOSSAL
        move MOVE_HEAT_WAVE
        move MOVE_POWER_GEM
        move MOVE_EARTH_POWER
        move MOVE_ROCK_POLISH
        ballseal 0
    endparty

trainerdata 147, "Ted"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_CAMPER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 147
        // mon 0
        ivs 0
        abilityslot 32
        level 51
        monwithform SPECIES_VIVILLON, 3
        move MOVE_SLEEP_POWDER
        move MOVE_HELPING_HAND
        move MOVE_TAILWIND
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 51
        pokemon SPECIES_PYROAR
        move MOVE_HYPER_VOICE
        move MOVE_LAVA_PLUME
        move MOVE_WILL_O_WISP
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 148, "Lloyd"
    trainermontype TRAINER_DATA_TYPE_NOTHING | TRAINER_DATA_TYPE_ITEMS
    trainerclass CLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 148
        // mon 0
        ivs 0
        abilityslot 0
        level 68
        pokemon SPECIES_SQUAWKABILLY
        item ITEM_NONE
        move MOVE_BRAVE_BIRD
        move MOVE_BODY_SLAM
        move MOVE_ROOST
        move MOVE_TAUNT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 68
        pokemon SPECIES_DARMANITAN
        item ITEM_SITRUS_BERRY
        move MOVE_FLARE_BLITZ
        move MOVE_BELLY_DRUM
        move MOVE_EARTHQUAKE
        move MOVE_ZEN_HEADBUTT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 68
        pokemon SPECIES_BEAUTIFLY
        item ITEM_NONE
        move MOVE_QUIVER_DANCE
        move MOVE_MOONBLAST
        move MOVE_GIGA_DRAIN
        move MOVE_BUG_BUZZ
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 68
        monwithform SPECIES_PERSIAN, 1
        item ITEM_NONE
        move MOVE_DARK_PULSE
        move MOVE_POWER_GEM
        move MOVE_HYPER_VOICE
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 149, "Dean"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 149
        // mon 0
        ivs 0
        abilityslot 32
        level 65
        monwithform SPECIES_SLOWBRO, 1
        move MOVE_GUNK_SHOT
        move MOVE_WATERFALL
        move MOVE_SLACK_OFF
        move MOVE_BULK_UP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 66
        pokemon SPECIES_DODRIO
        move MOVE_QUICK_ATTACK
        move MOVE_FLARE_BLITZ
        move MOVE_BRAVE_BIRD
        move MOVE_DRILL_PECK
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 66
        pokemon SPECIES_ABSOL
        move MOVE_ME_FIRST
        move MOVE_SUCKER_PUNCH
        move MOVE_KNOCK_OFF
        move MOVE_SHADOW_CLAW
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 66
        pokemon SPECIES_BOUFFALANT
        move MOVE_THROAT_CHOP
        move MOVE_CLOSE_COMBAT
        move MOVE_WILD_CHARGE
        move MOVE_HEAD_CHARGE
        ballseal 0
    endparty

trainerdata 150, "Sid"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 150
        // mon 0
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_KECLEON
        ability ABILITY_PROTEAN
        move MOVE_SHADOW_SNEAK
        move MOVE_BODY_PRESS
        move MOVE_FAKE_OUT
        move MOVE_RECOVER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_SAWSBUCK
        ability ABILITY_SERENE_GRACE
        item ITEM_NONE
        move MOVE_CLOSE_COMBAT
        move MOVE_DOUBLE_EDGE
        move MOVE_LEAF_BLADE
        move MOVE_LEECH_SEED
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 66
        pokemon SPECIES_SANDSLASH
        ability ABILITY_TOUGH_CLAWS
        move MOVE_EARTHQUAKE
        move MOVE_SWORDS_DANCE
        move MOVE_ROCK_SLIDE
        move MOVE_PLAY_ROUGH
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 66
        pokemon SPECIES_LUNATONE
        ability ABILITY_LEVITATE
        move MOVE_MOONBLAST
        move MOVE_EARTH_POWER
        move MOVE_POWER_GEM
        move MOVE_HYPNOSIS
        ballseal 0
    endparty

trainerdata 151, "Erin"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 151
        // mon 0
        ivs 0
        abilityslot 32
        level 51
        pokemon SPECIES_UMBREON
        move MOVE_HELPING_HAND
        move MOVE_MOONLIGHT
        move MOVE_DARK_PULSE
        move MOVE_BABY_DOLL_EYES
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 51
        pokemon SPECIES_ESPEON
        move MOVE_CALM_MIND
        move MOVE_PSYCHIC
        move MOVE_SHADOW_BALL
        move MOVE_FOCUS_BLAST
        ballseal 0
    endparty

trainerdata 152, "Hope"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass CLASS_PICNICKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 152
        // mon 0
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_LINOONE
        item ITEM_SITRUS_BERRY
        move MOVE_BELLY_DRUM
        move MOVE_EXTREME_SPEED
        move MOVE_SHADOW_CLAW
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_SHARPEDO
        item ITEM_LUM_BERRY
        move MOVE_LIQUIDATION
        move MOVE_PROTECT
        move MOVE_NIGHT_SLASH
        move MOVE_ICE_FANG
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_TROPIUS
        item ITEM_LIFE_ORB
        move MOVE_GIGA_DRAIN
        move MOVE_SYNTHESIS
        move MOVE_HEAT_WAVE
        move MOVE_ICY_WIND
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_MAROWAK
        item ITEM_THICK_CLUB
        move MOVE_BONE_RUSH
        move MOVE_ROCK_SLIDE
        move MOVE_PROTECT
        move MOVE_SWORDS_DANCE
        ballseal 0
    endparty

trainerdata 153, "Sharon"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PICNICKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 153
        // mon 0
        ivs 0
        abilityslot 32
        level 74
        pokemon SPECIES_ABSOL
        move MOVE_PSYCHO_CUT
        move MOVE_SUCKER_PUNCH
        move MOVE_SHADOW_CLAW
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 74
        pokemon SPECIES_ESCAVALIER
        move MOVE_SUPERPOWER
        move MOVE_IRON_HEAD
        move MOVE_X_SCISSOR
        move MOVE_U_TURN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 74
        pokemon SPECIES_ORANGURU
        move MOVE_NASTY_PLOT
        move MOVE_POWER_GEM
        move MOVE_STORED_POWER
        move MOVE_HYPER_VOICE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 74
        pokemon SPECIES_GARGANACL
        move MOVE_HAMMER_ARM
        move MOVE_HEAVY_SLAM
        move MOVE_ROCK_SLIDE
        move MOVE_RECOVER
        ballseal 0
    endparty

trainerdata 154, "Bailey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 154
        // mon 0
        ivs 0
        abilityslot 32
        level 51
        pokemon SPECIES_RAMPARDOS
        move MOVE_CLOSE_COMBAT
        move MOVE_ROCK_SLIDE
        move MOVE_PURSUIT
        move MOVE_SUPERCELL_SLAM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 52
        pokemon SPECIES_RHYPERIOR
        move MOVE_ROCK_SLIDE
        move MOVE_MEGAHORN
        move MOVE_STOMPING_TANTRUM
        move MOVE_SUPERPOWER
        ballseal 0
    endparty

trainerdata 155, "Anthony"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 155
        // mon 0
        ivs 0
        abilityslot 0
        level 37
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 40
        pokemon SPECIES_MACHOKE
        ballseal 0
    endparty

trainerdata 156, "Yoshi"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_BLACK_BELT
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 156
        // mon 1
        ivs 200
        abilityslot 0
        level 34
        pokemon SPECIES_GOGOAT
        item ITEM_NONE
        move MOVE_HORN_LEECH
        move MOVE_CROSS_CHOP
        move MOVE_GUNK_SHOT
        move MOVE_LEECH_SEED
        ability ABILITY_SAP_SIPPER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 35
        pokemon SPECIES_ELECTIVIRE
        item ITEM_NONE
        move MOVE_SUPERCELL_SLAM
        move MOVE_DRAIN_PUNCH
        move MOVE_FIRE_PUNCH
        move MOVE_QUICK_ATTACK
        ability ABILITY_IRON_FIST
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 157, "Lao"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_BLACK_BELT
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 157
        // mon 0
        ivs 200
        abilityslot 0
        level 35
        pokemon SPECIES_GALLADE
        item ITEM_NONE
        move MOVE_NIGHT_SLASH
        move MOVE_CLOSE_COMBAT
        move MOVE_LEAF_BLADE
        move MOVE_AERIAL_ACE
        ability ABILITY_SHARPNESS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 36
        pokemon SPECIES_LUCARIO
        item ITEM_NONE
        move MOVE_AURA_SPHERE
        move MOVE_FLASH_CANNON
        move MOVE_DRAGON_PULSE
        move MOVE_WORK_UP
        ability ABILITY_INNER_FOCUS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 158, "Kiyo"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BLACK_BELT
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 158
        // mon 0
        ivs 100
        abilityslot 32
        level 34
        pokemon SPECIES_HITMONLEE
        ballseal 0

        // mon 1
        ivs 100
        abilityslot 32
        level 34
        pokemon SPECIES_HITMONCHAN
        ballseal 0
    endparty

trainerdata 159, "Lung"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_BLACK_BELT
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 159
        // mon 0
        ivs 200
        abilityslot 0
        level 36
        pokemon SPECIES_SNEASLER
        item ITEM_NONE
        move MOVE_DIRE_CLAW
        move MOVE_ROCK_SMASH
        move MOVE_ICICLE_CRASH
        move MOVE_U_TURN
        ability ABILITY_POISON_TOUCH
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 0
        ivs 200
        abilityslot 0
        level 36
        pokemon SPECIES_HITMONTOP
        item ITEM_NONE
        move MOVE_FAKE_OUT
        move MOVE_WIDE_GUARD
        move MOVE_CLOSE_COMBAT
        move MOVE_DETECT
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 0
        ivs 200
        abilityslot 0
        level 41
        pokemon SPECIES_INFERNAPE
        item ITEM_NONE
        move MOVE_INCINERATE
        move MOVE_ROCK_SMASH
        move MOVE_VACUUM_WAVE
        move MOVE_U_TURN
        ability ABILITY_POISON_TOUCH
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature ABILITY_IRON_FIST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 160, "Naoko"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_KIMONO_GIRL
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 160
        // mon 0
        ivs 150
        abilityslot 0
        level 52
        pokemon SPECIES_ESPEON
        move MOVE_CALM_MIND
        move MOVE_PSYCHIC
        move MOVE_SHADOW_BALL
        move MOVE_FOCUS_BLAST
        ballseal 0

        // mon 1
        ivs 150
        abilityslot 0
        level 52
        pokemon SPECIES_MEOWSTIC
        move MOVE_PROTECT
        move MOVE_HELPING_HAND
        move MOVE_FAKE_OUT
        move MOVE_PSYSHOCK
        ballseal 0
    endparty

trainerdata 161, "Sayo"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_KIMONO_GIRL
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 161
        // mon 0
        ivs 150
        abilityslot 0
        level 52
        pokemon SPECIES_JOLTEON
        move MOVE_LAST_RESORT
        move MOVE_THUNDERBOLT
        move MOVE_NONE
        move MOVE_THUNDER_WAVE
        ballseal 0

        // mon 1
        ivs 150
        abilityslot 0
        level 52
        pokemon SPECIES_BOLTUND
        move MOVE_THUNDER_FANG
        move MOVE_CRUNCH
        move MOVE_ICE_FANG
        move MOVE_FIRE_FANG
        ballseal 0
    endparty

trainerdata 162, "Zuki"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_KIMONO_GIRL
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 162
        // mon 0
        ivs 150
        abilityslot 0
        level 52
        pokemon SPECIES_UMBREON
        move MOVE_HELPING_HAND
        move MOVE_DARK_PULSE
        move MOVE_CONFUSE_RAY
        move MOVE_SHADOW_BALL
        ballseal 0

        // mon 1
        ivs 150
        abilityslot 0
        level 52
        pokemon SPECIES_SYLVEON
        move MOVE_MOONBLAST
        move MOVE_AURA_SPHERE
        move MOVE_SHADOW_BALL
        move MOVE_CALM_MIND
        ballseal 0
    endparty

trainerdata 163, "Kuni"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_KIMONO_GIRL
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 163
        // mon 0
        ivs 150
        abilityslot 0
        level 52
        pokemon SPECIES_VAPOREON
        ability ABILITY_WATER_ABSORB
        move MOVE_MUDDY_WATER
        move MOVE_HELPING_HAND
        move MOVE_TOXIC
        move MOVE_RECOVER
        ballseal 0

        // mon 1
        ivs 150
        abilityslot 0
        level 52
        pokemon SPECIES_GLACEON
        ability ABILITY_REFRIGERATE
        move MOVE_HYPER_VOICE
        move MOVE_FREEZE_DRY
        move MOVE_SHADOW_BALL
        move MOVE_DISCHARGE
        ballseal 0
    endparty

trainerdata 164, "Miki"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_KIMONO_GIRL
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 164
        // mon 0
        ivs 150
        abilityslot 0
        level 52
        pokemon SPECIES_FLAREON
        move MOVE_FIRE_LASH
        move MOVE_SUPERPOWER
        move MOVE_SUNNY_DAY
        move MOVE_HELPING_HAND
        ballseal 0

        // mon 1
        ivs 150
        abilityslot 0
        level 52
        pokemon SPECIES_LEAFEON
        move MOVE_SWORDS_DANCE
        move MOVE_LEAF_BLADE
        move MOVE_STOMPING_TANTRUM
        move MOVE_LEECH_SEED
        ballseal 0
    endparty

trainerdata 165, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 165
        // mon 0
        ivs 0
        abilityslot 0
        level 28
        pokemon SPECIES_JYNX
        ballseal 0
    endparty

trainerdata 166, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 166
        // mon 0
        ivs 0
        abilityslot 0
        level 29
        pokemon SPECIES_DEWGONG
        ballseal 0
    endparty

trainerdata 167, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 167
        // mon 0
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 168, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 168
        // mon 0
        ivs 0
        abilityslot 0
        level 25
        pokemon SPECIES_SEEL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 26
        pokemon SPECIES_DEWGONG
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 25
        pokemon SPECIES_SEEL
        ballseal 0
    endparty

trainerdata 169, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 169
        // mon 0
        ivs 0
        abilityslot 0
        level 27
        pokemon SPECIES_PILOSWINE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 27
        pokemon SPECIES_PILOSWINE
        ballseal 0
    endparty

trainerdata 170, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 170
        // mon 0
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_SHELLDER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 25
        pokemon SPECIES_CLOYSTER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_SHELLDER
        ballseal 0
    endparty

trainerdata 171, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 171
        // mon 0
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_HORSEA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_HORSEA
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_SEADRA
        ballseal 0
    endparty

trainerdata 172, "Brent"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKE_MANIAC
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 172
        // mon 0
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_NIDORINA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_NIDORINO
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_GYARADOS
        ballseal 0
    endparty

trainerdata 173, "Brent"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKE_MANIAC
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 173
        // mon 0
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_GYARADOS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_LICKITUNG
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_NIDORINA
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 43
        pokemon SPECIES_NIDORINO
        ballseal 0
    endparty

trainerdata 174, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 174
        // mon 0
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_KOFFING
        ballseal 0
    endparty

trainerdata 175, "Bethany"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_MEDIUM
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 175
        // mon 0
        ivs 0
        abilityslot 0
        level 25
        pokemon SPECIES_HAUNTER
        ballseal 0
    endparty

trainerdata 176, "Margaret"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_MEDIUM
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 176
        // mon 0
        ivs 0
        abilityslot 0
        level 25
        pokemon SPECIES_HAUNTER
        ballseal 0
    endparty

trainerdata 177, "Ethel"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_MEDIUM
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 177
        // mon 0
        ivs 0
        abilityslot 0
        level 25
        pokemon SPECIES_HAUNTER
        ballseal 0
    endparty

trainerdata 178, "Jack"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 178
        // mon 0
        ivs 0
        abilityslot 0
        level 23
        pokemon SPECIES_ROSELIA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 23
        pokemon SPECIES_PILOSWINE
        ballseal 0
    endparty

trainerdata 179, "Kipp"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 179
        // mon 0
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_SALAMENCE
        move MOVE_DUAL_WINGBEAT
        move MOVE_ROCK_SLIDE
        move MOVE_DRAGON_DANCE
        move MOVE_STOMPING_TANTRUM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_ELECTRODE
        move MOVE_THUNDER_WAVE
        move MOVE_LIGHT_SCREEN
        move MOVE_REFLECT
        move MOVE_ELECTRO_BALL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_WATCHOG
        move MOVE_CLOSE_COMBAT
        move MOVE_EARTHQUAKE
        move MOVE_NIGHT_SLASH
        move MOVE_PROTECT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_GENGAR
        move MOVE_PROTECT
        move MOVE_SLUDGE_BOMB
        move MOVE_SHADOW_BALL
        move MOVE_DARK_PULSE
        ballseal 0
    endparty

trainerdata 180, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 180
        // mon 0
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 181, "William"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKEFAN_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 181
        // mon 0
        ivs 0
        abilityslot 0
        level 23
        pokemon SPECIES_SWIRLIX
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 23
        pokemon SPECIES_SNUBBULL
        ballseal 0
    endparty

trainerdata 182, "Beverly"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKEFAN_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 182
        // mon 0
        ivs 0
        abilityslot 0
        level 22
        pokemon SPECIES_SKIPLOOM
        item ITEM_SITRUS_BERRY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 23
        pokemon SPECIES_MARILL
        item ITEM_SITRUS_BERRY
        ballseal 0
    endparty

trainerdata 183, "Alice"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LASS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 183
        // mon 0
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_GRAFAIAI
        item ITEM_SITRUS_BERRY
        move MOVE_GUNK_SHOT
        move MOVE_KNOCK_OFF
        move MOVE_TAUNT
        move MOVE_PROTECT
        ability ABILITY_UNBURDEN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_VILEPLUME
        item ITEM_BLACK_SLUDGE
        move MOVE_GIGA_DRAIN
        move MOVE_SLUDGE_BOMB
        move MOVE_MOONBLAST
        move MOVE_TOXIC
        ability ABILITY_EFFECT_SPORE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_BEEDRILL
        item ITEM_FOCUS_SASH
        move MOVE_GUNK_SHOT
        move MOVE_KNOCK_OFF
        move MOVE_TAUNT
        move MOVE_PROTECT
        ability ABILITY_UNBURDEN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_TOXAPEX
        item ITEM_LUM_BERRY
        move MOVE_TOXIC
        move MOVE_RECOVER
        move MOVE_SURF
        move MOVE_POISON_JAB
        ability ABILITY_REGENERATOR
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_RELAXED
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 184, "Krise"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_LASS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 184
        // mon 0
        ivs 0
        abilityslot 0
        level 23
        pokemon SPECIES_FLOETTE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 23
        pokemon SPECIES_SNORUNT
        ballseal 0
    endparty

trainerdata 185, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 185
        // mon 0
        ivs 30
        abilityslot 32
        level 39
        pokemon SPECIES_LEAFEON
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 32
        level 39
        pokemon SPECIES_DRAKLOAK
        ballseal 0
    endparty

trainerdata 186, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 186
        // mon 0
        ivs 30
        abilityslot 0
        level 45
        pokemon SPECIES_LANTURN
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 45
        pokemon SPECIES_GRANBULL
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 0
        level 45
        pokemon SPECIES_LEDIAN
        ballseal 0
    endparty

trainerdata 187, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 187
        // mon 0
        ivs 30
        abilityslot 32
        level 40
        pokemon SPECIES_WOBBUFFET
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 32
        level 40
        pokemon SPECIES_FURRET
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 32
        level 40
        pokemon SPECIES_SUDOWOODO
        ballseal 0

        // mon 4
        ivs 30
        abilityslot 32
        level 40
        pokemon SPECIES_DONPHAN
        ballseal 0
    endparty

trainerdata 188, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 188
        // mon 0
        ivs 30
        abilityslot 0
        level 45
        pokemon SPECIES_MILTANK
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 45
        pokemon SPECIES_HERACROSS
        ballseal 0
    endparty

trainerdata 189, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 189
        // mon 0
        ivs 30
        abilityslot 0
        level 41
        pokemon SPECIES_MAGCARGO
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 40
        pokemon SPECIES_JUMPLUFF
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 0
        level 41
        pokemon SPECIES_SUNFLORA
        ballseal 0

        // mon 3
        ivs 30
        abilityslot 32
        level 41
        pokemon SPECIES_SLOWKING
        ballseal 0
    endparty

trainerdata 190, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 190
        // mon 0
        ivs 30
        abilityslot 0
        level 41
        pokemon SPECIES_MOTHIM
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 42
        pokemon SPECIES_FLORGES
        ballseal 0
    endparty

trainerdata 191, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 191
        // mon 0
        ivs 30
        abilityslot 32
        level 44
        pokemon SPECIES_BELLOSSOM
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 43
        pokemon SPECIES_FURRET
        ballseal 0
    endparty

trainerdata 192, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 192
        // mon 0
        ivs 30
        abilityslot 0
        level 41
        pokemon SPECIES_RUNERIGUS
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 42
        pokemon SPECIES_FALINKS
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 0
        level 41
        pokemon SPECIES_KLEAVOR
        ballseal 0
    endparty

trainerdata 193, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 193
        // mon 0
        ivs 30
        abilityslot 0
        level 41
        pokemon SPECIES_SKARMORY
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 40
        pokemon SPECIES_KINGDRA
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 32
        level 40
        pokemon SPECIES_RAMPARDOS
        ballseal 0
    endparty

trainerdata 194, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 194
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_HOUNDOUR
        ballseal 0
    endparty

trainerdata 195, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 195
        // mon 0
        ivs 30
        abilityslot 32
        level 42
        pokemon SPECIES_COPPERAJAH
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 32
        level 42
        pokemon SPECIES_THIEVUL
        ballseal 0
    endparty

trainerdata 196, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 196
        // mon 0
        ivs 30
        abilityslot 32
        level 42
        monwithform SPECIES_RATICATE, 1
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 43
        pokemon SPECIES_GREEDENT
        ballseal 0
    endparty

trainerdata 197, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 197
        // mon 0
        ivs 30
        abilityslot 0
        level 43
        pokemon SPECIES_DUBWOOL
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 43
        pokemon SPECIES_CURSOLA
        ballseal 0
    endparty

trainerdata 198, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 198
        // mon 0
        ivs 30
        abilityslot 0
        level 39
        pokemon SPECIES_UMBREON
        ballseal 0

        // mon 0
        ivs 30
        abilityslot 0
        level 40
        pokemon SPECIES_CROBAT
        ballseal 0
    endparty

trainerdata 199, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 199
        // mon 0
        ivs 30
        abilityslot 0
        level 42
        pokemon SPECIES_PANGORO
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 42
        pokemon SPECIES_TREVENANT
        ballseal 0
    endparty

trainerdata 200, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET_1
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 200
        // mon 0
        ivs 30
        abilityslot 0
        level 42
        pokemon SPECIES_NOIVERN
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 41
        pokemon SPECIES_KLEFKI
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 32
        level 42
        pokemon SPECIES_SLURPUFF
        ballseal 0

        // mon 3
        ivs 30
        abilityslot 0
        level 41
        pokemon SPECIES_MEOWSTIC
        ballseal 0
    endparty

trainerdata 201, "Andrew" // TODO
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKE_MANIAC
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 201
        // mon 0
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_MAROWAK
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_MAROWAK
        ballseal 0
    endparty

trainerdata 202, "Calvin" // TODO
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKE_MANIAC
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 202
        // mon 0
        ivs 0
        abilityslot 32
        level 26
        pokemon SPECIES_KANGASKHAN
        ballseal 0
    endparty

trainerdata 203, "Phillip" // TODO
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 203
        // mon 0
        ivs 0
        abilityslot 32
        level 23
        pokemon SPECIES_GEODUDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 25
        pokemon SPECIES_GRAVELER
        ballseal 0
    endparty

trainerdata 204, "Leonard" // TODO
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 204
        // mon 0
        ivs 0
        abilityslot 32
        level 23
        pokemon SPECIES_GEODUDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 25
        pokemon SPECIES_MACHOP
        ballseal 0
    endparty

trainerdata 205, "Nick" // TODO
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 205
        // mon 0
        ivs 50
        abilityslot 0
        level 26
        pokemon SPECIES_CHARMANDER
        move MOVE_FIRE_FANG
        move MOVE_SMOKESCREEN
        move MOVE_DRAGON_RAGE
        move MOVE_SCARY_FACE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 26
        pokemon SPECIES_SQUIRTLE
        move MOVE_WITHDRAW
        move MOVE_WATER_GUN
        move MOVE_BITE
        move MOVE_CURSE
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 26
        pokemon SPECIES_BULBASAUR
        move MOVE_LEECH_SEED
        move MOVE_POISON_POWDER
        move MOVE_SLEEP_POWDER
        move MOVE_RAZOR_LEAF
        ballseal 0
    endparty

trainerdata 206, "Gwen" // TODO
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_ACE_TRAINER_F
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 206
        // mon 0
        ivs 50
        abilityslot 32
        level 26
        pokemon SPECIES_EEVEE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 22
        pokemon SPECIES_FLAREON
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 22
        pokemon SPECIES_VAPOREON
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 0
        level 22
        pokemon SPECIES_JOLTEON
        ballseal 0
    endparty

trainerdata 207, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 207
        // mon 0
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 208, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 208
        // mon 0
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_FURRET
        ballseal 0
    endparty

trainerdata 209, "Cassie"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BEAUTY
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 209
        // mon 0
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_VILEPLUME
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 42
        pokemon SPECIES_BUTTERFREE
        ballseal 0
    endparty

trainerdata 210, "Caroline"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BEAUTY
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 210
        // mon 0
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_MARILL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_SEEL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 2
        level 38
        pokemon SPECIES_MARILL
        ballseal 0
    endparty

trainerdata 211, "Huey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SAILOR
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 211
        // mon 0
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_POLIWAG
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_POLIWHIRL
        ballseal 0
    endparty

trainerdata 212, "Terrell"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SAILOR
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 212
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_LANTURN
        move MOVE_SCALD
        move MOVE_TOXIC
        move MOVE_HEAL_BELL
        move MOVE_THUNDERBOLT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_QUAGSIRE
        move MOVE_EARTHQUAKE
        move MOVE_YAWN
        move MOVE_AQUA_TAIL
        move MOVE_AMNESIA
        ballseal 0
    endparty

trainerdata 213, "Kent"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SAILOR
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 213
        // mon 0
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_CLAWITZER
        move MOVE_WATER_PULSE
        move MOVE_AURA_SPHERE
        move MOVE_HEAL_PULSE
        move MOVE_HONE_CLAWS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 32
        pokemon SPECIES_EMPOLEON
        move MOVE_SURF
        move MOVE_FLASH_CANNON
        move MOVE_PROTECT
        move MOVE_TOXIC
        ballseal 0
    endparty

trainerdata 214, "Roberto"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SAILOR
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 214
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_HITMONTOP
        move MOVE_HIGH_JUMP_KICK
        move MOVE_MACH_PUNCH
        move MOVE_HELPING_HAND
        move MOVE_FAKE_OUT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 33
        pokemon SPECIES_HERACROSS
        move MOVE_ROCK_BLAST
        move MOVE_BULLET_SEED
        move MOVE_BRICK_BREAK
        move MOVE_BUG_BITE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_GRAPPLOCT
        move MOVE_DRAIN_PUNCH
        move MOVE_LIQUIDATION
        move MOVE_DETECT
        move MOVE_BULK_UP
        ballseal 0
    endparty

trainerdata 215, "Connie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LASS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 215
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_AZUMARILL
        move MOVE_AQUA_JET
        move MOVE_AQUA_TAIL
        move MOVE_PROTECT
        move MOVE_PLAY_ROUGH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_DEDENNE
        move MOVE_DISARMING_VOICE
        move MOVE_THUNDER_WAVE
        move MOVE_MOONBLAST
        move MOVE_SUPER_FANG
        ballseal 0
    endparty

trainerdata 216, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 216
        // mon 0
        ivs 30
        abilityslot 32
        level 35
        pokemon SPECIES_DRAGALGE
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 32
        level 35
        pokemon SPECIES_HAWLUCHA
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 32
        level 35
        pokemon SPECIES_AVALUGG
        ballseal 0

        // mon 3
        ivs 30
        abilityslot 32
        level 35
        pokemon SPECIES_OBSTAGOON
        ballseal 0
    endparty

trainerdata 217, "Denis"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 217
        // mon 0
        ivs 50
        abilityslot 0
        level 32
        pokemon SPECIES_DELIBIRD
        move MOVE_AIR_SLASH
        move MOVE_WATER_PULSE
        move MOVE_ICY_WIND
        move MOVE_ROOST
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 32
        pokemon SPECIES_SKARMORY
        move MOVE_DRILL_PECK
        move MOVE_SPIKES
        move MOVE_ROOST
        move MOVE_STEEL_WING
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 32
        pokemon SPECIES_HONCHKROW
        move MOVE_DRILL_PECK
        move MOVE_NIGHT_SLASH
        move MOVE_ROOST
        move MOVE_SUCKER_PUNCH
        ballseal 0
    endparty

trainerdata 218, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 218
        // mon 0
        ivs 30
        abilityslot 0
        level 37
        pokemon SPECIES_STONJOURNER
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 36
        pokemon SPECIES_KLEAVOR
        ballseal 0
    endparty

trainerdata 219, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 219
        // mon 0
        ivs 30
        abilityslot 32
        level 36
        pokemon SPECIES_SNEASLER
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 36
        pokemon SPECIES_AROMATISSE
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 32
        level 36
        pokemon SPECIES_GOGOAT
        ballseal 0
    endparty

trainerdata 220, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 220
        // mon 0
        ivs 30
        abilityslot 0
        level 36
        pokemon SPECIES_FLAPPLE
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 32
        level 36
        pokemon SPECIES_APPLETUN
        ballseal 0
    endparty

trainerdata 221, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 221
        // mon 0
        ivs 100
        abilityslot 0
        level 22
        pokemon SPECIES_ZUBAT
        ballseal 0
    endparty

trainerdata 222, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 222
        // mon 0
        ivs 30
        abilityslot 32
        level 38
        pokemon SPECIES_DRACOZOLT
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 32
        level 38
        pokemon SPECIES_ARCTOZOLT
        ballseal 0
    endparty

trainerdata 223, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 223
        // mon 0
        ivs 30
        abilityslot 0
        level 39
        pokemon SPECIES_PINCURCHIN
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 38
        pokemon SPECIES_LANTURN
        ballseal 0
    endparty

trainerdata 224, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 224
        // mon 0
        ivs 30
        abilityslot 0
        level 38
        pokemon SPECIES_ARIADOS
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 38
        pokemon SPECIES_CROBAT
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 32
        level 38
        pokemon SPECIES_QWILFISH
        ballseal 0
    endparty

trainerdata 225, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 225
        // mon 0
        ivs 10
        abilityslot 0
        level 36
        pokemon SPECIES_GOLBAT
        ballseal 0
    endparty

trainerdata 226, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 226
        // mon 0
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_KOFFING
        ballseal 0
    endparty

trainerdata 227, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 227
        // mon 0
        ivs 30
        abilityslot 0
        level 43
        pokemon SPECIES_ALCREMIE
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 42
        pokemon SPECIES_BRONZONG
        ballseal 0
    endparty

trainerdata 228, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 228
        // mon 0
        ivs 30
        abilityslot 0
        level 41
        pokemon SPECIES_ROSERADE
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 41
        pokemon SPECIES_VESPIQUEN
        ballseal 0
    endparty

trainerdata 229, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 229
        // mon 0
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_RATTATA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_RATTATA
        ballseal 0
    endparty

trainerdata 230, "Franklin"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_PSYCHIC_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 230
        // mon 0
        ivs 255
        abilityslot 0
        level 66
        pokemon SPECIES_ESPATHRA
        item ITEM_LEFTOVERS
        move MOVE_PROTECT
        move MOVE_STORED_POWER
        move MOVE_DAZZLING_GLEAM
        move MOVE_AIR_SLASH
        ability ABILITY_SPEED_BOOST
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 66
        pokemon SPECIES_PERSIAN
        item ITEM_SILK_SCARF
        move MOVE_FAKE_OUT
        move MOVE_DOUBLE_EDGE
        move MOVE_CRUNCH
        move MOVE_PLAY_ROUGH
        ability ABILITY_FUR_COAT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 65
        pokemon SPECIES_HYPNO
        item ITEM_SITRUS_BERRY
        move MOVE_HYPNOSIS
        move MOVE_DRAIN_PUNCH
        move MOVE_ZEN_HEADBUTT
        move MOVE_BULK_UP
        ability ABILITY_BAD_DREAMS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 231, "Edward"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_GENTLEMAN
    nummons 1
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 231
        // mon 0
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_PERSIAN
        ballseal 0
    endparty

trainerdata 232, "Vincent"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_GUITARIST
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 232
        // mon 0
        ivs 255
        abilityslot 0
        level 63
        monwithform SPECIES_ORICORIO, 1
        item ITEM_LIFE_ORB
        move MOVE_AURA_SPHERE
        move MOVE_HURRICANE
        move MOVE_ROOST
        move MOVE_HELPING_HAND
        ability ABILITY_PLUS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 63
        pokemon SPECIES_STUNFISK
        item ITEM_SITRUS_BERRY
        move MOVE_MUDDY_WATER
        move MOVE_THUNDERBOLT
        move MOVE_PROTECT
        move MOVE_FISSURE
        ability ABILITY_STATIC
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 62
        pokemon SPECIES_GALVANTULA
        item ITEM_FOCUS_SASH
        move MOVE_ELECTROWEB
        move MOVE_BUG_BUZZ
        move MOVE_SLUDGE_BOMB
        move MOVE_THUNDER
        ability ABILITY_COMPOUND_EYES
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 233, "Eric"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SUPER_NERD
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 233
        // mon 0
        ivs 0
        abilityslot 0
        level 19
        pokemon SPECIES_SKORUPI
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_ROTOM
        ballseal 0
    endparty

trainerdata 234, "Eoin"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_HIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 234
        // mon 0
        ivs 0
        abilityslot 32
        level 65
        monwithform SPECIES_LYCANROC, 1
        move MOVE_SUCKER_PUNCH
        move MOVE_ACCELEROCK
        move MOVE_THUNDER_FANG
        move MOVE_FIRE_FANG
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 66
        pokemon SPECIES_GARGANACL
        move MOVE_HAMMER_ARM
        move MOVE_STEALTH_ROCK
        move MOVE_ROCK_SLIDE
        move MOVE_RECOVER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 65
        monwithform SPECIES_ARCANINE, 1
        move MOVE_EXTREME_SPEED
        move MOVE_FLARE_BLITZ
        move MOVE_ROCK_SLIDE
        move MOVE_HELPING_HAND
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 66
        pokemon SPECIES_SAMUROTT
        move MOVE_AQUA_JET
        move MOVE_MEGAHORN
        move MOVE_SUPERPOWER
        move MOVE_FLIP_TURN
        ballseal 0
    endparty

trainerdata 235, "Noland"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 235
        // mon 0
        ivs 0
        abilityslot 0
        level 60
        pokemon SPECIES_LYCANROC
        move MOVE_ACCELEROCK
        move MOVE_ROCK_SLIDE
        move MOVE_FIRE_FANG
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 60
        pokemon SPECIES_MINIOR
        move MOVE_SHELL_SMASH
        move MOVE_ACROBATICS
        move MOVE_HIGH_HORSEPOWER
        move MOVE_ROCK_SLIDE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 60
        pokemon SPECIES_TURTONATOR
        move MOVE_FLAMETHROWER
        move MOVE_IRON_DEFENSE
        move MOVE_BODY_PRESS
        move MOVE_DRAGON_PULSE
        ballseal 0
    endparty

trainerdata 236, "Shaye"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 236
        // mon 0
        ivs 50
        abilityslot 0
        level 43
        pokemon SPECIES_JOLTEON
        move MOVE_DOUBLE_KICK
        move MOVE_THUNDERBOLT
        move MOVE_QUICK_ATTACK
        move MOVE_SAND_ATTACK
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 43
        pokemon SPECIES_TANGELA
        move MOVE_ANCIENT_POWER
        move MOVE_STUN_SPORE
        move MOVE_GIGA_DRAIN
        move MOVE_INGRAIN
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 43
        pokemon SPECIES_TAUROS
        move MOVE_TAKE_DOWN
        move MOVE_ZEN_HEADBUTT
        move MOVE_PAYBACK
        move MOVE_SCARY_FACE
        ballseal 0
    endparty

trainerdata 237, "Carol"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 237
        // mon 0
        ivs 50
        abilityslot 32
        level 43
        pokemon SPECIES_ELECTRODE
        move MOVE_THUNDER
        move MOVE_SELF_DESTRUCT
        move MOVE_SWIFT
        move MOVE_RAIN_DANCE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 43
        pokemon SPECIES_STARMIE
        move MOVE_RECOVER
        move MOVE_BRINE
        move MOVE_THUNDER
        move MOVE_PSYCHIC
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 43
        pokemon SPECIES_NINETALES
        move MOVE_NASTY_PLOT
        move MOVE_FIRE_BLAST
        move MOVE_CONFUSE_RAY
        move MOVE_WILL_O_WISP
        ballseal 0
    endparty

trainerdata 238, "Stanly"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SAILOR
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 238
        // mon 0
        ivs 0
        abilityslot 32
        level 60
        pokemon SPECIES_DONDOZO
        move MOVE_WAVE_CRASH
        move MOVE_REST
        move MOVE_SLEEP_TALK
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 60
        pokemon SPECIES_TATSUGIRI
        move MOVE_MUDDY_WATER
        move MOVE_NASTY_PLOT
        move MOVE_DRAGON_PULSE
        move MOVE_HYDRO_PUMP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 60
        pokemon SPECIES_BRELOOM
        move MOVE_MACH_PUNCH
        move MOVE_SPORE
        move MOVE_PROTECT
        move MOVE_SEED_BOMB
        ballseal 0
    endparty

trainerdata 239, "Jeff"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SAILOR
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 239
        // mon 0
        ivs 0
        abilityslot 0
        level 62
        pokemon SPECIES_SEAKING
        move MOVE_MEGAHORN
        move MOVE_DOUBLE_EDGE
        move MOVE_WAVE_CRASH
        move MOVE_SUPERSONIC
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 62
        pokemon SPECIES_SWAMPERT
        move MOVE_HAMMER_ARM
        move MOVE_EARTHQUAKE
        move MOVE_MUDDY_WATER
        move MOVE_ROCK_SLIDE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 62
        pokemon SPECIES_QUAQUAVAL
        move MOVE_WAVE_CRASH
        move MOVE_CLOSE_COMBAT
        move MOVE_ACROBATICS
        move MOVE_AQUA_JET
        ballseal 0
    endparty

trainerdata 240, "Garrett"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SAILOR
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 240
        // mon 0
        ivs 0
        abilityslot 0
        level 42
        pokemon SPECIES_KINGLER
        ballseal 0
    endparty

trainerdata 241, "Kenneth"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SAILOR
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 241
        // mon 0
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_MACHOP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_MACHOP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_POLIWRATH
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_MACHOP
        ballseal 0
    endparty

trainerdata 242, "Fritz"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_JUGGLER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 242
        // mon 0
        ivs 0
        abilityslot 32
        level 61
        pokemon SPECIES_MR_MIME
        move MOVE_SUBSTITUTE
        move MOVE_PSYCHIC
        move MOVE_ENCORE
        move MOVE_DAZZLING_GLEAM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 60
        pokemon SPECIES_ELECTRODE
        move MOVE_THUNDER_WAVE
        move MOVE_LIGHT_SCREEN
        move MOVE_REFLECT
        move MOVE_ELECTRO_BALL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 61
        monwithform SPECIES_ELECTRODE, 1
        move MOVE_GIGA_DRAIN
        move MOVE_ELECTRO_BALL
        move MOVE_GRASSY_TERRAIN
        move MOVE_STUN_SPORE
        ballseal 0
    endparty

trainerdata 243, "Katie"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 243
        // mon 0
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_DEWGONG
        ballseal 0
    endparty

trainerdata 244, "Lance"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_CHAMPION
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 244
        // mon 0
        ivs 255
        abilityslot 0
        level 60
        pokemon SPECIES_CHARIZARD
        item ITEM_SITRUS_BERRY
        move MOVE_HEAT_WAVE
        move MOVE_HURRICANE
        move MOVE_PROTECT
        move MOVE_SWORDS_DANCE
        ability ABILITY_SOLAR_POWER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 60
        pokemon SPECIES_TORKOAL
        item ITEM_HEAT_ROCK
        move MOVE_STEALTH_ROCK
        move MOVE_SCALD
        move MOVE_LAVA_PLUME
        move MOVE_SUNNY_DAY
        ability ABILITY_DROUGHT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CALM
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 60
        pokemon SPECIES_DRUDDIGON
        item ITEM_ROCKY_HELMET
        move MOVE_FIRE_PUNCH
        move MOVE_OUTRAGE
        move MOVE_CLOSE_COMBAT
        move MOVE_THUNDER_PUNCH
        ability ABILITY_ROUGH_SKIN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_IMPISH
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 0
        level 60
        monwithform SPECIES_EXEGGUTOR, 1
        item ITEM_SITRUS_BERRY
        move MOVE_PROTECT
        move MOVE_DRACO_METEOR
        move MOVE_LEAF_STORM
        move MOVE_SLUDGE_BOMB
        ability ABILITY_HARVEST
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 0
        level 60
        pokemon SPECIES_GYARADOS
        item ITEM_MYSTIC_WATER
        move MOVE_WAVE_CRASH
        move MOVE_ICE_FANG
        move MOVE_DRAGON_RUSH
        move MOVE_DRAGON_DANCE
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 0
        level 63
        pokemon SPECIES_DRAGONITE
        item ITEM_CHOICE_BAND
        move MOVE_EXTREME_SPEED
        move MOVE_STOMPING_TANTRUM
        move MOVE_OUTRAGE
        move MOVE_AERIAL_ACE
        ability ABILITY_INNER_FOCUS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 245, "Will"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_ELITE_FOUR_0
    nummons 5
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 245
        // mon 0
        ivs 255
        abilityslot 0
        level 58
        pokemon SPECIES_MALAMAR
        item ITEM_LIGHT_CLAY
        move MOVE_REFLECT
        move MOVE_LIGHT_SCREEN
        move MOVE_KNOCK_OFF
        move MOVE_HYPNOSIS
        ability ABILITY_SUCTION_CUPS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 58
        monwithform SPECIES_RAPIDASH, 1
        item ITEM_LUM_BERRY
        move MOVE_PSYCHO_CUT
        move MOVE_MEGAHORN
        move MOVE_HEALING_WISH
        move MOVE_PROTECT
        ability ABILITY_MOLD_BREAKER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 58
        pokemon SPECIES_FARIGIRAF
        item ITEM_SITRUS_BERRY
        move MOVE_PSYCHIC
        move MOVE_DAZZLING_GLEAM
        move MOVE_PROTECT
        move MOVE_HELPING_HAND
        ability ABILITY_ARMOR_TAIL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 0
        level 58
        pokemon SPECIES_VELUZA
        item ITEM_LIFE_ORB
        move MOVE_NIGHT_SLASH
        move MOVE_PSYCHO_CUT
        move MOVE_WAVE_CRASH
        move MOVE_FLIP_TURN
        ability ABILITY_SHARPNESS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 0
        level 60
        pokemon SPECIES_XATU
        item ITEM_LEFTOVERS
        move MOVE_STORED_POWER
        move MOVE_CALM_MIND
        move MOVE_ROOST
        move MOVE_FOCUS_BLAST
        ability ABILITY_MAGIC_BOUNCE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CALM
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 246, "Karen"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_ELITE_FOUR_1
    nummons 5
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 246
        // mon 0
        ivs 255
        abilityslot 0
        level 58
        pokemon SPECIES_UMBREON
        item ITEM_LEFTOVERS
        move MOVE_HELPING_HAND
        move MOVE_MOONLIGHT
        move MOVE_DARK_PULSE
        move MOVE_BATON_PASS
        ability ABILITY_OVERCOAT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CALM
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 58
        pokemon SPECIES_HONCHKROW
        item ITEM_LIFE_ORB
        move MOVE_SUCKER_PUNCH
        move MOVE_BRAVE_BIRD
        move MOVE_SUPERPOWER
        move MOVE_PROTECT
        ability ABILITY_MOXIE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 58
        pokemon SPECIES_INCINEROAR
        item ITEM_SITRUS_BERRY
        move MOVE_FAKE_OUT
        move MOVE_FLARE_BLITZ
        move MOVE_PARTING_SHOT
        move MOVE_KNOCK_OFF
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 0
        level 58
        pokemon SPECIES_MABOSSTIFF
        item ITEM_LUM_BERRY
        move MOVE_DESTINY_BOND
        move MOVE_CRUNCH
        move MOVE_PLAY_ROUGH
        move MOVE_PROTECT
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 0
        level 60
        pokemon SPECIES_KINGAMBIT
        item ITEM_BLACK_GLASSES
        move MOVE_SUCKER_PUNCH
        move MOVE_IRON_HEAD
        move MOVE_PROTECT
        move MOVE_SWORDS_DANCE
        ability ABILITY_DEFIANT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 247, "Koga"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_ELITE_FOUR_2
    nummons 5
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 247
        // mon 0
        ivs 255
        abilityslot 0
        level 58
        pokemon SPECIES_GLIMMORA
        item ITEM_FOCUS_SASH
        move MOVE_TOXIC_SPIKES
        move MOVE_STEALTH_ROCK
        move MOVE_SLUDGE_WAVE
        move MOVE_POWER_GEM
        ability ABILITY_CORROSION
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 58
        pokemon SPECIES_SEVIPER
        item ITEM_LIFE_ORB
        move MOVE_CRUNCH
        move MOVE_GUNK_SHOT
        move MOVE_COIL
        move MOVE_FIRE_FANG
        ability ABILITY_SHED_SKIN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
        
        // mon 2
        ivs 255
        abilityslot 0
        level 58
        pokemon SPECIES_SCOLIPEDE
        item ITEM_LEFTOVERS
        move MOVE_PROTECT
        move MOVE_BATON_PASS
        move MOVE_MEGAHORN
        move MOVE_GUNK_SHOT
        ability ABILITY_SPEED_BOOST
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 0
        level 58
        pokemon SPECIES_ZANGOOSE
        item ITEM_TOXIC_ORB
        move MOVE_GUNK_SHOT
        move MOVE_CLOSE_COMBAT
        move MOVE_QUICK_ATTACK
        move MOVE_TAUNT
        ability ABILITY_TOXIC_BOOST
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 0
        level 60
        pokemon SPECIES_CROBAT
        item ITEM_BLACK_SLUDGE
        move MOVE_SWORDS_DANCE
        move MOVE_LEECH_LIFE
        move MOVE_BRAVE_BIRD
        move MOVE_POISON_JAB
        ability ABILITY_INFILTRATOR
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 248, "Ed"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass CLASS_BUG_CATCHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 248
        // mon 0
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_CRUSTLE
        item ITEM_WHITE_HERB
        move MOVE_SHELL_SMASH
        move MOVE_LEECH_LIFE
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_ARMALDO
        item ITEM_LIFE_ORB
        move MOVE_PROTECT
        move MOVE_ROCK_SLIDE
        move MOVE_LEECH_LIFE
        move MOVE_LIQUIDATION
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_SHEDINJA
        item ITEM_FOCUS_SASH
        move MOVE_PHANTOM_FORCE
        move MOVE_SWORDS_DANCE
        move MOVE_SHADOW_SNEAK
        move MOVE_X_SCISSOR
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_BEEDRILL
        move MOVE_GUNK_SHOT
        move MOVE_FELL_STINGER
        move MOVE_DRILL_RUN
        move MOVE_U_TURN
        ballseal 0
    endparty

trainerdata 249, "Don"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 249
        // mon 0
        ivs 0
        abilityslot 0
        level 4
        pokemon SPECIES_SKORUPI
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 5
        pokemon SPECIES_WURMPLE
        ballseal 0
    endparty

trainerdata 250, "Kenji"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BLACK_BELT
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 250
        // mon 0
        ivs 30
        abilityslot 0
        level 51
        pokemon SPECIES_SIRFETCHD
        move MOVE_BRUTAL_SWING
        move MOVE_ROCK_SMASH
        move MOVE_LEAF_BLADE
        move MOVE_BRAVE_BIRD
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 51
        pokemon SPECIES_COPPERAJAH
        move MOVE_FIRE_FANG
        move MOVE_SUPERPOWER
        move MOVE_THUNDER_FANG
        move MOVE_ICE_FANG
        ballseal 0
    endparty

trainerdata 251, "Nob"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_BLACK_BELT
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 251
        // mon 0
        ivs 200
        abilityslot 0
        level 35
        pokemon SPECIES_SIRFETCHD
        item ITEM_NONE
        move MOVE_BRUTAL_SWING
        move MOVE_FIRST_IMPRESSION
        move MOVE_BRICK_BREAK
        move MOVE_DETECT
        ability ABILITY_STEADFAST
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 35
        pokemon SPECIES_FALINKS
        item ITEM_NONE
        move MOVE_BULK_UP
        move MOVE_HIGH_HORSEPOWER
        move MOVE_ROCK_SMASH
        move MOVE_FIRST_IMPRESSION
        ability ABILITY_DEFIANT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 252, "Harold"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 252
        // mon 0
        ivs 0
        abilityslot 0
        level 76
        pokemon SPECIES_HUNTAIL
        move MOVE_COIL
        move MOVE_CRUNCH
        move MOVE_AQUA_TAIL
        move MOVE_ICE_FANG
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 76
        pokemon SPECIES_PALAFIN
        move MOVE_PROTECT
        move MOVE_ICE_PUNCH
        move MOVE_ACROBATICS
        move MOVE_JET_PUNCH
        ballseal 0
    endparty

trainerdata 253, "Brock"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_5
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 253
        // mon 0
        ivs 200
        abilityslot 0
        level 74
        pokemon SPECIES_GOLEM
        item ITEM_ROCKY_HELMET
        move MOVE_HAMMER_ARM
        move MOVE_PROTECT
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        ability ABILITY_FILTER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_GIGALITH
        item ITEM_SMOOTH_ROCK
        move MOVE_PROTECT
        move MOVE_STOMPING_TANTRUM
        move MOVE_ROCK_SLIDE
        move MOVE_SANDSTORM
        ability ABILITY_SAND_STREAM
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_IMPISH
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 73
        monwithform SPECIES_LYCANROC, 2
        item ITEM_FOCUS_SASH
        move MOVE_ACCELEROCK
        move MOVE_PROTECT
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        ability ABILITY_TOUGH_CLAWS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_STEELIX
        item ITEM_LEFTOVERS
        move MOVE_PROTECT
        move MOVE_HEADLONG_RUSH
        move MOVE_WILD_CHARGE
        move MOVE_BODY_PRESS
        ability ABILITY_ROCK_HEAD
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_MINIOR
        item ITEM_WHITE_HERB
        move MOVE_SHELL_SMASH
        move MOVE_ACROBATICS
        move MOVE_HIGH_HORSEPOWER
        move MOVE_ROCK_SLIDE
        ability ABILITY_SHIELDS_DOWN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 73
        monwithform SPECIES_ARCANINE, 1
        item ITEM_LIFE_ORB
        move MOVE_EXTREME_SPEED
        move MOVE_FLARE_BLITZ
        move MOVE_ROCK_SLIDE
        move MOVE_PROTECT
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 254, "Misty"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LEADER_6
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 254
        // mon 0
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_PELIPPER
        item ITEM_DAMP_ROCK
        move MOVE_PROTECT
        move MOVE_ROOST
        move MOVE_HYDRO_PUMP
        move MOVE_FLIP_TURN
        ability ABILITY_DRIZZLE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_LUDICOLO
        item ITEM_SITRUS_BERRY
        move MOVE_GIGA_DRAIN
        move MOVE_HYDRO_PUMP
        move MOVE_ICE_BEAM
        move MOVE_SURF
        ability ABILITY_SWIFT_SWIM
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_CRAWDAUNT
        item ITEM_FOCUS_SASH
        move MOVE_KNOCK_OFF
        move MOVE_RAZOR_SHELL
        move MOVE_CLOSE_COMBAT
        move MOVE_ENDEAVOR
        ability ABILITY_ADAPTABILITY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_ARMALDO
        item ITEM_LUM_BERRY
        move MOVE_SWORDS_DANCE
        move MOVE_HIGH_HORSEPOWER
        move MOVE_X_SCISSOR
        move MOVE_LIQUIDATION
        ability ABILITY_SWIFT_SWIM
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 70
        monwithform SPECIES_SAMUROTT, 1
        item ITEM_MYSTIC_WATER
        move MOVE_SUCKER_PUNCH
        move MOVE_FLIP_TURN
        move MOVE_CEASELESS_EDGE
        move MOVE_RAZOR_SHELL
        ability ABILITY_SHARPNESS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_STARMIE
        item ITEM_LIFE_ORB
        move MOVE_WATER_PULSE
        move MOVE_RECOVER
        move MOVE_PSYCHIC
        move MOVE_POWER_GEM
        ability ABILITY_NATURAL_CURE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 255, "Lt. Surge"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LEADER_7
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 255
        // mon 0
        ivs 255
        abilityslot 0
        level 65
        pokemon SPECIES_RAICHU
        item ITEM_MAGNET
        move MOVE_NASTY_PLOT
        move MOVE_THUNDERBOLT
        move MOVE_SURF
        move MOVE_FOCUS_BLAST
        ability ABILITY_COMPETITIVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 64
        monwithform SPECIES_ROTOM, 2
        item ITEM_LEFTOVERS
        move MOVE_THUNDERBOLT
        move MOVE_PAIN_SPLIT
        move MOVE_WILL_O_WISP
        move MOVE_HYDRO_PUMP
        ability ABILITY_LEVITATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 64
        pokemon SPECIES_ZEBSTRIKA
        item ITEM_SITRUS_BERRY
        move MOVE_WILD_CHARGE
        move MOVE_FLARE_BLITZ
        move MOVE_STOMP
        move MOVE_FLAME_CHARGE
        ability ABILITY_SAP_SIPPER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 0
        level 63
        pokemon SPECIES_EELEKTROSS
        item ITEM_LUM_BERRY
        move MOVE_CLOSE_COMBAT
        move MOVE_WILD_CHARGE
        move MOVE_ZEN_HEADBUTT
        move MOVE_LEECH_LIFE
        ability ABILITY_LEVITATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 0
        level 64
        pokemon SPECIES_KILOWATTREL
        item ITEM_LIFE_ORB
        move MOVE_ELECTRO_BALL
        move MOVE_HURRICANE
        move MOVE_ROOST
        move MOVE_TAILWIND
        ability ABILITY_WIND_POWER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 0
        level 64
        monwithform SPECIES_GOLEM, 1
        item ITEM_FOCUS_SASH
        move MOVE_HEAVY_SLAM
        move MOVE_EXPLOSION
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        ability ABILITY_GALVANIZE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 256, "Erika"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LEADER_8
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 256
        // mon 0
        ivs 200
        abilityslot 0
        level 71
        pokemon SPECIES_SUNFLORA
        item ITEM_HEAT_ROCK
        move MOVE_FLOWER_SHIELD
        move MOVE_SYNTHESIS
        move MOVE_GIGA_DRAIN
        move MOVE_FLAMETHROWER
        ability ABILITY_DROUGHT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 71
        pokemon SPECIES_TROPIUS
        item ITEM_LIFE_ORB
        move MOVE_SOLAR_BEAM
        move MOVE_SYNTHESIS
        move MOVE_HEAT_WAVE
        move MOVE_ICY_WIND
        ability ABILITY_CHLOROPHYLL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 71
        monwithform SPECIES_LILLIGANT, 1
        item ITEM_FOCUS_SASH
        move MOVE_AXE_KICK
        move MOVE_SYNTHESIS
        move MOVE_SOLAR_BLADE
        move MOVE_SLEEP_POWDER
        ability ABILITY_CHLOROPHYLL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_TANGROWTH
        item ITEM_ASSAULT_VEST
        move MOVE_KNOCK_OFF
        move MOVE_GIGA_DRAIN
        move MOVE_POWER_WHIP
        move MOVE_EARTHQUAKE
        ability ABILITY_REGENERATOR
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BRAVE
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 71
        pokemon SPECIES_BRAMBLEGHAST
        item ITEM_LEFTOVERS
        move MOVE_POWER_WHIP
        move MOVE_PAIN_SPLIT
        move MOVE_CURSE
        move MOVE_PHANTOM_FORCE
        ability ABILITY_WIND_RIDER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_AMOONGUSS
        item ITEM_ROCKY_HELMET
        move MOVE_SPORE
        move MOVE_RAGE_POWDER
        move MOVE_SLUDGE_BOMB
        move MOVE_PROTECT
        ability ABILITY_REGENERATOR
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 257, "Janine"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_9
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 257
        // mon 0
        ivs 200
        abilityslot 0
        level 73
        monwithform SPECIES_MUK, 1
        item ITEM_ASSAULT_VEST
        move MOVE_KNOCK_OFF
        move MOVE_GUNK_SHOT
        move MOVE_POISON_JAB
        move MOVE_BODY_PRESS
        ability ABILITY_POWER_OF_ALCHEMY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_TENTACRUEL
        item ITEM_LUM_BERRY
        move MOVE_TOXIC_SPIKES
        move MOVE_HYDRO_PUMP
        move MOVE_SLUDGE_WAVE
        move MOVE_RECOVER
        ability ABILITY_LIQUID_OOZE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 75
        pokemon SPECIES_WEEZING
        item ITEM_FOCUS_SASH
        move MOVE_PROTECT
        move MOVE_TOXIC
        move MOVE_HEAT_WAVE
        move MOVE_SLUDGE_BOMB
        ability ABILITY_LEVITATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_DRAGALGE
        item ITEM_LEFTOVERS
        move MOVE_HYDRO_PUMP
        move MOVE_DRACO_METEOR
        move MOVE_PROTECT
        move MOVE_ICE_BEAM
        ability ABILITY_ADAPTABILITY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_VENUSAUR
        item ITEM_MIRACLE_SEED
        move MOVE_SLEEP_POWDER
        move MOVE_LEAF_STORM
        move MOVE_EARTH_POWER
        move MOVE_LEECH_SEED
        ability ABILITY_CHLOROPHYLL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_AROMATISSE
        item ITEM_SITRUS_BERRY
        move MOVE_SLUDGE_BOMB
        move MOVE_MOONBLAST
        move MOVE_HELPING_HAND
        move MOVE_CALM_MIND
        ability ABILITY_HEALER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 258, "Sabrina"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LEADER_10
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 258
        // mon 0
        ivs 255
        abilityslot 0
        level 66
        pokemon SPECIES_MR_MIME
        item ITEM_LIGHT_CLAY
        move MOVE_SKILL_SWAP
        move MOVE_REFLECT
        move MOVE_LIGHT_SCREEN
        move MOVE_DAZZLING_GLEAM
        ability ABILITY_FILTER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 66
        pokemon SPECIES_MEDICHAM
        item ITEM_SITRUS_BERRY
        move MOVE_PROTECT
        move MOVE_HIGH_JUMP_KICK
        move MOVE_ICE_PUNCH
        move MOVE_THUNDER_PUNCH
        ability ABILITY_CLEAR_BODY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 68
        pokemon SPECIES_ALAKAZAM
        item ITEM_LIFE_ORB
        move MOVE_PSYCHIC
        move MOVE_ENERGY_BALL
        move MOVE_FOCUS_BLAST
        move MOVE_SHADOW_BALL
        ability ABILITY_MAGIC_GUARD
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 0
        level 66
        pokemon SPECIES_GOTHITELLE
        item ITEM_CHOICE_SPECS
        move MOVE_FUTURE_SIGHT
        move MOVE_FOCUS_BLAST
        move MOVE_SHADOW_BALL
        move MOVE_TELEPORT
        ability ABILITY_SHADOW_TAG
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 0
        level 67
        pokemon SPECIES_REUNICLUS
        item ITEM_LEFTOVERS
        move MOVE_TRICK_ROOM
        move MOVE_FOCUS_BLAST
        move MOVE_SHADOW_BALL
        move MOVE_PSYSHOCK
        ability ABILITY_REGENERATOR
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 0
        level 67
        monwithform SPECIES_BRAVIARY, 1
        item ITEM_TWISTED_SPOON
        move MOVE_TAILWIND
        move MOVE_BRAVE_BIRD
        move MOVE_SUPERPOWER
        move MOVE_PSYCHO_CUT
        ability ABILITY_DEFIANT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 259, "Blaine"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LEADER_11
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 259
        // mon 0
        ivs 255
        abilityslot 0
        level 78
        pokemon SPECIES_MAGCARGO
        item ITEM_HEAT_ROCK
        move MOVE_SUNNY_DAY
        move MOVE_PROTECT
        move MOVE_OVERHEAT
        move MOVE_ROCK_SLIDE
        ability ABILITY_DESOLATE_LAND
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BRAVE
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 76
        monwithform SPECIES_DARMANITAN, 1
        item ITEM_CHOICE_SCARF
        move MOVE_SUPERPOWER
        move MOVE_U_TURN
        move MOVE_ICICLE_CRASH
        move MOVE_FLARE_BLITZ
        ability ABILITY_GORILLA_TACTICS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 76
        pokemon SPECIES_MAGMORTAR
        item ITEM_CHOICE_SPECS
        move MOVE_LAVA_PLUME
        move MOVE_EARTH_POWER
        move MOVE_AURA_SPHERE
        move MOVE_DRAGON_PULSE
        ability ABILITY_MEGA_LAUNCHER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 0
        level 76
        pokemon SPECIES_RAPIDASH
        item ITEM_SITRUS_BERRY
        move MOVE_FLARE_BLITZ
        move MOVE_BOUNCE
        move MOVE_PLAY_ROUGH
        move MOVE_ZEN_HEADBUTT
        ability ABILITY_MOLD_BREAKER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 0
        level 76
        pokemon SPECIES_SKELEDIRGE
        item ITEM_LEFTOVERS
        move MOVE_PROTECT
        move MOVE_WILL_O_WISP
        move MOVE_FIRE_BLAST
        move MOVE_SHADOW_BALL
        ability ABILITY_UNAWARE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 0
        level 76
        pokemon SPECIES_SALAZZLE
        item ITEM_BLACK_SLUDGE
        move MOVE_NASTY_PLOT
        move MOVE_FLAMETHROWER
        move MOVE_FOCUS_BLAST
        move MOVE_SLUDGE_BOMB
        ability ABILITY_CORROSION
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 260, "Red"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PKMN_TRAINER_9
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 260
        // mon 0
        ivs 250
        abilityslot 0
        level 88
        pokemon SPECIES_PIKACHU
        item ITEM_LIGHT_BALL
        move MOVE_VOLT_TACKLE
        move MOVE_IRON_TAIL
        move MOVE_QUICK_ATTACK
        move MOVE_THUNDERBOLT
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 32
        level 80
        pokemon SPECIES_LAPRAS
        item ITEM_NONE
        move MOVE_BLIZZARD
        move MOVE_BRINE
        move MOVE_PSYCHIC
        move MOVE_BODY_SLAM
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 32
        level 82
        pokemon SPECIES_SNORLAX
        item ITEM_NONE
        move MOVE_SHADOW_BALL
        move MOVE_CRUNCH
        move MOVE_BLIZZARD
        move MOVE_GIGA_IMPACT
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 0
        level 84
        pokemon SPECIES_VENUSAUR
        item ITEM_NONE
        move MOVE_SLUDGE_BOMB
        move MOVE_GIGA_DRAIN
        move MOVE_SLEEP_POWDER
        move MOVE_FRENZY_PLANT
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 0
        level 84
        pokemon SPECIES_CHARIZARD
        item ITEM_NONE
        move MOVE_FLARE_BLITZ
        move MOVE_AIR_SLASH
        move MOVE_BLAST_BURN
        move MOVE_DRAGON_PULSE
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 0
        level 84
        pokemon SPECIES_BLASTOISE
        item ITEM_NONE
        move MOVE_FOCUS_BLAST
        move MOVE_HYDRO_CANNON
        move MOVE_BLIZZARD
        move MOVE_FLASH_CANNON
        ballseal 0
    endparty

trainerdata 261, "Blue"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_12
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 261
        // mon 0
        ivs 250
        abilityslot 0
        level 55
        pokemon SPECIES_EXEGGUTOR
        item ITEM_NONE
        move MOVE_LEAF_STORM
        move MOVE_PSYCHIC
        move MOVE_HYPNOSIS
        move MOVE_TRICK_ROOM
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 0
        level 58
        pokemon SPECIES_ARCANINE
        item ITEM_NONE
        move MOVE_ROAR
        move MOVE_DRAGON_PULSE
        move MOVE_FLARE_BLITZ
        move MOVE_EXTREME_SPEED
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 32
        level 58
        pokemon SPECIES_RHYDON
        item ITEM_NONE
        move MOVE_MEGAHORN
        move MOVE_STONE_EDGE
        move MOVE_THUNDER_FANG
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 0
        level 52
        pokemon SPECIES_GYARADOS
        item ITEM_NONE
        move MOVE_ICE_FANG
        move MOVE_WATERFALL
        move MOVE_DRAGON_DANCE
        move MOVE_RETURN
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 32
        level 56
        pokemon SPECIES_MACHAMP
        item ITEM_NONE
        move MOVE_DYNAMIC_PUNCH
        move MOVE_EARTHQUAKE
        move MOVE_STONE_EDGE
        move MOVE_THUNDER_PUNCH
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 0
        level 60
        pokemon SPECIES_PIDGEOT
        item ITEM_SITRUS_BERRY
        move MOVE_RETURN
        move MOVE_WHIRLWIND
        move MOVE_AIR_SLASH
        move MOVE_MIRROR_MOVE
        ballseal 0
    endparty

trainerdata 262, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 262
        // mon 0
        ivs 30
        abilityslot 0
        level 25
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 25
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 0
        level 30
        pokemon SPECIES_ARBOK
        ballseal 0
    endparty

trainerdata 263, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_RIVAL
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 263
        // mon 0
        ivs 200
        abilityslot 32
        level 24
        pokemon SPECIES_DUSCLOPS
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_PUNCH
        move MOVE_DRAIN_PUNCH
        move MOVE_TRICK_ROOM
        move MOVE_WILL_O_WISP
        ability ABILITY_PRESSURE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
            
        // mon 1
        ivs 200
        abilityslot 32
        level 24
        pokemon SPECIES_FLAAFFY
        item ITEM_SITRUS_BERRY
        move MOVE_THUNDER_SHOCK
        move MOVE_TWISTER
        move MOVE_THUNDER_WAVE
        move MOVE_CHARGE
        ability ABILITY_STATIC
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 24
        pokemon SPECIES_CORVISQUIRE
        item ITEM_NONE
        move MOVE_PLUCK
        move MOVE_TAUNT
        move MOVE_THIEF
        move MOVE_U_TURN
        ability ABILITY_UNNERVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    
        // mon 3
        ivs 200
        abilityslot 32
        level 25
        pokemon SPECIES_BAYLEEF
        item ITEM_SITRUS_BERRY
        move MOVE_REFLECT
        move MOVE_MEGA_DRAIN
        move MOVE_LIGHT_SCREEN
        move MOVE_POISON_POWDER
        ability ABILITY_OVERGROW
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 264, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 264
        // mon 0
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_DUSKNOIR
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_PUNCH
        move MOVE_DRAIN_PUNCH
        move MOVE_TRICK_ROOM
        move MOVE_WILL_O_WISP
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
            
        // mon 1
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_AMPHAROS
        item ITEM_CHOICE_SPECS
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        move MOVE_POWER_GEM
        move MOVE_FOCUS_BLAST
        ability ABILITY_MOLD_BREAKER
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_CORVIKNIGHT
        item ITEM_LEFTOVERS
        move MOVE_BODY_PRESS
        move MOVE_ROOST
        move MOVE_IRON_DEFENSE
        move MOVE_DRILL_PECK
        ability ABILITY_UNNERVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_WEAVILE
        item ITEM_FOCUS_SASH
        move MOVE_SWORDS_DANCE
        move MOVE_TRIPLE_AXEL
        move MOVE_KNOCK_OFF
        move MOVE_ICE_SHARD
        ability ABILITY_PICKPOCKET
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_DONPHAN
        item ITEM_SOFT_SAND
        move MOVE_HEADLONG_RUSH
        move MOVE_ICE_SHARD
        move MOVE_ROCK_SLIDE
        move MOVE_SUPERPOWER
        ability ABILITY_STURDY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 32
        level 56
        pokemon SPECIES_MEGANIUM
        item ITEM_SITRUS_BERRY
        move MOVE_FLORAL_HEALING
        move MOVE_STRENGTH_SAP
        move MOVE_GIGA_DRAIN
        move MOVE_EARTH_POWER
        ability ABILITY_TRIAGE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 265, "Silver"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_RIVAL
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 265
        // mon 0
        ivs 0
        abilityslot 0
        level 5
        pokemon SPECIES_CHIKORITA
        ballseal 0
    endparty

trainerdata 266, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_RIVAL
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 266
        // mon 0
        ivs 200
        abilityslot 32
        level 18
        pokemon SPECIES_DUSKULL
        item ITEM_NONE
        move MOVE_SHADOW_SNEAK
        move MOVE_CONFUSE_RAY
        move MOVE_NIGHT_SHADE
        move MOVE_WILL_O_WISP
        ability ABILITY_LEVITATE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 18
        pokemon SPECIES_CORVISQUIRE
        item ITEM_NONE
        move MOVE_PLUCK
        move MOVE_TAUNT
        move MOVE_THIEF
        move MOVE_U_TURN
        ability ABILITY_UNNERVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    
        // mon 2
        ivs 200
        abilityslot 32
        level 20
        pokemon SPECIES_QUILAVA
        item ITEM_SITRUS_BERRY
        move MOVE_QUICK_ATTACK
        move MOVE_MUD_SLAP
        move MOVE_LEER
        move MOVE_INCINERATE
        ability ABILITY_BLAZE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 267, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_RIVAL
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 267
        // mon 0
        ivs 200
        abilityslot 32
        level 24
        pokemon SPECIES_DUSCLOPS
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_PUNCH
        move MOVE_DRAIN_PUNCH
        move MOVE_TRICK_ROOM
        move MOVE_WILL_O_WISP
        ability ABILITY_PRESSURE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
            
        // mon 1
        ivs 200
        abilityslot 32
        level 24
        pokemon SPECIES_FLAAFFY
        item ITEM_SITRUS_BERRY
        move MOVE_THUNDER_SHOCK
        move MOVE_TWISTER
        move MOVE_THUNDER_WAVE
        move MOVE_CHARGE
        ability ABILITY_STATIC
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 24
        pokemon SPECIES_CORVISQUIRE
        item ITEM_NONE
        move MOVE_PLUCK
        move MOVE_TAUNT
        move MOVE_THIEF
        move MOVE_U_TURN
        ability ABILITY_UNNERVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 25
        pokemon SPECIES_QUILAVA
        item ITEM_SITRUS_BERRY
        move MOVE_SWIFT
        move MOVE_MUD_SLAP
        move MOVE_INCINERATE
        move MOVE_DEFENSE_CURL
        ability ABILITY_BLAZE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 268, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 268
        // mon 0
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_DUSKNOIR
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_PUNCH
        move MOVE_DRAIN_PUNCH
        move MOVE_TRICK_ROOM
        move MOVE_WILL_O_WISP
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
            
        // mon 1
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_AMPHAROS
        item ITEM_CHOICE_SPECS
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        move MOVE_POWER_GEM
        move MOVE_FOCUS_BLAST
        ability ABILITY_MOLD_BREAKER
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_CORVIKNIGHT
        item ITEM_LEFTOVERS
        move MOVE_BODY_PRESS
        move MOVE_ROOST
        move MOVE_IRON_DEFENSE
        move MOVE_DRILL_PECK
        ability ABILITY_UNNERVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_WEAVILE
        item ITEM_FOCUS_SASH
        move MOVE_SWORDS_DANCE
        move MOVE_TRIPLE_AXEL
        move MOVE_KNOCK_OFF
        move MOVE_ICE_SHARD
        ability ABILITY_PICKPOCKET
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_DONPHAN
        item ITEM_SOFT_SAND
        move MOVE_HEADLONG_RUSH
        move MOVE_ICE_SHARD
        move MOVE_ROCK_SLIDE
        move MOVE_SUPERPOWER
        ability ABILITY_STURDY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 32
        level 56
        pokemon SPECIES_TYPHLOSION
        item ITEM_SITRUS_BERRY
        move MOVE_FOCUS_BLAST
        move MOVE_LAVA_PLUME
        move MOVE_INFERNO
        move MOVE_ZAP_CANNON
        ability ABILITY_NO_GUARD
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 269, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_RIVAL
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 269
        // mon 0
        ivs 200
        abilityslot 32
        level 18
        pokemon SPECIES_DUSKULL
        item ITEM_NONE
        move MOVE_SHADOW_SNEAK
        move MOVE_CONFUSE_RAY
        move MOVE_NIGHT_SHADE
        move MOVE_WILL_O_WISP
        ability ABILITY_LEVITATE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 18
        pokemon SPECIES_CORVISQUIRE
        item ITEM_NONE
        move MOVE_PLUCK
        move MOVE_TAUNT
        move MOVE_THIEF
        move MOVE_U_TURN
        ability ABILITY_UNNERVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 20
        pokemon SPECIES_CROCONAW
        item ITEM_SITRUS_BERRY
        move MOVE_AQUA_JET
        move MOVE_BITE
        move MOVE_ICE_FANG
        move MOVE_SCARY_FACE
        ability ABILITY_TORRENT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 270, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_RIVAL
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 270
        // mon 0
        ivs 200
        abilityslot 32
        level 24
        pokemon SPECIES_DUSCLOPS
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_PUNCH
        move MOVE_DRAIN_PUNCH
        move MOVE_TRICK_ROOM
        move MOVE_WILL_O_WISP
        ability ABILITY_PRESSURE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
            
        // mon 1
        ivs 200
        abilityslot 32
        level 24
        pokemon SPECIES_FLAAFFY
        item ITEM_SITRUS_BERRY
        move MOVE_THUNDER_SHOCK
        move MOVE_TWISTER
        move MOVE_THUNDER_WAVE
        move MOVE_CHARGE
        ability ABILITY_STATIC
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 24
        pokemon SPECIES_CORVISQUIRE
        item ITEM_NONE
        move MOVE_PLUCK
        move MOVE_TAUNT
        move MOVE_THIEF
        move MOVE_U_TURN
        ability ABILITY_UNNERVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 25
        pokemon SPECIES_CROCONAW
        item ITEM_SITRUS_BERRY
        move MOVE_AQUA_JET
        move MOVE_BITE
        move MOVE_ICE_FANG
        move MOVE_SCARY_FACE
        ability ABILITY_TORRENT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 271, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_RIVAL
    nummons 5
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 271
        // mon 0
        ivs 200
        abilityslot 32
        level 44
        pokemon SPECIES_DUSKNOIR
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_PUNCH
        move MOVE_DRAIN_PUNCH
        move MOVE_TRICK_ROOM
        move MOVE_WILL_O_WISP
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
            
        // mon 1
        ivs 200
        abilityslot 32
        level 44
        pokemon SPECIES_AMPHAROS
        item ITEM_CHOICE_SPECS
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        move MOVE_POWER_GEM
        move MOVE_SIGNAL_BEAM
        ability ABILITY_MOLD_BREAKER
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 44
        pokemon SPECIES_CORVIKNIGHT
        item ITEM_LEFTOVERS
        move MOVE_BODY_PRESS
        move MOVE_ROOST
        move MOVE_IRON_DEFENSE
        move MOVE_DRILL_PECK
        ability ABILITY_UNNERVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 44
        pokemon SPECIES_WEAVILE
        item ITEM_FOCUS_SASH
        move MOVE_SWORDS_DANCE
        move MOVE_TRIPLE_AXEL
        move MOVE_KNOCK_OFF
        move MOVE_ICE_SHARD
        ability ABILITY_PICKPOCKET
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 46
        pokemon SPECIES_FERALIGATR
        item ITEM_LUM_BERRY
        move MOVE_DRAGON_DANCE
        move MOVE_ICE_PUNCH
        move MOVE_LIQUIDATION
        move MOVE_SUPERPOWER
        ability ABILITY_SHEER_FORCE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 272, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 272
        // mon 0
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_DUSKNOIR
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_PUNCH
        move MOVE_DRAIN_PUNCH
        move MOVE_TRICK_ROOM
        move MOVE_WILL_O_WISP
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
            
        // mon 1
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_AMPHAROS
        item ITEM_CHOICE_SPECS
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        move MOVE_POWER_GEM
        move MOVE_FOCUS_BLAST
        ability ABILITY_MOLD_BREAKER
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_CORVIKNIGHT
        item ITEM_LEFTOVERS
        move MOVE_BODY_PRESS
        move MOVE_ROOST
        move MOVE_IRON_DEFENSE
        move MOVE_DRILL_PECK
        ability ABILITY_UNNERVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_WEAVILE
        item ITEM_FOCUS_SASH
        move MOVE_SWORDS_DANCE
        move MOVE_TRIPLE_AXEL
        move MOVE_KNOCK_OFF
        move MOVE_ICE_SHARD
        ability ABILITY_PICKPOCKET
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_DONPHAN
        item ITEM_SOFT_SAND
        move MOVE_HEADLONG_RUSH
        move MOVE_ICE_SHARD
        move MOVE_ROCK_SLIDE
        move MOVE_SUPERPOWER
        ability ABILITY_STURDY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 32
        level 56
        pokemon SPECIES_FERALIGATR
        item ITEM_LUM_BERRY
        move MOVE_DRAGON_DANCE
        move MOVE_ICE_PUNCH
        move MOVE_LIQUIDATION
        move MOVE_SUPERPOWER
        ability ABILITY_SHEER_FORCE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 273, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 273
        // mon 0
        ivs 0
        abilityslot 0
        level 13
        pokemon SPECIES_STARYU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_STARMIE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_HORSEA
        ballseal 0
    endparty

trainerdata 274, "Todd"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 274
        // mon 0
        ivs 0
        abilityslot 0
        level 17
        pokemon SPECIES_GEODUDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 17
        pokemon SPECIES_GEODUDE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 31
        pokemon SPECIES_PSYDUCK
        ballseal 0
    endparty

trainerdata 275, "Todd"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 275
        // mon 0
        ivs 0
        abilityslot 0
        level 23
        pokemon SPECIES_GEODUDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_GOLDUCK
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_SLUGMA
        ballseal 0
    endparty

trainerdata 276, "Liz"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 276
        // mon 0
        ivs 0
        abilityslot 0
        level 35
        pokemon SPECIES_WEEPINBELL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 38
        pokemon SPECIES_NIDORINA
        ballseal 0
    endparty

trainerdata 277, "Liz"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 277
        // mon 0
        ivs 0
        abilityslot 0
        level 39
        pokemon SPECIES_WEEPINBELL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_NIDORINO
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 40
        pokemon SPECIES_NIDOQUEEN
        ballseal 0
    endparty

trainerdata 278, "Kenji"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BLACK_BELT
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 278
        // mon 0
        ivs 30
        abilityslot 0
        level 30
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 37
        pokemon SPECIES_MACHAMP
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 0
        level 33
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 3
        ivs 30
        abilityslot 0
        level 41
        pokemon SPECIES_HITMONLEE
        ballseal 0
    endparty

trainerdata 279, "Joey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_YOUNGSTER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 279
        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_RATICATE
        ballseal 0
    endparty

trainerdata 280, "Joey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_YOUNGSTER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 280
        // mon 0
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_RATICATE
        move MOVE_SUPER_FANG
        move MOVE_QUICK_ATTACK
        move MOVE_HYPER_FANG
        move MOVE_SCARY_FACE
        ballseal 0
    endparty

trainerdata 281, "Richard"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FIREBREATHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 281
        // mon 0
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_SIZZLIPEDE
        ballseal 0

        // mon 0
        ivs 0
        abilityslot 0
        level 25
        pokemon SPECIES_SUNFLORA
        ballseal 0
    endparty

trainerdata 282, "Ned"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FIREBREATHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 282
        // mon 0
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_MAGMAR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_FLETCHINDER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_CARKOL
        ballseal 0
    endparty

trainerdata 283, "Orson"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BURGLAR
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 283
        // mon 0
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_GRENINJA
        move MOVE_WATER_SHURIKEN
        move MOVE_DARK_PULSE
        move MOVE_SHADOW_SNEAK
        move MOVE_EXTRASENSORY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 42
        pokemon SPECIES_ACCELGOR
        move MOVE_GIGA_DRAIN
        move MOVE_WATER_SHURIKEN
        move MOVE_BUG_BUZZ
        move MOVE_STICKY_WEB
        ballseal 0
    endparty

trainerdata 284, "Corey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BURGLAR
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 284
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_MAGMAR
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_KOFFING
        ballseal 0
    endparty

trainerdata 285, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 285
        // mon 0
        ivs 200
        abilityslot 32
        level 73
        pokemon SPECIES_DUSKNOIR
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_PUNCH
        move MOVE_DRAIN_PUNCH
        move MOVE_TRICK_ROOM
        move MOVE_WILL_O_WISP
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
            
        // mon 1
        ivs 200
        abilityslot 32
        level 73
        pokemon SPECIES_AMPHAROS
        item ITEM_CHOICE_SPECS
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        move MOVE_POWER_GEM
        move MOVE_FOCUS_BLAST
        ability ABILITY_MOLD_BREAKER
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 73
        pokemon SPECIES_CORVIKNIGHT
        item ITEM_LEFTOVERS
        move MOVE_BODY_PRESS
        move MOVE_ROOST
        move MOVE_IRON_DEFENSE
        move MOVE_DRILL_PECK
        ability ABILITY_UNNERVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 73
        pokemon SPECIES_WEAVILE
        item ITEM_FOCUS_SASH
        move MOVE_SWORDS_DANCE
        move MOVE_TRIPLE_AXEL
        move MOVE_KNOCK_OFF
        move MOVE_ICE_SHARD
        ability ABILITY_PICKPOCKET
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 73
        pokemon SPECIES_DONPHAN
        item ITEM_SOFT_SAND
        move MOVE_HEADLONG_RUSH
        move MOVE_ICE_SHARD
        move MOVE_ROCK_SLIDE
        move MOVE_SUPERPOWER
        ability ABILITY_STURDY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 32
        level 76
        pokemon SPECIES_MEGANIUM
        item ITEM_SITRUS_BERRY
        move MOVE_FLORAL_HEALING
        move MOVE_STRENGTH_SAP
        move MOVE_GIGA_DRAIN
        move MOVE_EARTH_POWER
        ability ABILITY_TRIAGE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 286, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 286
        // mon 0
        ivs 200
        abilityslot 32
        level 73
        pokemon SPECIES_DUSKNOIR
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_PUNCH
        move MOVE_DRAIN_PUNCH
        move MOVE_TRICK_ROOM
        move MOVE_WILL_O_WISP
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
            
        // mon 1
        ivs 200
        abilityslot 32
        level 73
        pokemon SPECIES_AMPHAROS
        item ITEM_CHOICE_SPECS
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        move MOVE_POWER_GEM
        move MOVE_FOCUS_BLAST
        ability ABILITY_MOLD_BREAKER
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 73
        pokemon SPECIES_CORVIKNIGHT
        item ITEM_LEFTOVERS
        move MOVE_BODY_PRESS
        move MOVE_ROOST
        move MOVE_IRON_DEFENSE
        move MOVE_DRILL_PECK
        ability ABILITY_UNNERVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 73
        pokemon SPECIES_WEAVILE
        item ITEM_FOCUS_SASH
        move MOVE_SWORDS_DANCE
        move MOVE_TRIPLE_AXEL
        move MOVE_KNOCK_OFF
        move MOVE_ICE_SHARD
        ability ABILITY_PICKPOCKET
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 73
        pokemon SPECIES_DONPHAN
        item ITEM_SOFT_SAND
        move MOVE_HEADLONG_RUSH
        move MOVE_ICE_SHARD
        move MOVE_ROCK_SLIDE
        move MOVE_SUPERPOWER
        ability ABILITY_STURDY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 76
        pokemon SPECIES_TYPHLOSION
        item ITEM_CHOICE_SCARF
        move MOVE_FOCUS_BLAST
        move MOVE_LAVA_PLUME
        move MOVE_INFERNO
        move MOVE_ZAP_CANNON
        ability ABILITY_NO_GUARD
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 287, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_RIVAL
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 287
        // mon 0
        ivs 200
        abilityslot 32
        level 73
        pokemon SPECIES_DUSKNOIR
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_PUNCH
        move MOVE_DRAIN_PUNCH
        move MOVE_TRICK_ROOM
        move MOVE_WILL_O_WISP
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
            
        // mon 1
        ivs 200
        abilityslot 32
        level 73
        pokemon SPECIES_AMPHAROS
        item ITEM_CHOICE_SPECS
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        move MOVE_POWER_GEM
        move MOVE_FOCUS_BLAST
        ability ABILITY_MOLD_BREAKER
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 73
        pokemon SPECIES_CORVIKNIGHT
        item ITEM_LEFTOVERS
        move MOVE_BODY_PRESS
        move MOVE_ROOST
        move MOVE_IRON_DEFENSE
        move MOVE_DRILL_PECK
        ability ABILITY_UNNERVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 73
        pokemon SPECIES_WEAVILE
        item ITEM_FOCUS_SASH
        move MOVE_SWORDS_DANCE
        move MOVE_TRIPLE_AXEL
        move MOVE_KNOCK_OFF
        move MOVE_ICE_SHARD
        ability ABILITY_PICKPOCKET
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 73
        pokemon SPECIES_DONPHAN
        item ITEM_SOFT_SAND
        move MOVE_HEADLONG_RUSH
        move MOVE_ICE_SHARD
        move MOVE_ROCK_SLIDE
        move MOVE_SUPERPOWER
        ability ABILITY_STURDY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 76
        pokemon SPECIES_FERALIGATR
        item ITEM_LIFE_ORB
        move MOVE_DRAGON_DANCE
        move MOVE_ICE_PUNCH
        move MOVE_LIQUIDATION
        move MOVE_CRUNCH
        ability ABILITY_SHEER_FORCE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 288, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_RIVAL
    nummons 5
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 288        
        // mon 0
        ivs 200
        abilityslot 32
        level 44
        pokemon SPECIES_DUSKNOIR
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_PUNCH
        move MOVE_DRAIN_PUNCH
        move MOVE_TRICK_ROOM
        move MOVE_WILL_O_WISP
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
            
        // mon 1
        ivs 200
        abilityslot 32
        level 44
        pokemon SPECIES_AMPHAROS
        item ITEM_CHOICE_SPECS
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        move MOVE_POWER_GEM
        move MOVE_SIGNAL_BEAM
        ability ABILITY_MOLD_BREAKER
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 44
        pokemon SPECIES_CORVIKNIGHT
        item ITEM_LEFTOVERS
        move MOVE_BODY_PRESS
        move MOVE_ROOST
        move MOVE_IRON_DEFENSE
        move MOVE_DRILL_PECK
        ability ABILITY_UNNERVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 44
        pokemon SPECIES_WEAVILE
        item ITEM_FOCUS_SASH
        move MOVE_SWORDS_DANCE
        move MOVE_TRIPLE_AXEL
        move MOVE_KNOCK_OFF
        move MOVE_ICE_SHARD
        ability ABILITY_PICKPOCKET
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 46
        pokemon SPECIES_MEGANIUM
        item ITEM_SITRUS_BERRY
        move MOVE_FLORAL_HEALING
        move MOVE_STRENGTH_SAP
        move MOVE_GIGA_DRAIN
        move MOVE_EARTH_POWER
        ability ABILITY_TRIAGE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 289, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_RIVAL
    nummons 5
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 289
        // mon 0
        ivs 200
        abilityslot 32
        level 44
        pokemon SPECIES_DUSKNOIR
        item ITEM_LEFTOVERS
        move MOVE_SHADOW_PUNCH
        move MOVE_DRAIN_PUNCH
        move MOVE_TRICK_ROOM
        move MOVE_WILL_O_WISP
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
            
        // mon 1
        ivs 200
        abilityslot 32
        level 44
        pokemon SPECIES_AMPHAROS
        item ITEM_CHOICE_SPECS
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        move MOVE_POWER_GEM
        move MOVE_SIGNAL_BEAM
        ability ABILITY_MOLD_BREAKER
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 44
        pokemon SPECIES_CORVIKNIGHT
        item ITEM_LEFTOVERS
        move MOVE_BODY_PRESS
        move MOVE_ROOST
        move MOVE_IRON_DEFENSE
        move MOVE_DRILL_PECK
        ability ABILITY_UNNERVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CAREFUL
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 44
        pokemon SPECIES_WEAVILE
        item ITEM_FOCUS_SASH
        move MOVE_SWORDS_DANCE
        move MOVE_TRIPLE_AXEL
        move MOVE_KNOCK_OFF
        move MOVE_ICE_SHARD
        ability ABILITY_PICKPOCKET
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 46
        pokemon SPECIES_TYPHLOSION
        item ITEM_SITRUS_BERRY
        move MOVE_FOCUS_BLAST
        move MOVE_LAVA_PLUME
        move MOVE_INFERNO
        move MOVE_ZAP_CANNON
        ability ABILITY_NO_GUARD
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 290, "Li"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_ELDER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 290
        // mon 0
        ivs 200
        abilityslot 0
        level 9
        pokemon SPECIES_BELLSPROUT
        move MOVE_VINE_WHIP
        move MOVE_SLEEP_POWDER
        move MOVE_POISON_POWDER
        move MOVE_ACID
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 9
        pokemon SPECIES_HOOTHOOT
        move MOVE_PECK
        move MOVE_ROOST
        move MOVE_QUICK_ATTACK
        move MOVE_NONE
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 8
        pokemon SPECIES_WEEPINBELL
        move MOVE_VINE_WHIP
        move MOVE_SLEEP_POWDER
        move MOVE_POISON_POWDER
        move MOVE_ACID
        ballseal 0
    endparty

trainerdata 291, "Debbie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 291
        // mon 0
        ivs 0
        abilityslot 0
        level 76
        pokemon SPECIES_GOREBYSS
        move MOVE_SURF
        move MOVE_PSYCHIC
        move MOVE_CALM_MIND
        move MOVE_DRAINING_KISS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 76
        pokemon SPECIES_PALAFIN
        move MOVE_PROTECT
        move MOVE_ICE_PUNCH
        move MOVE_ACROBATICS
        move MOVE_JET_PUNCH
        ballseal 0
    endparty

trainerdata 292, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 292
        // mon 0
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 293, "Nicole"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 293
        // mon 0
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_SHARPEDO
        move MOVE_LIQUIDATION
        move MOVE_PROTECT
        move MOVE_NIGHT_SLASH
        move MOVE_ICE_FANG
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_FLYGON
        move MOVE_EARTH_POWER
        move MOVE_FLAMETHROWER
        move MOVE_DRAGON_PULSE
        move MOVE_BUG_BUZZ
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_RELICANTH
        move MOVE_HEAD_SMASH
        move MOVE_WAVE_CRASH
        move MOVE_YAWN
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 294, "Lori"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 294
        // mon 0
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_AERODACTYL
        move MOVE_EARTHQUAKE
        move MOVE_HEAD_SMASH
        move MOVE_BRAVE_BIRD
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_LAPRAS
        move MOVE_SURF
        move MOVE_PERISH_SONG
        move MOVE_PROTECT
        move MOVE_ICY_WIND
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_STARMIE
        move MOVE_THUNDERBOLT
        move MOVE_SURF
        move MOVE_ICE_BEAM
        move MOVE_RECOVER
        ballseal 0
    endparty

trainerdata 295, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 295
        // mon 0
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 296, "Nikki"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 296
        // mon 0
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_BLASTOISE
        move MOVE_SURF
        move MOVE_AURA_SPHERE
        move MOVE_DARK_PULSE
        move MOVE_CALM_MIND
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_DEWGONG
        move MOVE_PERISH_SONG
        move MOVE_HYDRO_PUMP
        move MOVE_MOONBLAST
        move MOVE_ICE_BEAM
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_DONDOZO
        move MOVE_WAVE_CRASH
        move MOVE_REST
        move MOVE_SLEEP_TALK
        move MOVE_EARTHQUAKE
        ballseal 0
    endparty

trainerdata 297, "Diana"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_SWIMMER_F
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 297
        // mon 0
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_WALREIN
        item ITEM_LEFTOVERS
        move MOVE_LIQUIDATION
        move MOVE_REST
        move MOVE_SLEEP_TALK
        move MOVE_ICICLE_CRASH
        ability ABILITY_THICK_FAT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_HUNTAIL
        item ITEM_LIFE_ORB
        move MOVE_COIL
        move MOVE_CRUNCH
        move MOVE_AQUA_TAIL
        move MOVE_ICE_FANG
        ability ABILITY_SWIFT_SWIM
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_RELICANTH
        item ITEM_FOCUS_SASH
        move MOVE_HEAD_SMASH
        move MOVE_WAVE_CRASH
        move MOVE_YAWN
        move MOVE_PROTECT
        ability ABILITY_ROCK_HEAD
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_LUVDISC
        item ITEM_SITRUS_BERRY
        move MOVE_HYDRO_PUMP
        move MOVE_ICE_BEAM
        move MOVE_DAZZLING_GLEAM
        move MOVE_PROTECT
        ability ABILITY_ADAPTABILITY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 298, "Briana"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_SWIMMER_F
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 298
        // mon 0
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_ARAQUANID
        item ITEM_SITRUS_BERRY
        move MOVE_SPIDER_WEB
        move MOVE_LEECH_LIFE
        move MOVE_LIQUIDATION
        move MOVE_FLIP_TURN
        ability ABILITY_WATER_BUBBLE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_PYUKUMUKU
        item ITEM_SITRUS_BERRY
        move MOVE_PAIN_SPLIT
        move MOVE_TOXIC
        move MOVE_LIQUIDATION
        move MOVE_HELPING_HAND
        ability ABILITY_UNAWARE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_BLASTOISE
        item ITEM_LIFE_ORB
        move MOVE_SURF
        move MOVE_AURA_SPHERE
        move MOVE_DARK_PULSE
        move MOVE_CALM_MIND
        ability ABILITY_MEGA_LAUNCHER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_KINGLER
        item ITEM_MYSTIC_WATER
        move MOVE_CRABHAMMER
        move MOVE_AQUA_JET
        move MOVE_ICE_HAMMER
        move MOVE_SWORDS_DANCE
        ability ABILITY_SHEER_FORCE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 299, "Hank"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 299
        // mon 0
        ivs 50
        abilityslot 0
        level 74
        pokemon SPECIES_MARACTUS
        move MOVE_SPIKY_SHIELD
        move MOVE_RAGE_POWDER
        move MOVE_KNOCK_OFF
        move MOVE_GIGA_DRAIN
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 74
        pokemon SPECIES_ORICORIO
        move MOVE_AURA_SPHERE
        move MOVE_HURRICANE
        move MOVE_PROTECT
        move MOVE_REVELATION_DANCE
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 74
        pokemon SPECIES_FEAROW
        move MOVE_DRILL_RUN
        move MOVE_BRAVE_BIRD
        move MOVE_PROTECT
        move MOVE_PURSUIT
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 32
        level 74
        pokemon SPECIES_SWELLOW
        move MOVE_QUICK_ATTACK
        move MOVE_BRAVE_BIRD
        move MOVE_ENDEAVOR
        move MOVE_RETURN
        ballseal 0
    endparty

trainerdata 300, "Roy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 300
        // mon 0
        ivs 50
        abilityslot 0
        level 71
        pokemon SPECIES_FEAROW
        move MOVE_DRILL_RUN
        move MOVE_DRILL_PECK
        move MOVE_ROOST
        move MOVE_PURSUIT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 71
        pokemon SPECIES_BOMBIRDIER
        move MOVE_ROCK_SLIDE
        move MOVE_PROTECT
        move MOVE_KNOCK_OFF
        move MOVE_DUAL_WINGBEAT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 71
        pokemon SPECIES_FLAMIGO
        move MOVE_THROAT_CHOP
        move MOVE_BRAVE_BIRD
        move MOVE_DETECT
        move MOVE_CLOSE_COMBAT
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 0
        level 71
        pokemon SPECIES_DODRIO
        move MOVE_QUICK_ATTACK
        move MOVE_FLARE_BLITZ
        move MOVE_BRAVE_BIRD
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 301, "Boris"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 301
        // mon 0
        ivs 50
        abilityslot 0
        level 72
        pokemon SPECIES_UNFEZANT
        move MOVE_BOOMBURST
        move MOVE_HURRICANE
        move MOVE_TAILWIND
        move MOVE_ROOST
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 72
        monwithform SPECIES_ORICORIO, 2
        move MOVE_REVELATION_DANCE
        move MOVE_ROOST
        move MOVE_AURA_SPHERE
        move MOVE_HURRICANE
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 72
        pokemon SPECIES_MINIOR
        move MOVE_SHELL_SMASH
        move MOVE_ACROBATICS
        move MOVE_HIGH_HORSEPOWER
        move MOVE_ROCK_SLIDE
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 32
        level 72
        pokemon SPECIES_BOMBIRDIER
        move MOVE_ROCK_SLIDE
        move MOVE_PROTECT
        move MOVE_KNOCK_OFF
        move MOVE_DUAL_WINGBEAT
        ballseal 0
    endparty

trainerdata 302, "Bob"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 302
        // mon 0
        ivs 50
        abilityslot 0
        level 72
        pokemon SPECIES_MASQUERAIN
        move MOVE_QUIVER_DANCE
        move MOVE_HYDRO_PUMP
        move MOVE_BUG_BUZZ
        move MOVE_HURRICANE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 72
        pokemon SPECIES_PIDGEOT
        move MOVE_HURRICANE
        move MOVE_HEAT_WAVE
        move MOVE_TAILWIND
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 72
        pokemon SPECIES_SWELLOW
        move MOVE_QUICK_ATTACK
        move MOVE_BRAVE_BIRD
        move MOVE_ENDEAVOR
        move MOVE_ROOST
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 0
        level 72
        pokemon SPECIES_SWANNA
        move MOVE_HURRICANE
        move MOVE_HYDRO_PUMP
        move MOVE_ROOST
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 303, "Jose"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 303
        // mon 0
        ivs 50
        abilityslot 0
        level 51
        pokemon SPECIES_CORVIKNIGHT
        move MOVE_BODY_PRESS
        move MOVE_ROOST
        move MOVE_IRON_DEFENSE
        move MOVE_DRILL_PECK
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 51
        pokemon SPECIES_TALONFLAME
        move MOVE_FLARE_BLITZ
        move MOVE_BRAVE_BIRD
        move MOVE_FLAME_CHARGE
        move MOVE_ME_FIRST
        ballseal 0
    endparty

trainerdata 304, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 304
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 42
        pokemon SPECIES_GOLDUCK
        ballseal 0
    endparty

trainerdata 305, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 305
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 42
        pokemon SPECIES_GOLDUCK
        ballseal 0
    endparty

trainerdata 306, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 306
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 42
        pokemon SPECIES_GOLDUCK
        ballseal 0
    endparty

trainerdata 307, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 307
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 42
        pokemon SPECIES_GOLDUCK
        ballseal 0
    endparty

trainerdata 308, "Jerry"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_CAMPER
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 308
        // mon 0
        ivs 200
        abilityslot 0
        level 72
        monwithform SPECIES_GOLEM, 1
        item ITEM_AIR_BALLOON
        move MOVE_HEAVY_SLAM
        move MOVE_EXPLOSION
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        ability ABILITY_GALVANIZE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_AERODACTYL
        item ITEM_FOCUS_SASH
        move MOVE_EARTHQUAKE
        move MOVE_HEAD_SMASH
        move MOVE_BRAVE_BIRD
        move MOVE_PROTECT
        ability ABILITY_ROCK_HEAD
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_KABUTOPS
        item ITEM_LIFE_ORB
        move MOVE_X_SCISSOR
        move MOVE_RAZOR_SHELL
        move MOVE_ROCK_SLIDE
        move MOVE_PROTECT
        ability ABILITY_SHARPNESS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_LUNATONE
        item ITEM_LEFTOVERS
        move MOVE_MOONBLAST
        move MOVE_EARTH_POWER
        move MOVE_POWER_GEM
        move MOVE_HYPNOSIS
        ability ABILITY_LEVITATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_RELICANTH
        item ITEM_LUM_BERRY
        move MOVE_HEAD_SMASH
        move MOVE_AQUA_TAIL
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_POLISH
        ability ABILITY_ROCK_HEAD
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 309, "Dwayne"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 309
        // mon 0
        ivs 0
        abilityslot 0
        level 64
        pokemon SPECIES_VENOMOTH
        move MOVE_QUIVER_DANCE
        move MOVE_SLUDGE_WAVE
        move MOVE_BUG_BUZZ
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 64
        pokemon SPECIES_NIDOKING
        move MOVE_EARTHQUAKE
        move MOVE_MEGAHORN
        move MOVE_POISON_JAB
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 64
        pokemon SPECIES_HEATMOR
        move MOVE_POWER_GEM
        move MOVE_EARTH_POWER
        move MOVE_LAVA_PLUME
        move MOVE_PROTECT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 64
        pokemon SPECIES_CLODSIRE
        move MOVE_TOXIC
        move MOVE_RECOVER
        move MOVE_EARTHQUAKE
        move MOVE_SLUDGE_BOMB
        ballseal 0
    endparty

trainerdata 310, "Harris"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 310
        // mon 0
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_VOLCARONA
        move MOVE_QUIVER_DANCE
        move MOVE_FIERY_DANCE
        move MOVE_BUG_BUZZ
        move MOVE_GIGA_DRAIN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_SWALOT
        move MOVE_RECOVER
        move MOVE_EARTH_POWER
        move MOVE_ICE_BEAM
        move MOVE_THUNDERBOLT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_TENTACRUEL
        move MOVE_RECOVER
        move MOVE_SURF
        move MOVE_SLUDGE_BOMB
        move MOVE_HYDRO_PUMP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_VENUSAUR
        move MOVE_LEECH_SEED
        move MOVE_PROTECT
        move MOVE_SLEEP_POWDER
        move MOVE_GIGA_DRAIN
        ballseal 0
    endparty

trainerdata 311, "Zeke"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_BIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 311
        // mon 0
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_NINETALES
        ability ABILITY_DROUGHT
        move MOVE_SHADOW_BALL
        move MOVE_PROTECT
        move MOVE_FLAMETHROWER
        move MOVE_DAZZLING_GLEAM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_VILEPLUME
        ability ABILITY_CHLOROPHYLL
        move MOVE_GIGA_DRAIN
        move MOVE_SOLAR_BEAM
        move MOVE_MOONBLAST
        move MOVE_SLUDGE_BOMB
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_DUSTOX
        move MOVE_QUIVER_DANCE
        move MOVE_SLUDGE_BOMB
        move MOVE_EXTRASENSORY
        move MOVE_BUG_BUZZ
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_CERULEDGE
        move MOVE_FLARE_BLITZ
        move MOVE_PSYCHO_CUT
        move MOVE_WILL_O_WISP
        move MOVE_FLAME_CHARGE
        ballseal 0
    endparty

trainerdata 312, "Charles"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 312
        // mon 0
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_HYDREIGON
        move MOVE_DRACO_METEOR
        move MOVE_U_TURN
        move MOVE_DARK_PULSE
        move MOVE_FLAMETHROWER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_SEISMITOAD
        move MOVE_DRAIN_PUNCH
        move MOVE_MUDDY_WATER
        move MOVE_KNOCK_OFF
        move MOVE_RECOVER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_COMFEY
        move MOVE_TAUNT
        move MOVE_MOONBLAST
        move MOVE_FLORAL_HEALING
        move MOVE_LEECH_SEED
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_CONKELDURR
        move MOVE_DRAIN_PUNCH
        move MOVE_PROTECT
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        ballseal 0
    endparty

trainerdata 313, "Reese"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 313
        // mon 0
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_VOLBEAT
        move MOVE_MOONBLAST
        move MOVE_HYPNOSIS
        move MOVE_BUG_BUZZ
        move MOVE_HELPING_HAND
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_KROOKODILE
        move MOVE_CLOSE_COMBAT
        move MOVE_HEADLONG_RUSH
        move MOVE_KNOCK_OFF
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_OINKOLOGNE
        move MOVE_PROTECT
        move MOVE_DOUBLE_EDGE
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_HOUNDSTONE
        move MOVE_PROTECT
        move MOVE_LAST_RESPECTS
        move MOVE_CRUNCH
        move MOVE_PLAY_ROUGH
        ballseal 0
    endparty

trainerdata 314, "Joel"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS
    trainerclass CLASS_BIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 314
        // mon 0
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_MAROWAK
        item ITEM_THICK_CLUB
        move MOVE_BONE_RUSH
        move MOVE_ROCK_SLIDE
        move MOVE_PROTECT
        move MOVE_SWORDS_DANCE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_BEHEEYEM
        item ITEM_LEFTOVERS
        move MOVE_TRICK_ROOM
        move MOVE_PROTECT
        move MOVE_ICE_BEAM
        move MOVE_THUNDERBOLT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_HAXORUS
        item ITEM_LIFE_ORB
        move MOVE_CLOSE_COMBAT
        move MOVE_PROTECT
        move MOVE_DRAGON_RUSH
        move MOVE_EARTHQUAKE
        ballseal 0
    endparty

trainerdata 315, "Glenn"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_BIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 315
        // mon 0
        ivs 0
        abilityslot 2
        level 71
        pokemon SPECIES_SPINDA
        ability ABILITY_CONTRARY
        move MOVE_SUPERPOWER
        move MOVE_EXTREME_SPEED
        move MOVE_PROTECT
        move MOVE_SHADOW_CLAW
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 2
        level 71
        pokemon SPECIES_DEWGONG
        ability ABILITY_THICK_FAT
        move MOVE_PERISH_SONG
        move MOVE_HYDRO_PUMP
        move MOVE_MOONBLAST
        move MOVE_ICE_BEAM
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 2
        level 71
        pokemon SPECIES_RABSCA
        ability ABILITY_TINTED_LENS
        move MOVE_PSYCHIC
        move MOVE_BUG_BUZZ
        move MOVE_PROTECT
        move MOVE_SAFEGUARD
        ballseal 0
    endparty

trainerdata 316, "Herman"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PSYCHIC_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 316
        // mon 0
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_ALAKAZAM
        move MOVE_PSYCHIC
        move MOVE_LIGHT_SCREEN
        move MOVE_REFLECT
        move MOVE_SHADOW_BALL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_HYPNO
        move MOVE_HYPNOSIS
        move MOVE_DRAIN_PUNCH
        move MOVE_ZEN_HEADBUTT
        move MOVE_BULK_UP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_EXEGGUTOR
        move MOVE_PSYCHIC
        move MOVE_HYPNOSIS
        move MOVE_GIGA_DRAIN
        move MOVE_DREAM_EATER
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_GRUMPIG
        move MOVE_PROTECT
        move MOVE_PSYCHIC
        move MOVE_POWER_GEM
        move MOVE_EARTH_POWER
        ballseal 0
    endparty

trainerdata 317, "Fidel"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PSYCHIC_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 317
        // mon 0
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_ORANGURU        
        move MOVE_NASTY_PLOT
        move MOVE_POWER_GEM
        move MOVE_STORED_POWER
        move MOVE_HYPER_VOICE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_RABSCA        
        move MOVE_PSYCHIC
        move MOVE_BUG_BUZZ
        move MOVE_PROTECT
        move MOVE_SAFEGUARD
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_ESPATHRA        
        move MOVE_PROTECT
        move MOVE_STORED_POWER
        move MOVE_DAZZLING_GLEAM
        move MOVE_AIR_SLASH
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_GOTHITELLE        
        move MOVE_PSYCHIC
        move MOVE_FOCUS_BLAST
        move MOVE_SHADOW_BALL
        move MOVE_TELEPORT
        ballseal 0
    endparty

trainerdata 318, "Burt"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FIREBREATHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 318
        // mon 0
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_WEEZING
        move MOVE_PAIN_SPLIT
        move MOVE_SLUDGE_BOMB
        move MOVE_HEAT_WAVE
        move MOVE_AROMATIC_MIST
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_ARCANINE
        move MOVE_EXTREME_SPEED
        move MOVE_LAVA_PLUME
        move MOVE_CRUNCH
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_LIEPARD
        move MOVE_FAKE_OUT
        move MOVE_HONE_CLAWS
        move MOVE_DARK_PULSE
        move MOVE_MOONBLAST
        ballseal 0
    endparty

trainerdata 319, "Bill"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FIREBREATHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 319
        // mon 0
        ivs 0
        abilityslot 0
        level 12
        pokemon SPECIES_RABOOT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 12
        pokemon SPECIES_SIZZLIPEDE
        ballseal 0
    endparty

trainerdata 320, "Martin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 320
        // mon 0
        ivs 0
        abilityslot 0
        level 69
        pokemon SPECIES_GOLDUCK
        move MOVE_DISABLE
        move MOVE_PSYCHIC
        move MOVE_SURF
        move MOVE_PSYCH_UP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 69
        pokemon SPECIES_WUGTRIO
        move MOVE_LIQUIDATION
        move MOVE_THROAT_CHOP
        move MOVE_EARTHQUAKE
        move MOVE_AQUA_JET
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 69
        pokemon SPECIES_BRUXISH
        move MOVE_THUNDER_FANG
        move MOVE_ICE_FANG
        move MOVE_FIRE_FANG
        move MOVE_WAVE_CRASH
        ballseal 0
    endparty

trainerdata 321, "Stephen"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 321
        // mon 0
        ivs 0
        abilityslot 0
        level 69
        pokemon SPECIES_TENTACRUEL
        move MOVE_TOXIC_SPIKES
        move MOVE_HYDRO_PUMP
        move MOVE_SLUDGE_WAVE
        move MOVE_RECOVER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 69
        pokemon SPECIES_PALAFIN
        move MOVE_PROTECT
        move MOVE_FLIP_TURN
        move MOVE_ACROBATICS
        move MOVE_JET_PUNCH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 69
        pokemon SPECIES_GOLISOPOD
        move MOVE_FIRST_IMPRESSION
        move MOVE_RAZOR_SHELL
        move MOVE_ROCK_SMASH
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 322, "Barney"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 322
        // mon 0
        ivs 0
        abilityslot 0
        level 69
        pokemon SPECIES_GYARADOS
        move MOVE_WAVE_CRASH
        move MOVE_DRAGON_RUSH
        move MOVE_PROTECT
        move MOVE_CRUNCH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 69
        pokemon SPECIES_PRIMARINA
        move MOVE_HYDRO_PUMP
        move MOVE_MOONBLAST
        move MOVE_CALM_MIND
        move MOVE_ICY_WIND
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 69
        pokemon SPECIES_JELLICENT
        move MOVE_WATER_SPOUT
        move MOVE_SHADOW_BALL
        move MOVE_SCALD
        move MOVE_RECOVER
        ballseal 0
    endparty

trainerdata 323, "Tully"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 323
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_QWILFISH
        ballseal 0
    endparty

trainerdata 324, "Tully"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 324
        // mon 0
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_GOLDEEN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_GOLDEEN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_QWILFISH
        ballseal 0
    endparty

trainerdata 325, "Wilton"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 325
        // mon 0
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_GOLDEEN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_GOLDEEN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 326, "Jo & Zoe"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_TWINS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 326
        // mon 0
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_DHELMISE
        item ITEM_LEFTOVERS
        move MOVE_PHANTOM_FORCE
        move MOVE_HEAVY_SLAM
        move MOVE_POWER_WHIP
        move MOVE_LIQUIDATION
        ability ABILITY_STEELWORKER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_LURANTIS
        item ITEM_SITRUS_BERRY
        move MOVE_LEAF_STORM
        move MOVE_SUPERPOWER
        move MOVE_SYNTHESIS
        move MOVE_U_TURN
        ability ABILITY_CONTRARY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_SHIINOTIC
        item ITEM_SITRUS_BERRY
        move MOVE_HELPING_HAND
        move MOVE_MOONBLAST
        move MOVE_SPORE
        move MOVE_RAGE_POWDER
        ability ABILITY_EFFECT_SPORE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_CACTURNE
        item ITEM_ROCKY_HELMET
        move MOVE_SPIKY_SHIELD
        move MOVE_LEECH_SEED
        move MOVE_GIGA_DRAIN
        move MOVE_SUCKER_PUNCH
        ability ABILITY_WATER_ABSORB
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_RELAXED
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 327, "Danny"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 327
        // mon 0
        ivs 0
        abilityslot 32
        level 73
        pokemon SPECIES_JYNX
        move MOVE_NASTY_PLOT
        move MOVE_ICY_WIND
        move MOVE_PSYSHOCK
        move MOVE_FOCUS_BLAST
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_LURANTIS
        move MOVE_LEAF_STORM
        move MOVE_SUPERPOWER
        move MOVE_SYNTHESIS
        move MOVE_U_TURN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_DACHSBUN
        move MOVE_PLAY_ROUGH
        move MOVE_BODY_PRESS
        move MOVE_BULK_UP
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 328, "Tommy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 328
        // mon 0
        ivs 0
        abilityslot 0
        level 72
        monwithform SPECIES_RATICATE, 1
        move MOVE_DOUBLE_EDGE
        move MOVE_SUCKER_PUNCH
        move MOVE_PROTECT
        move MOVE_PURSUIT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_ALAKAZAM
        move MOVE_PSYCHIC
        move MOVE_CALM_MIND
        move MOVE_REFLECT
        move MOVE_FOCUS_BLAST
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_DUGTRIO
        move MOVE_PROTECT
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        move MOVE_IRON_HEAD
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_BELLIBOLT
        move MOVE_DISCHARGE
        move MOVE_SLACK_OFF
        move MOVE_EARTH_POWER
        move MOVE_SURF
        ballseal 0
    endparty

trainerdata 329, "Dudley"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 329
        // mon 0
        ivs 0
        abilityslot 0
        level 67
        pokemon SPECIES_SIMIPOUR
        move MOVE_HYDRO_PUMP
        move MOVE_DAZZLING_GLEAM
        move MOVE_PROTECT
        move MOVE_NASTY_PLOT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 67
        pokemon SPECIES_SAWK
        move MOVE_MACH_PUNCH
        move MOVE_KNOCK_OFF
        move MOVE_ICE_PUNCH
        move MOVE_THUNDER_PUNCH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 67
        pokemon SPECIES_LILLIGANT
        move MOVE_HELPING_HAND
        move MOVE_LEAF_STORM
        move MOVE_LEECH_SEED
        move MOVE_AURA_SPHERE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 67
        pokemon SPECIES_CARRACOSTA
        move MOVE_ROCK_SLIDE
        move MOVE_AQUA_TAIL
        move MOVE_AQUA_JET
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 330, "Joe"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 330
        // mon 0
        ivs 0
        abilityslot 0
        level 68
        pokemon SPECIES_BEARTIC
        ability ABILITY_SLUSH_RUSH
        move MOVE_SWORDS_DANCE
        move MOVE_PLAY_NICE
        move MOVE_BRICK_BREAK
        move MOVE_ICICLE_CRASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 68
        monwithform SPECIES_NINETALES, 1
        ability ABILITY_SNOW_WARNING
        move MOVE_AURORA_VEIL
        move MOVE_DAZZLING_GLEAM
        move MOVE_BLIZZARD
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 68
        pokemon SPECIES_CLOYSTER
        ability ABILITY_SKILL_LINK
        move MOVE_ICICLE_SPEAR
        move MOVE_ICE_SHARD
        move MOVE_ROCK_BLAST
        move MOVE_RAZOR_SHELL
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 68
        pokemon SPECIES_ARBOLIVA
        ability ABILITY_SEED_SOWER
        move MOVE_GIGA_DRAIN
        move MOVE_HELPING_HAND
        move MOVE_BOOMBURST
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 331, "Billy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 331
        // mon 0
        ivs 0
        abilityslot 32
        level 73
        pokemon SPECIES_PARASECT
        move MOVE_LEECH_LIFE
        move MOVE_RAGE_POWDER
        move MOVE_CROSS_POISON
        move MOVE_LEECH_SEED
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_POLIWRATH        
        move MOVE_CLOSE_COMBAT
        move MOVE_WAVE_CRASH
        move MOVE_EARTHQUAKE
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 73
        pokemon SPECIES_DITTO
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_DITTO
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0
    endparty

trainerdata 332, "Heidi"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PICNICKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 332
        // mon 0
        ivs 0
        abilityslot 32
        level 66
        pokemon SPECIES_FEAROW
        move MOVE_DRILL_RUN
        move MOVE_DRILL_PECK
        move MOVE_ROOST
        move MOVE_PURSUIT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 66
        pokemon SPECIES_BUTTERFREE
        move MOVE_TAILWIND
        move MOVE_RAGE_POWDER
        move MOVE_SLEEP_POWDER
        move MOVE_BUG_BUZZ
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_SIMISEAR
        move MOVE_FIRE_BLAST
        move MOVE_DAZZLING_GLEAM
        move MOVE_NASTY_PLOT
        move MOVE_PROTECT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 66
        pokemon SPECIES_MIGHTYENA
        move MOVE_PLAY_ROUGH
        move MOVE_SUCKER_PUNCH
        move MOVE_KNOCK_OFF
        move MOVE_TAUNT
        ballseal 0
    endparty

trainerdata 333, "Edna"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_PICNICKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 333
        // mon 0
        ivs 0
        abilityslot 32
        level 65
        pokemon SPECIES_BEEDRILL
        ability ABILITY_ADAPTABILITY
        item ITEM_NONE
        move MOVE_GUNK_SHOT
        move MOVE_FELL_STINGER
        move MOVE_DRILL_RUN
        move MOVE_U_TURN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 66
        pokemon SPECIES_SWELLOW
        ability ABILITY_GUTS
        item ITEM_FLAME_ORB
        move MOVE_BRAVE_BIRD
        move MOVE_QUICK_ATTACK
        move MOVE_ENDEAVOR
        move MOVE_FACADE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 65
        monwithform SPECIES_SANDSLASH, 1
        ability ABILITY_TOUGH_CLAWS
        item ITEM_NONE
        move MOVE_ICICLE_CRASH
        move MOVE_IRON_HEAD
        move MOVE_ROCK_SLIDE
        move MOVE_SWORDS_DANCE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 66
        pokemon SPECIES_SOLROCK
        ability ABILITY_LEVITATE
        item ITEM_NONE
        move MOVE_FLARE_BLITZ
        move MOVE_HIGH_HORSEPOWER
        move MOVE_EXPLOSION
        move MOVE_ROCK_SLIDE
        ballseal 0
    endparty

trainerdata 334, "Gina"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 334
        // mon 0
        ivs 0
        abilityslot 0
        level 26
        pokemon SPECIES_SKIPLOOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 26
        pokemon SPECIES_SKIPLOOM
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 44
        pokemon SPECIES_IVYSAUR
        ballseal 0
    endparty

trainerdata 335, "Erin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 335
        // mon 0
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_GLOOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 41
        pokemon SPECIES_RAPIDASH
        ballseal 0
    endparty

trainerdata 336, "Tanya"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_PICNICKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 336
        // mon 0
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_DECIDUEYE
        item ITEM_LIFE_ORB
        move MOVE_SHADOW_SNEAK
        move MOVE_SPIRIT_SHACKLE
        move MOVE_LEAF_BLADE
        move MOVE_BRAVE_BIRD
        ability ABILITY_SNIPER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 70
        monwithform SPECIES_DECIDUEYE, 1
        item ITEM_LEFTOVERS
        move MOVE_BULK_UP
        move MOVE_TRIPLE_ARROWS
        move MOVE_LEAF_BLADE
        move MOVE_BRAVE_BIRD
        ability ABILITY_SNIPER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_TSAREENA
        item ITEM_CHOICE_SCARF
        move MOVE_POWER_WHIP
        move MOVE_HIGH_JUMP_KICK
        move MOVE_U_TURN
        move MOVE_PLAY_ROUGH
        ability ABILITY_QUEENLY_MAJESTY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_VENUSAUR
        item ITEM_BLACK_SLUDGE
        move MOVE_SLEEP_POWDER
        move MOVE_GIGA_DRAIN
        move MOVE_SLUDGE_BOMB
        move MOVE_SYNTHESIS
        ability ABILITY_CHLOROPHYLL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 337, "Gregory"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_GENTLEMAN
    nummons 3
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 337
        // mon 0
        ivs 255
        abilityslot 0
        level 63
        pokemon SPECIES_PAWMOT
        item ITEM_MAGNET
        move MOVE_CLOSE_COMBAT
        move MOVE_ICE_PUNCH
        move MOVE_TRICK_ROOM
        move MOVE_THUNDER_PUNCH
        ability ABILITY_IRON_FIST
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BRAVE
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 1
        pokemon SPECIES_TOGEDEMARU
        item ITEM_BERRY_JUICE
        move MOVE_FAKE_OUT
        move MOVE_ENDEAVOR
        move MOVE_ENCORE
        move MOVE_SPIKY_SHIELD
        ability ABILITY_STURDY
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 0, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BRAVE
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 63
        pokemon SPECIES_EMOLGA
        item ITEM_LEFTOVERS
        move MOVE_DISCHARGE
        move MOVE_HELPING_HAND
        move MOVE_KNOCK_OFF
        move MOVE_QUICK_ATTACK
        ability ABILITY_STATIC
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 338, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_GENTLEMAN
    nummons 1
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 338
        // mon 0
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_PONYTA
        ballseal 0
    endparty

trainerdata 339, "Wai"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BLACK_BELT
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 339
        // mon 0
        ivs 30
        abilityslot 32
        level 38
        pokemon SPECIES_MACHOKE
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 32
        level 40
        pokemon SPECIES_MACHOKE
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 0
        level 42
        pokemon SPECIES_MEDITITE
        ballseal 0
    endparty

trainerdata 340, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 340
        // mon 0
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 341, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 341
        // mon 0
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 342, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 342
        // mon 0
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 343, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 343
        // mon 0
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 344, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 344
        // mon 0
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 345, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 345
        // mon 0
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 346, "Julia"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_BEAUTY
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 346
        // mon 0
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_VENUSAUR
        item ITEM_BLACK_SLUDGE
        move MOVE_SLEEP_POWDER
        move MOVE_GIGA_DRAIN
        move MOVE_SLUDGE_BOMB
        move MOVE_SYNTHESIS
        ability ABILITY_CHLOROPHYLL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_MEOWSCARADA
        item ITEM_LIFE_ORB
        move MOVE_JUMP_KICK
        move MOVE_NIGHT_SLASH
        move MOVE_TRIPLE_AXEL
        move MOVE_U_TURN
        ability ABILITY_PROTEAN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_EXEGGUTOR
        item ITEM_SITRUS_BERRY
        move MOVE_PROTECT
        move MOVE_DRACO_METEOR
        move MOVE_LEAF_STORM
        move MOVE_SLUDGE_BOMB
        ability ABILITY_HARVEST
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 31, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_VILEPLUME
        item ITEM_SITRUS_BERRY
        move MOVE_SLUDGE_BOMB
        move MOVE_GIGA_DRAIN
        move MOVE_MOONBLAST
        move MOVE_MOONLIGHT
        ability ABILITY_EFFECT_SPORE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 347, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 347
        // mon 0
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 348, "Robert"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKEFAN_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 348
        // mon 0
        ivs 0
        abilityslot 32
        level 65
        pokemon SPECIES_AUDINO
        move MOVE_DAZZLING_GLEAM
        move MOVE_HYPER_VOICE
        move MOVE_AFTER_YOU
        move MOVE_WISH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 66
        pokemon SPECIES_KOMALA
        move MOVE_YAWN
        move MOVE_BODY_SLAM
        move MOVE_SUCKER_PUNCH
        move MOVE_U_TURN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 65
        pokemon SPECIES_BEWEAR
        move MOVE_BRUTAL_SWING
        move MOVE_HAMMER_ARM
        move MOVE_PLAY_ROUGH
        move MOVE_PROTECT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 66
        pokemon SPECIES_KLAWF
        move MOVE_SWORDS_DANCE
        move MOVE_ROCK_SLIDE
        move MOVE_X_SCISSOR
        move MOVE_ROCK_SMASH
        ballseal 0
    endparty

trainerdata 349, "Joshua"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKEFAN_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 349
        // mon 0
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_RAICHU
        move MOVE_NASTY_PLOT
        move MOVE_THUNDERBOLT
        move MOVE_SURF
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_EMOLGA
        move MOVE_HELPING_HAND
        move MOVE_VOLT_SWITCH
        move MOVE_LIGHT_SCREEN
        move MOVE_REFLECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_HAXORUS
        move MOVE_CLOSE_COMBAT
        move MOVE_DRAGON_RUSH
        move MOVE_SWORDS_DANCE
        move MOVE_ROCK_SLIDE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_MUDSDALE
        move MOVE_BODY_PRESS
        move MOVE_EARTHQUAKE
        move MOVE_IRON_DEFENSE
        move MOVE_COUNTER
        ballseal 0
    endparty

trainerdata 350, "Carter"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKEFAN_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 350
        // mon 0
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_ALTARIA
        move MOVE_PLAY_ROUGH
        move MOVE_ROCK_SLIDE
        move MOVE_HIGH_HORSEPOWER
        move MOVE_ROOST
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_BLASTOISE
        move MOVE_WATER_PULSE
        move MOVE_DARK_PULSE
        move MOVE_AURA_SPHERE
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_FLYGON
        move MOVE_EARTH_POWER
        move MOVE_QUIVER_DANCE
        move MOVE_DRAGON_PULSE
        move MOVE_BUG_BUZZ
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_MANECTRIC
        move MOVE_PROTECT
        move MOVE_FLAMETHROWER
        move MOVE_DISCHARGE
        move MOVE_VOLT_SWITCH
        ballseal 0
    endparty

trainerdata 351, "Trevor"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_POKEFAN_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 351
        // mon 0
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_SLAKING
        ability ABILITY_TRUANT
        item ITEM_CHOICE_BAND
        move MOVE_GIGA_IMPACT
        move MOVE_HAMMER_ARM
        move MOVE_PUNISHMENT
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_ZANGOOSE
        ability ABILITY_TOXIC_BOOST
        item ITEM_TOXIC_ORB
        move MOVE_EXTREME_SPEED
        move MOVE_CLOSE_COMBAT
        move MOVE_GUNK_SHOT
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_SEVIPER
        ability ABILITY_INFILTRATOR
        item ITEM_SITRUS_BERRY
        move MOVE_THUNDER_FANG
        move MOVE_FIRE_FANG
        move MOVE_GUNK_SHOT
        move MOVE_ICE_FANG
        ballseal 0
    endparty

trainerdata 352, "Georgia"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKEFAN_F
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 352
        // mon 0
        ivs 0
        abilityslot 32
        level 31
        pokemon SPECIES_SENTRET
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 31
        pokemon SPECIES_SENTRET
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 31
        pokemon SPECIES_SENTRET
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_FURRET
        ballseal 0

        // mon 4
        ivs 0
        abilityslot 32
        level 31
        pokemon SPECIES_SENTRET
        ballseal 0
    endparty

trainerdata 353, "Grunt"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_TEAM_ROCKET
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 353
        // mon 0
        ivs 30
        abilityslot 0
        level 66
        pokemon SPECIES_TOEDSCRUEL
        move MOVE_GIGA_DRAIN
        move MOVE_EARTH_POWER
        move MOVE_SPORE
        move MOVE_HEX
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 66
        pokemon SPECIES_CETITAN
        move MOVE_ICICLE_CRASH
        move MOVE_FLIP_TURN
        move MOVE_BOUNCE
        move MOVE_ICE_SHARD
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 0
        level 66
        pokemon SPECIES_EXPLOUD
        move MOVE_PARTING_SHOT
        move MOVE_BOOMBURST
        move MOVE_SUPERSONIC
        move MOVE_PROTECT
        ballseal 0

        // mon 3
        ivs 30
        abilityslot 0
        level 66
        pokemon SPECIES_UNFEZANT
        move MOVE_BOOMBURST
        move MOVE_HURRICANE
        move MOVE_TAILWIND
        move MOVE_ROOST
        ballseal 0
    endparty

trainerdata 354, "Laura"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LASS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 354
        // mon 0
        ivs 0
        abilityslot 0
        level 68
        pokemon SPECIES_PIDGEOT
        move MOVE_HURRICANE
        move MOVE_HEAT_WAVE
        move MOVE_TAILWIND
        move MOVE_TWISTER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 68
        pokemon SPECIES_SHIFTRY
        move MOVE_CRUNCH
        move MOVE_HURRICANE
        move MOVE_HEAT_WAVE
        move MOVE_LEAF_BLADE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 68
        pokemon SPECIES_ESCAVALIER
        move MOVE_SUPERPOWER
        move MOVE_IRON_HEAD
        move MOVE_X_SCISSOR
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 355, "Shannon"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LASS
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 355
        // mon 0
        ivs 0
        abilityslot 0
        level 68
        pokemon SPECIES_SCOVILLAIN
        move MOVE_OVERHEAT
        move MOVE_SEED_BOMB
        move MOVE_CRUNCH
        move MOVE_STRENGTH_SAP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 68
        pokemon SPECIES_PASSIMIAN
        move MOVE_GUNK_SHOT
        move MOVE_ROCK_SLIDE
        move MOVE_KNOCK_OFF
        move MOVE_CLOSE_COMBAT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 68
        pokemon SPECIES_CHANDELURE
        move MOVE_SHADOW_BALL
        move MOVE_WILL_O_WISP
        move MOVE_HEX
        move MOVE_AURA_SPHERE
        ballseal 0
    endparty

trainerdata 356, "Michelle"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_LASS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 356
        // mon 0
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_FERROTHORN
        item ITEM_ROCKY_HELMET
        move MOVE_SPIKES
        move MOVE_POWER_WHIP
        move MOVE_GYRO_BALL
        move MOVE_PAYBACK
        ability ABILITY_IRON_BARBS
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 0, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BRAVE
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_WHIMSICOTT
        item ITEM_SITRUS_BERRY
        move MOVE_TAILWIND
        move MOVE_TAUNT
        move MOVE_COTTON_SPORE
        move MOVE_STUN_SPORE
        ability ABILITY_PRANKSTER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_MARACTUS
        item ITEM_SITRUS_BERRY
        move MOVE_SPIKY_SHIELD
        move MOVE_RAGE_POWDER
        move MOVE_KNOCK_OFF
        move MOVE_GIGA_DRAIN
        ability ABILITY_STORM_DRAIN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_QUIET
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_SERPERIOR
        item ITEM_LIFE_ORB
        move MOVE_LEAF_STORM
        move MOVE_DRAGON_PULSE
        move MOVE_GIGA_DRAIN
        move MOVE_HIDDEN_POWER
        ability ABILITY_CONTRARY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 357, "Clarke"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 357
        // mon 0
        ivs 0
        abilityslot 32
        level 66
        pokemon SPECIES_CRUSTLE
        move MOVE_SHELL_SMASH
        move MOVE_LEECH_LIFE
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_ARCHEOPS
        move MOVE_TAILWIND
        move MOVE_POWER_GEM
        move MOVE_U_TURN
        move MOVE_CRUNCH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 66
        pokemon SPECIES_MIENSHAO
        move MOVE_FAKE_OUT
        move MOVE_HIGH_JUMP_KICK
        move MOVE_NIGHT_SLASH
        move MOVE_DETECT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 66
        pokemon SPECIES_BRAVIARY
        move MOVE_SUPERPOWER
        move MOVE_BRAVE_BIRD
        move MOVE_PSYCHO_CUT
        move MOVE_DEFOG
        ballseal 0
    endparty

trainerdata 358, "Kenny"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_HIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 358
        // mon 0
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_GALVANTULA
        move MOVE_ELECTROWEB
        move MOVE_BUG_BUZZ
        move MOVE_VOLT_SWITCH
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_GOLEM
        move MOVE_HAMMER_ARM
        move MOVE_PROTECT
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_MIENSHAO
        move MOVE_FAKE_OUT
        move MOVE_U_TURN
        move MOVE_CLOSE_COMBAT
        move MOVE_NIGHT_SLASH
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_SANDSLASH
        move MOVE_EARTHQUAKE
        move MOVE_SWORDS_DANCE
        move MOVE_ROCK_SLIDE
        move MOVE_PLAY_ROUGH
        ballseal 0
    endparty

trainerdata 359, "Jim"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 359
        // mon 0
        ivs 0
        abilityslot 32
        level 66
        pokemon SPECIES_POLIWRATH
        move MOVE_LIQUIDATION
        move MOVE_CLOSE_COMBAT
        move MOVE_HYPNOSIS
        move MOVE_ROCK_SLIDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 66
        pokemon SPECIES_GOLEM
        move MOVE_HAMMER_ARM
        move MOVE_HEAVY_SLAM
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 66
        pokemon SPECIES_HITMONLEE
        move MOVE_CLOSE_COMBAT
        move MOVE_FAKE_OUT
        move MOVE_HELPING_HAND
        move MOVE_ROCK_SLIDE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 66
        pokemon SPECIES_KABUTOPS
        move MOVE_SWORDS_DANCE
        move MOVE_AQUA_JET
        move MOVE_ROCK_SLIDE
        move MOVE_LIQUIDATION
        ballseal 0
    endparty

trainerdata 360, "Arnie"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BUG_CATCHER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 360
        // mon 0
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_VENONAT
        ballseal 0
    endparty

trainerdata 361, "Kevin"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_M
    nummons 5
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 361
        // mon 0
        ivs 50
        abilityslot 32
        level 68
        pokemon SPECIES_MIMIKYU
        move MOVE_SHADOW_SNEAK
        move MOVE_SHADOW_CLAW
        move MOVE_TRICK_ROOM
        move MOVE_WILL_O_WISP
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 69
        pokemon SPECIES_GHOLDENGO
        move MOVE_RECOVER
        move MOVE_SHADOW_BALL
        move MOVE_POWER_GEM
        move MOVE_FLASH_CANNON
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 69
        pokemon SPECIES_DRAMPA
        move MOVE_AURA_SPHERE
        move MOVE_HYPER_VOICE
        move MOVE_ENERGY_BALL
        move MOVE_TRICK_ROOM
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 0
        level 68
        monwithform SPECIES_MUK, 1
        move MOVE_KNOCK_OFF
        move MOVE_GUNK_SHOT
        move MOVE_ACID_ARMOR
        move MOVE_BODY_PRESS
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 0
        level 68
        pokemon SPECIES_PINSIR
        move MOVE_CLOSE_COMBAT
        move MOVE_X_SCISSOR
        move MOVE_STRENGTH
        move MOVE_SWORDS_DANCE
        ballseal 0
    endparty

trainerdata 362, "Quinn"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_ACE_TRAINER_F
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 362
        // mon 0
        ivs 50
        abilityslot 0
        level 74
        monwithform SPECIES_NINETALES, 1
        ability ABILITY_SNOW_WARNING
        move MOVE_AURORA_VEIL
        move MOVE_DAZZLING_GLEAM
        move MOVE_BLIZZARD
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 74
        pokemon SPECIES_BEARTIC
        ability ABILITY_SLUSH_RUSH
        move MOVE_SUPERPOWER
        move MOVE_PLAY_NICE
        move MOVE_BRICK_BREAK
        move MOVE_ICICLE_CRASH
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 74
        pokemon SPECIES_QUAQUAVAL
        ability ABILITY_MOXIE
        move MOVE_WAVE_CRASH
        move MOVE_CLOSE_COMBAT
        move MOVE_ACROBATICS
        move MOVE_AQUA_JET
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 32
        level 74
        pokemon SPECIES_HYDRAPPLE
        ability ABILITY_SUPERSWEET_SYRUP
        move MOVE_SYRUP_BOMB
        move MOVE_DRAGON_PULSE
        move MOVE_RECOVER
        move MOVE_YAWN
        ballseal 0
    endparty

trainerdata 363, "Emma" // TODO
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_ACE_TRAINER_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 363
        // mon 0
        ivs 50
        abilityslot 0
        level 28
        pokemon SPECIES_POLIWHIRL
        ballseal 0
    endparty

trainerdata 364, "Sam"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SUPER_NERD
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 364
        // mon 0
        ivs 0
        abilityslot 0
        level 65
        monwithform SPECIES_DUGTRIO, 1
        move MOVE_IRON_HEAD
        move MOVE_PROTECT
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_MUK
        move MOVE_DISABLE
        move MOVE_GUNK_SHOT
        move MOVE_SHADOW_PUNCH
        move MOVE_TOXIC
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_MAWILE
        move MOVE_PLAY_ROUGH
        move MOVE_IRON_HEAD
        move MOVE_PROTECT
        move MOVE_SUCKER_PUNCH
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_REVAVROOM
        move MOVE_SHIFT_GEAR
        move MOVE_IRON_HEAD
        move MOVE_GUNK_SHOT
        move MOVE_ROCK_SLIDE
        ballseal 0
    endparty

trainerdata 365, "Tyrone"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SUPER_NERD
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 365
        // mon 0
        ivs 0
        abilityslot 32
        level 65
        pokemon SPECIES_AGGRON
        move MOVE_HEAVY_SLAM
        move MOVE_ICE_PUNCH
        move MOVE_THUNDER_PUNCH
        move MOVE_BODY_PRESS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_TINKATON
        move MOVE_GIGATON_HAMMER
        move MOVE_PLAY_ROUGH
        move MOVE_PROTECT
        move MOVE_FAKE_OUT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 65
        pokemon SPECIES_BELLIBOLT
        move MOVE_DISCHARGE
        move MOVE_SLACK_OFF
        move MOVE_EARTH_POWER
        move MOVE_SURF
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 65
        pokemon SPECIES_ORTHWORM
        move MOVE_IRON_HEAD
        move MOVE_BODY_PRESS
        move MOVE_ROCK_SLIDE
        move MOVE_IRON_DEFENSE
        ballseal 0
    endparty

trainerdata 366, "Pat"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SUPER_NERD
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 366
        // mon 0
        ivs 50
        abilityslot 32
        level 68
        pokemon SPECIES_DITTO
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 68
        pokemon SPECIES_DITTO
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 68
        pokemon SPECIES_DITTO
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 32
        level 68
        pokemon SPECIES_DITTO
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0
    endparty

trainerdata 367, "Shawn"
    trainermontype TRAINER_DATA_TYPE_ITEMS
    trainerclass CLASS_SUPER_NERD
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 367
        // mon 0
        ivs 0
        abilityslot 32
        level 39
        pokemon SPECIES_MAGNEMITE
        item ITEM_NONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_MUK
        item ITEM_NUGGET
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 39
        pokemon SPECIES_MAGNEMITE
        item ITEM_NONE
        ballseal 0
    endparty

trainerdata 368, "Rebecca"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_MEDIUM
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 368
        // mon 0
        ivs 255
        abilityslot 0
        level 65
        pokemon SPECIES_JYNX
        item ITEM_FOCUS_SASH
        move MOVE_NASTY_PLOT
        move MOVE_ICY_WIND
        move MOVE_PSYSHOCK
        move MOVE_PERISH_SONG
        ability ABILITY_DRY_SKIN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 65
        pokemon SPECIES_GARDEVOIR
        item ITEM_LIFE_ORB
        move MOVE_MOONBLAST
        move MOVE_FUTURE_SIGHT
        move MOVE_TELEPORT
        move MOVE_HYPNOSIS
        ability ABILITY_SYNCHRONIZE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 65
        pokemon SPECIES_GRUMPIG
        item ITEM_TWISTED_SPOON
        move MOVE_PROTECT
        move MOVE_PSYCHIC
        move MOVE_POWER_GEM
        move MOVE_EARTH_POWER
        ability ABILITY_THICK_FAT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 369, "Darcy"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_MEDIUM
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 369
        // mon 0
        ivs 255
        abilityslot 0
        level 65
        pokemon SPECIES_SIGILYPH
        item ITEM_LEFTOVERS
        move MOVE_TAILWIND
        move MOVE_PSYCHIC
        move MOVE_AIR_SLASH
        move MOVE_SKILL_SWAP
        ability ABILITY_TINTED_LENS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 65
        pokemon SPECIES_ORANGURU
        item ITEM_LIFE_ORB
        move MOVE_NASTY_PLOT
        move MOVE_POWER_GEM
        move MOVE_STORED_POWER
        move MOVE_HYPER_VOICE
        ability ABILITY_SYMBIOSIS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 66
        pokemon SPECIES_BRUXISH
        item ITEM_MYSTIC_WATER
        move MOVE_THUNDER_FANG
        move MOVE_ICE_FANG
        move MOVE_FIRE_FANG
        move MOVE_WAVE_CRASH
        ability ABILITY_STRONG_JAW
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 370, "Jerome"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 370
        // mon 0
        ivs 0
        abilityslot 32
        level 76
        pokemon SPECIES_SEAKING
        move MOVE_MEGAHORN
        move MOVE_DOUBLE_EDGE
        move MOVE_WAVE_CRASH
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 76
        pokemon SPECIES_VELUZA
        move MOVE_NIGHT_SLASH
        move MOVE_PSYCHO_CUT
        move MOVE_WAVE_CRASH
        move MOVE_FLIP_TURN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 76
        pokemon SPECIES_SWANNA
        move MOVE_AIR_SLASH
        move MOVE_HYDRO_PUMP
        move MOVE_ROOST
        move MOVE_TAUNT
        ballseal 0
    endparty

trainerdata 371, "Tucker"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 371
        // mon 0
        ivs 0
        abilityslot 0
        level 76
        pokemon SPECIES_QUAQUAVAL
        move MOVE_WAVE_CRASH
        move MOVE_CLOSE_COMBAT
        move MOVE_ACROBATICS
        move MOVE_AQUA_JET
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 76
        pokemon SPECIES_CLOYSTER
        move MOVE_ROCK_BLAST
        move MOVE_ICICLE_SPEAR
        move MOVE_RAZOR_SHELL
        move MOVE_SHELL_SMASH
        ballseal 0
    endparty

trainerdata 372, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 372
        // mon 0
        ivs 0
        abilityslot 0
        level 13
        pokemon SPECIES_STARYU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_STARMIE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_HORSEA
        ballseal 0
    endparty

trainerdata 373, "Frankie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 373
        // mon 0
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_SWANNA
        move MOVE_AIR_SLASH
        move MOVE_HYDRO_PUMP
        move MOVE_ROOST
        move MOVE_TAUNT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_ALOMOMOLA
        move MOVE_RECOVER
        move MOVE_HELPING_HAND
        move MOVE_MOONBLAST
        move MOVE_SURF
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_ALOMOMOLA
        move MOVE_COIL
        move MOVE_CRUNCH
        move MOVE_AQUA_TAIL
        move MOVE_ICE_FANG
        ballseal 0
    endparty

trainerdata 374, "Tyson"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 374
        // mon 0
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_QUAGSIRE
        move MOVE_EARTHQUAKE
        move MOVE_YAWN
        move MOVE_SURF
        move MOVE_AMNESIA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_OCTILLERY
        move MOVE_SIGNAL_BEAM
        move MOVE_FLAMETHROWER
        move MOVE_OCTAZOOKA
        move MOVE_AURORA_BEAM
        ballseal 0
    endparty

trainerdata 375, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 375
        // mon 0
        ivs 0
        abilityslot 0
        level 13
        pokemon SPECIES_STARYU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_STARMIE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_HORSEA
        ballseal 0
    endparty

trainerdata 376, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SWIMMER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 376
        // mon 0
        ivs 0
        abilityslot 0
        level 13
        pokemon SPECIES_STARYU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_STARMIE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_HORSEA
        ballseal 0
    endparty

trainerdata 377, "Parker"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_SWIMMER_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 377
        // mon 0
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_WUGTRIO
        item ITEM_LIFE_ORB
        move MOVE_LIQUIDATION
        move MOVE_THROAT_CHOP
        move MOVE_EARTHQUAKE
        move MOVE_AQUA_JET
        ability ABILITY_RATTLED
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_SLOWBRO
        item ITEM_LEFTOVERS
        move MOVE_SLACK_OFF
        move MOVE_ZEN_HEADBUTT
        move MOVE_LIQUIDATION
        move MOVE_BULK_UP
        ability ABILITY_REGENERATOR
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_OMASTAR
        item ITEM_ROCKY_HELMET
        move MOVE_HYDRO_PUMP
        move MOVE_BODY_PRESS
        move MOVE_FLASH_CANNON
        move MOVE_POWER_GEM
        ability ABILITY_IRON_BARBS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_OMASTAR
        item ITEM_ROCKY_HELMET
        move MOVE_HYDRO_PUMP
        move MOVE_BODY_PRESS
        move MOVE_FLASH_CANNON
        move MOVE_POWER_GEM
        ability ABILITY_IRON_BARBS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 378, "Warren"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_YOUNGSTER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 378
        // mon 0
        ivs 0
        abilityslot 0
        level 73
        pokemon SPECIES_WHIMSICOTT
        move MOVE_TAILWIND
        move MOVE_GIGA_DRAIN
        move MOVE_COTTON_SPORE
        move MOVE_STUN_SPORE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 73
        pokemon SPECIES_PALOSSAND
        move MOVE_PROTECT
        move MOVE_SHADOW_BALL
        move MOVE_BODY_PRESS
        move MOVE_EARTH_POWER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 73
        pokemon SPECIES_ARCHALUDON
        move MOVE_IRON_DEFENSE
        move MOVE_BODY_PRESS
        move MOVE_FLASH_CANNON
        move MOVE_DRACO_METEOR
        ballseal 0
    endparty

trainerdata 379, "Jimmy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_YOUNGSTER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 379
        // mon 0
        ivs 0
        abilityslot 0
        level 73
        pokemon SPECIES_GHOLDENGO
        move MOVE_SHADOW_BALL
        move MOVE_PROTECT
        move MOVE_RECOVER
        move MOVE_FLASH_CANNON
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_GRUMPIG
        move MOVE_TRICK_ROOM
        move MOVE_PSYCHIC
        move MOVE_PROTECT
        move MOVE_EARTH_POWER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 73
        pokemon SPECIES_BANETTE
        move MOVE_ICE_PUNCH
        move MOVE_POLTERGEIST
        move MOVE_PROTECT
        move MOVE_SWORDS_DANCE
        ballseal 0
    endparty

trainerdata 380, "Owen"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_YOUNGSTER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 380
        // mon 0
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_ARCANINE
        move MOVE_EXTREME_SPEED
        move MOVE_FLAMETHROWER
        move MOVE_CRUNCH
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_COFAGRIGUS
        move MOVE_SHADOW_BALL
        move MOVE_WILL_O_WISP
        move MOVE_PAIN_SPLIT
        move MOVE_MYSTICAL_FIRE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_BOUFFALANT
        move MOVE_PROTECT
        move MOVE_CLOSE_COMBAT
        move MOVE_WILD_CHARGE
        move MOVE_HEAD_CHARGE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_SHIINOTIC
        move MOVE_HELPING_HAND
        move MOVE_MOONBLAST
        move MOVE_SPORE
        move MOVE_RAGE_POWDER
        ballseal 0
    endparty

trainerdata 381, "Jason"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_YOUNGSTER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 381
        // mon 0
        ivs 0
        abilityslot 0
        level 70
        monwithform SPECIES_RATICATE, 1
        move MOVE_DOUBLE_EDGE
        move MOVE_SUCKER_PUNCH
        move MOVE_PROTECT
        move MOVE_PURSUIT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_CLEFABLE
        move MOVE_SOFT_BOILED
        move MOVE_MOONBLAST
        move MOVE_FOLLOW_ME
        move MOVE_ENCORE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_EXPLOUD
        move MOVE_PARTING_SHOT
        move MOVE_BOOMBURST
        move MOVE_FOCUS_BLAST
        move MOVE_PROTECT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_WALREIN
        move MOVE_LIQUIDATION
        move MOVE_ICE_SHARD
        move MOVE_EARTHQUAKE
        move MOVE_ICICLE_CRASH
        ballseal 0
    endparty

trainerdata 382, "Hillary"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_TEACHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 382
        // mon 0
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_PRIMARINA
        move MOVE_HYDRO_PUMP
        move MOVE_MOONBLAST
        move MOVE_CALM_MIND
        move MOVE_ICY_WIND
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_KOMALA
        move MOVE_YAWN
        move MOVE_BODY_SLAM
        move MOVE_SUCKER_PUNCH
        move MOVE_U_TURN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_GOURGEIST
        move MOVE_BODY_PRESS
        move MOVE_PAIN_SPLIT
        move MOVE_ENERGY_BALL
        move MOVE_SHADOW_BALL
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_SWAMPERT
        move MOVE_HAMMER_ARM
        move MOVE_EARTHQUAKE
        move MOVE_MUDDY_WATER
        move MOVE_ROCK_SLIDE
        ballseal 0
    endparty

trainerdata 383, "Peter"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 383
        // mon 0
        ivs 50
        abilityslot 0
        level 11
        pokemon SPECIES_FLETCHLING
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 11
        pokemon SPECIES_NATU
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 11
        pokemon SPECIES_TOGETIC
        ballseal 0
    endparty

trainerdata 384, "Daniel"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 384
        // mon 0
        ivs 0
        abilityslot 32
        level 12
        pokemon SPECIES_BONSLY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 12
        pokemon SPECIES_TYRUNT
        ballseal 0
    endparty

trainerdata 385, "Dara & Dia"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 385
        // mon 0
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_MAREEP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_MARILL
        ballseal 0
    endparty

trainerdata 386, "Greg"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PSYCHIC_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 386
        // mon 0
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_NATU
        move MOVE_HYPNOSIS
        move MOVE_GUST
        move MOVE_PSYWAVE
        move MOVE_ROOST
        ballseal 0

        // mon 0
        ivs 0
        abilityslot 0
        level 25
        pokemon SPECIES_BRONZOR
        move MOVE_GYRO_BALL
        move MOVE_CONFUSION
        move MOVE_PAYBACK
        move MOVE_HYPNOSIS
        ballseal 0
    endparty

trainerdata 387, "Amy & Mimi"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 387
        // mon 0
        ivs 200
        abilityslot 0
        level 16
        pokemon SPECIES_DOTTLER
        item ITEM_NONE
        move MOVE_CONFUSION
        move MOVE_STRUGGLE_BUG
        move MOVE_LIGHT_SCREEN
        move MOVE_REFLECT
        ability ABILITY_COMPOUND_EYES
        setivs 25, 25, 25, 25, 25, 25 // hp, atk, def, spd, spatk, spdef
        setevs 32, 32, 32, 32, 32, 32 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 16
        pokemon SPECIES_YANMA
        item ITEM_NONE
        move MOVE_STRUGGLE_BUG
        move MOVE_AIR_CUTTER
        move MOVE_SUPERSONIC
        move MOVE_DETECT
        ability ABILITY_SPEED_BOOST
        setivs 25, 25, 25, 25, 25, 25 // hp, atk, def, spd, spatk, spdef
        setevs 32, 32, 32, 32, 32, 32 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 388, "Walt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FIREBREATHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 388
        // mon 0
        ivs 0
        abilityslot 0
        level 22
        pokemon SPECIES_MONFERNO
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 21
        pokemon SPECIES_LITLEO
        ballseal 0
    endparty

trainerdata 389, "Nelson"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PSYCHIC_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 389
        // mon 0
        ivs 0
        abilityslot 0
        level 29
        pokemon SPECIES_SLOWKING
        move MOVE_FUTURE_SIGHT
        move MOVE_SLACK_OFF
        move MOVE_WATER_GUN
        move MOVE_NASTY_PLOT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 28
        monwithform SPECIES_SLOWKING, 1
        move MOVE_FUTURE_SIGHT
        move MOVE_CHILLY_RECEPTION
        move MOVE_EERIE_SPELL
        move MOVE_POWER_GEM
        ballseal 0
    endparty

trainerdata 390, "Ray"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FIREBREATHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 390
        // mon 0
        ivs 0
        abilityslot 0
        level 12
        pokemon SPECIES_FENNEKIN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 12
        pokemon SPECIES_HOUNDOUR
        ballseal 0
    endparty

trainerdata 391, "Issac"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKE_MANIAC
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 391
        // mon 0
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_CHEWTLE
        move MOVE_WATER_GUN
        move MOVE_BITE
        move MOVE_HEADBUTT
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 19
        pokemon SPECIES_CHEWTLE
        move MOVE_WATER_GUN
        move MOVE_BITE
        move MOVE_HEADBUTT
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 392, "Donald"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKE_MANIAC
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 392
        // mon 0
        ivs 0
        abilityslot 32
        level 18
        pokemon SPECIES_SLOWPOKE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 18
        pokemon SPECIES_SLOWPOKE
        ballseal 0
    endparty

trainerdata 393, "Teru"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SUPER_NERD
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 393
        // mon 0
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_BRONZOR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 17
        pokemon SPECIES_HONEDGE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 18
        pokemon SPECIES_CUFANT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 17
        pokemon SPECIES_HELIOPTILE
        ballseal 0
    endparty

trainerdata 394, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_ACE_TRAINER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 394
        // mon 0
        ivs 0
        abilityslot 0
        level 14
        pokemon SPECIES_BULBASAUR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 14
        pokemon SPECIES_CHARMANDER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 14
        pokemon SPECIES_SQUIRTLE
        ballseal 0
    endparty

trainerdata 395, "Mark"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PSYCHIC_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 395
        // mon 0
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_NATU
        move MOVE_PSYWAVE
        move MOVE_GUST
        move MOVE_HYPNOSIS
        move MOVE_ROOST
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 23
        pokemon SPECIES_WYNAUT
        move MOVE_REFLECT
        move MOVE_LIGHT_SCREEN
        move MOVE_HELPING_HAND
        move MOVE_MIRROR_COAT
        ballseal 0
    endparty

trainerdata 396, "Horton"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_JUGGLER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 396
        // mon 0
        ivs 255
        abilityslot 0
        level 63
        monwithform SPECIES_RAICHU, 1
        item ITEM_MAGNET
        move MOVE_PSYCHIC
        move MOVE_THUNDERBOLT
        move MOVE_FOCUS_BLAST
        move MOVE_NASTY_PLOT
        ability ABILITY_SURGE_SURFER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 62
        pokemon SPECIES_PINCURCHIN
        item ITEM_LEFTOVERS
        move MOVE_PROTECT
        move MOVE_ZING_ZAP
        move MOVE_RECOVER
        move MOVE_SURF
        ability ABILITY_ELECTRIC_SURGE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 62
        pokemon SPECIES_MANECTRIC
        item ITEM_LIFE_ORB
        move MOVE_PROTECT
        move MOVE_FLAMETHROWER
        move MOVE_DISCHARGE
        move MOVE_THUNDER_WAVE
        ability ABILITY_STATIC
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 397, "Chad"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 397
        // mon 0
        ivs 0
        abilityslot 0
        level 28
        pokemon SPECIES_MR_MIME
        move MOVE_REFLECT
        move MOVE_LIGHT_SCREEN
        move MOVE_DRAINING_KISS
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 28
        pokemon SPECIES_MR_RIME
        move MOVE_ICY_WIND
        move MOVE_PSYCHIC
        move MOVE_HYPNOSIS
        move MOVE_FOUL_PLAY
        ballseal 0
    endparty

trainerdata 398, "Valerie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BEAUTY
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 398
        // mon 0
        ivs 0
        abilityslot 0
        level 28
        pokemon SPECIES_ESPEON
        move MOVE_PSYCHIC
        move MOVE_SHADOW_BALL
        move MOVE_MORNING_SUN
        move MOVE_POWER_SWAP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 28
        pokemon SPECIES_JUMPLUFF
        move MOVE_MEGA_DRAIN
        move MOVE_FAIRY_WIND
        move MOVE_LEECH_SEED
        move MOVE_STUN_SPORE
        ballseal 0
    endparty

trainerdata 399, "Lyle"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FIREBREATHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 399
        // mon 0
        ivs 0
        abilityslot 0
        level 60
        monwithform SPECIES_MAROWAK, 1
        move MOVE_BONE_RUSH
        move MOVE_PROTECT
        move MOVE_FLARE_BLITZ
        move MOVE_SHADOW_BONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 60
        pokemon SPECIES_EMBOAR
        move MOVE_HEAD_SMASH
        move MOVE_CLOSE_COMBAT
        move MOVE_FLARE_BLITZ
        move MOVE_HAMMER_ARM
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 60
        monwithform SPECIES_TAUROS, 2
        move MOVE_CLOSE_COMBAT
        move MOVE_FLARE_BLITZ
        move MOVE_ZEN_HEADBUTT
        move MOVE_SWORDS_DANCE
        ballseal 0
    endparty

trainerdata 400, "Dana"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LASS
    nummons 2
    item ITEM_MOOMOO_MILK
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 400
        // mon 0
        ivs 0
        abilityslot 0
        level 28
        pokemon SPECIES_AMPHAROS
        move MOVE_TWISTER
        move MOVE_PROTECT
        move MOVE_THUNDER_SHOCK
        move MOVE_THUNDER_WAVE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 27
        pokemon SPECIES_SHUCKLE
        move MOVE_STICKY_WEB
        move MOVE_ENCORE
        move MOVE_ROCK_THROW
        move MOVE_BUG_BITE
        ballseal 0
    endparty

trainerdata 401, "Alfred"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_GENTLEMAN
    nummons 2
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 401
        // mon 0
        ivs 0
        abilityslot 0
        level 31
        pokemon SPECIES_NOCTOWL
        move MOVE_DARK_PULSE
        move MOVE_AIR_SLASH
        move MOVE_ROOST
        move MOVE_HYPNOSIS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 31
        pokemon SPECIES_PANGORO
        move MOVE_NIGHT_SLASH
        move MOVE_BULLET_PUNCH
        move MOVE_HAMMER_ARM
        move MOVE_WORK_UP
        ballseal 0
    endparty

trainerdata 402, "Tiffany"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 402
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_SYLVEON
        move MOVE_MOONBLAST
        move MOVE_HELPING_HAND
        move MOVE_SHADOW_BALL
        move MOVE_BABY_DOLL_EYES
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_AZUMARILL
        move MOVE_AQUA_JET
        move MOVE_LIQUIDATION
        move MOVE_PLAY_ROUGH
        move MOVE_ICE_PUNCH
        ballseal 0
    endparty

trainerdata 403, "Spencer"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_CAMPER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 403
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_UMBREON
        move MOVE_HELPING_HAND
        move MOVE_MOONLIGHT
        move MOVE_DARK_PULSE
        move MOVE_BATON_PASS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_TANGROWTH
        move MOVE_POWER_WHIP
        move MOVE_KNOCK_OFF
        move MOVE_LEECH_SEED
        move MOVE_SLEEP_POWDER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_PORYGON_Z
        move MOVE_TRI_ATTACK
        move MOVE_RECOVER
        move MOVE_THUNDERBOLT
        move MOVE_ICE_BEAM
        ballseal 0
    endparty

trainerdata 404, "Grunt"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_TEAM_ROCKET_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 404
        // mon 0
        ivs 30
        abilityslot 0
        level 37
        pokemon SPECIES_KLEAVOR
        move MOVE_STONE_AXE
        move MOVE_ROCK_SLIDE
        move MOVE_X_SCISSOR
        move MOVE_AGILITY
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 37
        monwithform SPECIES_ROTOM, 1
        move MOVE_OVERHEAT
        move MOVE_THUNDERBOLT
        move MOVE_SHADOW_BALL
        move MOVE_WILL_O_WISP
        ballseal 0
    endparty

trainerdata 405, "Phil"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PSYCHIC_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 405
        // mon 0
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_XATU
        move MOVE_HELPING_HAND
        move MOVE_ROOST
        move MOVE_FUTURE_SIGHT
        move MOVE_AIR_SLASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_ESPEON
        move MOVE_PSYCHIC
        move MOVE_SHADOW_BALL
        move MOVE_FOCUS_BLAST
        move MOVE_CALM_MIND
        ballseal 0
    endparty

trainerdata 406, "Zach"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKE_MANIAC
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 406
        // mon 0
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_HERACROSS
        move MOVE_CLOSE_COMBAT
        move MOVE_MEGAHORN
        move MOVE_NIGHT_SLASH
        move MOVE_ROCK_BLAST
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_DONPHAN
        move MOVE_HEADLONG_RUSH
        move MOVE_THUNDER_FANG
        move MOVE_FIRE_FANG
        move MOVE_ICE_SHARD
        ballseal 0
    endparty

trainerdata 407, "Allen"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_ACE_TRAINER_M
    nummons 3
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 407
        // mon 0
        ivs 50
        abilityslot 0
        level 47
        pokemon SPECIES_NINETALES
        move MOVE_PROTECT
        move MOVE_LAVA_PLUME
        move MOVE_REFLECT
        move MOVE_LIGHT_SCREEN
        ability ABILITY_DROUGHT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 48
        pokemon SPECIES_SUNFLORA
        move MOVE_SOLAR_BEAM
        move MOVE_FLAMETHROWER
        move MOVE_FLOWER_SHIELD
        move MOVE_GIGA_DRAIN
        ability ABILITY_CHLOROPHYLL
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 47
        pokemon SPECIES_HELIOLISK
        move MOVE_THUNDERBOLT
        move MOVE_HYPER_VOICE
        move MOVE_DARK_PULSE
        move MOVE_PROTECT
        ability ABILITY_SOLAR_POWER
        ballseal 0
    endparty

trainerdata 408, "Cybil"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_ACE_TRAINER_F
    nummons 3
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 408
        // mon 0
        ivs 50
        abilityslot 0
        level 47
        pokemon SPECIES_POLITOED
        move MOVE_PROTECT
        move MOVE_SURF
        move MOVE_HYPNOSIS
        move MOVE_EARTH_POWER
        ability ABILITY_DRIZZLE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 47
        pokemon SPECIES_FLOATZEL
        move MOVE_CRUNCH
        move MOVE_ICE_HAMMER
        move MOVE_HIGH_HORSEPOWER
        move MOVE_WAVE_CRASH
        ability ABILITY_SWIFT_SWIM
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 48
        pokemon SPECIES_KINGDRA
        move MOVE_PROTECT
        move MOVE_DRAGON_PULSE
        move MOVE_ICE_BEAM
        move MOVE_SURF
        ability ABILITY_SWIFT_SWIM
        ballseal 0
    endparty

trainerdata 409, "Brandon"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKEFAN_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 409
        // mon 0
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_SNUBBULL
        item ITEM_SITRUS_BERRY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 17
        pokemon SPECIES_MAREEP
        item ITEM_SITRUS_BERRY
        ballseal 0
    endparty

trainerdata 410, "Harry"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SAILOR
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 410
        // mon 0
        ivs 0
        abilityslot 0
        level 27
        pokemon SPECIES_QUAGSIRE
        move MOVE_WATER_GUN
        move MOVE_MUD_BOMB
        move MOVE_SLAM
        move MOVE_YAWN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 27
        pokemon SPECIES_KINGDRA
        move MOVE_WATER_GUN
        move MOVE_TWISTER
        move MOVE_DRAGON_BREATH
        move MOVE_AGILITY
        ballseal 0
    endparty

trainerdata 411, "Vernon"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PSYCHIC_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 411
        // mon 0
        ivs 0
        abilityslot 0
        level 53
        pokemon SPECIES_INDEEDEE
        move MOVE_PSYCHIC
        move MOVE_FOLLOW_ME
        move MOVE_TRICK_ROOM
        move MOVE_HELPING_HAND
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 53
        pokemon SPECIES_HATTERENE
        move MOVE_PSYCHIC
        move MOVE_DAZZLING_GLEAM
        move MOVE_AURA_SPHERE
        move MOVE_CALM_MIND
        ballseal 0
    endparty

trainerdata 412, "Eli"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PSYCHIC_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 412
        // mon 0
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_ESPEON
        move MOVE_PSYCHIC
        move MOVE_MORNING_SUN
        move MOVE_SHADOW_BALL
        move MOVE_FOCUS_BLAST
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_SLOWKING
        move MOVE_PSYCHIC
        move MOVE_CHILLY_RECEPTION
        move MOVE_SCALD
        move MOVE_POWER_GEM
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_GALLADE
        move MOVE_PSYCHO_CUT
        move MOVE_CLOSE_COMBAT
        move MOVE_LEAF_BLADE
        move MOVE_WIDE_GUARD
        ballseal 0
    endparty

trainerdata 413, "Scott"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 413
        // mon 0
        ivs 0
        abilityslot 32
        level 53
        pokemon SPECIES_LANTURN
        move MOVE_THUNDER_WAVE
        move MOVE_DISCHARGE
        move MOVE_HYDRO_PUMP
        move MOVE_FLIP_TURN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_QWILFISH
        move MOVE_LIQUIDATION
        move MOVE_BARB_BARRAGE
        move MOVE_TOXIC
        move MOVE_PAIN_SPLIT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 53
        pokemon SPECIES_OCTILLERY
        move MOVE_HELPING_HAND
        move MOVE_HYDRO_PUMP
        move MOVE_ICE_BEAM
        move MOVE_FIRE_BLAST
        ballseal 0
    endparty

trainerdata 414, "Jose"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 414
        // mon 0
        ivs 50
        abilityslot 0
        level 40
        pokemon SPECIES_FARFETCHD
        ballseal 0
    endparty

trainerdata 415, "Jared"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_PSYCHIC_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 415
        // mon 0
        ivs 255
        abilityslot 0
        level 65
        pokemon SPECIES_CLAYDOL
        item ITEM_LEFTOVERS
        move MOVE_TELEPORT
        move MOVE_PSYCHIC
        move MOVE_EARTH_POWER
        move MOVE_POWER_GEM
        ability ABILITY_LEVITATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 65
        pokemon SPECIES_MUSHARNA
        item ITEM_TWISTED_SPOON
        move MOVE_PROTECT
        move MOVE_YAWN
        move MOVE_DREAM_EATER
        move MOVE_MOONBLAST
        ability ABILITY_TELEPATHY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 65
        pokemon SPECIES_SWOOBAT
        item ITEM_LIFE_ORB
        move MOVE_CALM_MIND
        move MOVE_HURRICANE
        move MOVE_PSYSHOCK
        move MOVE_ROOST
        ability ABILITY_UNAWARE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 416, "Jo & Zoe"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_TWINS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 416
        // mon 0
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_DHELMISE
        item ITEM_LEFTOVERS
        move MOVE_PHANTOM_FORCE
        move MOVE_HEAVY_SLAM
        move MOVE_POWER_WHIP
        move MOVE_LIQUIDATION
        ability ABILITY_STEELWORKER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_LURANTIS
        item ITEM_SITRUS_BERRY
        move MOVE_LEAF_STORM
        move MOVE_SUPERPOWER
        move MOVE_SYNTHESIS
        move MOVE_U_TURN
        ability ABILITY_CONTRARY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_SHIINOTIC
        item ITEM_SITRUS_BERRY
        move MOVE_HELPING_HAND
        move MOVE_MOONBLAST
        move MOVE_SPORE
        move MOVE_RAGE_POWDER
        ability ABILITY_EFFECT_SPORE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_CACTURNE
        item ITEM_ROCKY_HELMET
        move MOVE_SPIKY_SHIELD
        move MOVE_LEECH_SEED
        move MOVE_GIGA_DRAIN
        move MOVE_SUCKER_PUNCH
        ability ABILITY_WATER_ABSORB
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_RELAXED
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 417, "Jenn" // TODO
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_ACE_TRAINER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 417
        // mon 0
        ivs 200
        abilityslot 0
        level 32
        pokemon SPECIES_DONPHAN
        item ITEM_NONE
        move MOVE_HIGH_HORSEPOWER
        move MOVE_ROCK_SLIDE
        move MOVE_FIRE_LASH
        move MOVE_RAPID_SPIN
        ability ABILITY_SAND_FORCE
        setivs 15, 15, 15, 15, 15, 15 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 32
        pokemon SPECIES_FLOATZEL
        item ITEM_NONE
        move MOVE_LIQUIDATION
        move MOVE_CRUNCH
        move MOVE_AQUA_JET
        move MOVE_NONE
        ability ABILITY_SAND_FORCE
        setivs 15, 15, 15, 15, 15, 15 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 418, "Bruno"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_ELITE_FOUR_3
    nummons 5
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 418
        // mon 0
        ivs 255
        abilityslot 0
        level 58
        pokemon SPECIES_HITMONCHAN
        item ITEM_FOCUS_SASH
        move MOVE_MACH_PUNCH
        move MOVE_ICE_PUNCH
        move MOVE_THUNDER_PUNCH
        move MOVE_FIRE_PUNCH
        ability ABILITY_IRON_FIST
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 58
        pokemon SPECIES_MACHAMP
        item ITEM_FLAME_ORB
        move MOVE_BULLET_PUNCH
        move MOVE_KNOCK_OFF
        move MOVE_STRENGTH
        move MOVE_ROCK_SLIDE
        ability ABILITY_GUTS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 58
        pokemon SPECIES_FLAMIGO
        item ITEM_LIFE_ORB
        move MOVE_THROAT_CHOP
        move MOVE_BRAVE_BIRD
        move MOVE_DETECT
        move MOVE_ROOST
        ability ABILITY_SCRAPPY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 0
        level 58
        pokemon SPECIES_KOMMO_O
        item ITEM_LEFTOVERS
        move MOVE_DRACO_METEOR
        move MOVE_CLOSE_COMBAT
        move MOVE_FLAMETHROWER
        move MOVE_PROTECT
        ability ABILITY_BULLETPROOF
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_SERIOUS
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 0
        level 60
        monwithform SPECIES_TAUROS, 3
        item ITEM_LIFE_ORB
        move MOVE_CLOSE_COMBAT
        move MOVE_WAVE_CRASH
        move MOVE_AQUA_JET
        move MOVE_SWORDS_DANCE
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 419, "Ellen"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LASS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 419
        // mon 0
        ivs 0
        abilityslot 0
        level 67
        pokemon SPECIES_SIMISAGE
        move MOVE_LEAF_STORM
        move MOVE_PLAY_ROUGH
        move MOVE_SEED_BOMB
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 68
        pokemon SPECIES_LEAVANNY
        move MOVE_KNOCK_OFF
        move MOVE_STICKY_WEB
        move MOVE_MEGAHORN
        move MOVE_LEAF_BLADE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 68
        pokemon SPECIES_THROH
        move MOVE_KNOCK_OFF
        move MOVE_SEISMIC_TOSS
        move MOVE_RECOVER
        move MOVE_ROCK_SLIDE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 67
        pokemon SPECIES_GARBODOR
        move MOVE_IRON_DEFENSE
        move MOVE_BODY_PRESS
        move MOVE_EARTHQUAKE
        move MOVE_PAIN_SPLIT
        ballseal 0
    endparty

trainerdata 420, "Perry"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 420
        // mon 0
        ivs 50
        abilityslot 32
        level 70
        pokemon SPECIES_RIBOMBEE
        move MOVE_QUIVER_DANCE
        move MOVE_AROMATHERAPY
        move MOVE_BUG_BUZZ
        move MOVE_DRAINING_KISS
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 71
        pokemon SPECIES_NINJASK
        move MOVE_X_SCISSOR
        move MOVE_BATON_PASS
        move MOVE_SWORDS_DANCE
        move MOVE_PROTECT
        ballseal 0
        
        // mon 2
        ivs 50
        abilityslot 32
        level 70
        pokemon SPECIES_FARFETCHD
        move MOVE_BRAVE_BIRD
        move MOVE_LEAF_BLADE
        move MOVE_PROTECT
        move MOVE_KNOCK_OFF
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 32
        level 70
        pokemon SPECIES_DECIDUEYE
        move MOVE_SHADOW_SNEAK
        move MOVE_SPIRIT_SHACKLE
        move MOVE_LEAF_BLADE
        move MOVE_BRAVE_BIRD
        ballseal 0
    endparty

trainerdata 421, "Bret"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 421
        // mon 0
        ivs 50
        abilityslot 0
        level 70
        pokemon SPECIES_SWELLOW
        ability ABILITY_GUTS
        item ITEM_FLAME_ORB
        move MOVE_FACADE
        move MOVE_QUICK_ATTACK
        move MOVE_BRAVE_BIRD
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 70
        pokemon SPECIES_FEAROW
        ability ABILITY_TOUGH_CLAWS
        item ITEM_SITRUS_BERRY
        move MOVE_DRILL_RUN
        move MOVE_DRILL_PECK
        move MOVE_SWORDS_DANCE
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 71
        pokemon SPECIES_BUTTERFREE
        ability ABILITY_TINTED_LENS
        item ITEM_LEFTOVERS
        move MOVE_QUIVER_DANCE
        move MOVE_BUG_BUZZ
        move MOVE_PSYCHIC
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 422, "Rodney"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PSYCHIC_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 422
        // mon 0
        ivs 0
        abilityslot 0
        level 37
        pokemon SPECIES_CHINGLING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 41
        pokemon SPECIES_HYPNO
        ballseal 0
    endparty

trainerdata 423, "Jeremy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKEFAN_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 423
        // mon 0
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_MEOWTH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_MEOWTH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_MEOWTH
        ballseal 0
    endparty

trainerdata 424, "Colin"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKEFAN_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 424
        // mon 0
        ivs 0
        abilityslot 32
        level 60
        pokemon SPECIES_SLAKING
        move MOVE_GIGA_IMPACT
        move MOVE_HAMMER_ARM
        move MOVE_EARTHQUAKE
        move MOVE_SLACK_OFF
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 60
        pokemon SPECIES_FARFETCHD
        move MOVE_BRAVE_BIRD
        move MOVE_LEAF_BLADE
        move MOVE_BRICK_BREAK
        move MOVE_KNOCK_OFF
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 60
        pokemon SPECIES_ARMAROUGE
        move MOVE_WILL_O_WISP
        move MOVE_LAVA_PLUME
        move MOVE_PSYCHIC
        move MOVE_NIGHT_SHADE
        ballseal 0
    endparty

trainerdata 425, "Meg & Peg"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_TWINS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 425
        // mon 0
        ivs 0
        abilityslot 32
        level 60
        pokemon SPECIES_PALOSSAND
        move MOVE_IRON_DEFENSE
        move MOVE_SHADOW_BALL
        move MOVE_BODY_PRESS
        move MOVE_EARTH_POWER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 60
        pokemon SPECIES_SWANNA
        move MOVE_AIR_SLASH
        move MOVE_HYDRO_PUMP
        move MOVE_ROOST
        move MOVE_TAUNT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 60
        pokemon SPECIES_SCEPTILE
        move MOVE_LEAF_BLADE
        move MOVE_NIGHT_SLASH
        move MOVE_QUICK_ATTACK
        move MOVE_X_SCISSOR
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 60
        pokemon SPECIES_BLAZIKEN
        move MOVE_BRAVE_BIRD
        move MOVE_BLAZE_KICK
        move MOVE_HIGH_JUMP_KICK
        move MOVE_DETECT
        ballseal 0
    endparty

trainerdata 426, "Meg & Peg"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 426
        // mon 0
        ivs 0
        abilityslot 0
        level 39
        pokemon SPECIES_PHANPY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 39
        pokemon SPECIES_TEDDIURSA
        ballseal 0
    endparty

trainerdata 427, "Shirley"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEACHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 427
        // mon 0
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_CHATOT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 43
        pokemon SPECIES_JIGGLYPUFF
        ballseal 0
    endparty

trainerdata 428, "Nate"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 428
        // mon 0
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_LEDIAN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_EXEGGUTOR
        ballseal 0
    endparty

trainerdata 429, "Ricky"
    trainermontype TRAINER_DATA_TYPE_ITEMS
    trainerclass CLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 429
        // mon 0
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_AIPOM
        item ITEM_HARD_STONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_DITTO
        item ITEM_NONE
        ballseal 0
    endparty

trainerdata 430, "Jack"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 430
        // mon 0
        ivs 0
        abilityslot 0
        level 29
        pokemon SPECIES_GLOOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 17
        pokemon SPECIES_VOLTORB
        ballseal 0
    endparty

trainerdata 431, "Jack"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 431
        // mon 0
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_VILEPLUME
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 31
        pokemon SPECIES_ELECTRODE
        ballseal 0
    endparty

trainerdata 432, "Alan"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 432
        // mon 0
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_TANGELA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_YANMA
        ballseal 0
    endparty

trainerdata 433, "Alan"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 433
        // mon 0
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_XATU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_TANGROWTH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_QUAGSIRE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_YANMEGA
        ballseal 0
    endparty

trainerdata 434, "Chad"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 434
        // mon 0
        ivs 0
        abilityslot 0
        level 29
        pokemon SPECIES_MR_MIME
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_MAGNEMITE
        ballseal 0
    endparty

trainerdata 435, "Chad"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 435
        // mon 0
        ivs 0
        abilityslot 0
        level 39
        pokemon SPECIES_MR_MIME
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_MAGNETON
        ballseal 0
    endparty

trainerdata 436, "Beverly"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKEFAN_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 436
        // mon 0
        ivs 0
        abilityslot 0
        level 31
        pokemon SPECIES_SNUBBULL
        ballseal 0
    endparty

trainerdata 437, "Beverly"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKEFAN_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 437
        // mon 0
        ivs 0
        abilityslot 0
        level 43
        pokemon SPECIES_GRANBULL
        ballseal 0
    endparty

trainerdata 438, "Derek"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKEFAN_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 438
        // mon 0
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_TEDDIURSA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_PIKACHU
        ballseal 0
    endparty

trainerdata 439, "Derek"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKEFAN_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 439
        // mon 0
        ivs 0
        abilityslot 0
        level 13
        pokemon SPECIES_PICHU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 15
        pokemon SPECIES_TEDDIURSA
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 37
        pokemon SPECIES_PIKACHU
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 29
        pokemon SPECIES_TEDDIURSA
        ballseal 0
    endparty

trainerdata 440, "Huey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SAILOR
    nummons 2
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 440
        // mon 0
        ivs 0
        abilityslot 0
        level 31
        pokemon SPECIES_MANTINE
        move MOVE_WATER_PULSE
        move MOVE_AIR_SLASH
        move MOVE_CONFUSE_RAY
        move MOVE_SUPERSONIC
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 31
        pokemon SPECIES_DREDNAW
        move MOVE_ROCK_TOMB
        move MOVE_AQUA_TAIL
        move MOVE_AQUA_JET
        move MOVE_ROCK_POLISH
        ballseal 0
    endparty

trainerdata 441, "Huey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SAILOR
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 441
        // mon 0
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_POLIWHIRL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_POLIWRATH
        ballseal 0
    endparty

trainerdata 442, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_LASS
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 442
        // mon 0
        ivs 0
        abilityslot 0
        level 21
        pokemon SPECIES_MARILL
        ballseal 0
    endparty

trainerdata 443, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_LASS
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 443
        // mon 0
        ivs 0
        abilityslot 0
        level 21
        pokemon SPECIES_MARILL
        ballseal 0
    endparty

trainerdata 444, "Reena"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_ACE_TRAINER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 444
        // mon 0
        ivs 50
        abilityslot 0
        level 52
        pokemon SPECIES_PINCURCHIN
        move MOVE_PROTECT
        move MOVE_ZING_ZAP
        move MOVE_RECOVER
        move MOVE_SURF
        ability ABILITY_ELECTRIC_SURGE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 53
        pokemon SPECIES_LUXRAY
        move MOVE_KNOCK_OFF
        move MOVE_SUPERCELL_SLAM
        move MOVE_SUCKER_PUNCH
        move MOVE_VOLT_SWITCH
        ability ABILITY_INTIMIDATE
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 52
        pokemon SPECIES_GRANBULL
        move MOVE_PLAY_ROUGH
        move MOVE_FIRE_FANG
        move MOVE_THUNDER_FANG
        move MOVE_ICE_FANG
        ability ABILITY_INTIMIDATE
        ballseal 0
    endparty

trainerdata 445, "Reena"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_ACE_TRAINER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 445
        // mon 0
        ivs 50
        abilityslot 0
        level 47
        pokemon SPECIES_ARCANINE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 43
        pokemon SPECIES_NIDOQUEEN
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 47
        pokemon SPECIES_STARMIE
        ballseal 0
    endparty

trainerdata 446, "Jose"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 446
        // mon 0
        ivs 50
        abilityslot 0
        level 38
        pokemon SPECIES_FARFETCHD
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 45
        pokemon SPECIES_FARFETCHD
        ballseal 0
    endparty

trainerdata 447, "Vance"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 447
        // mon 0
        ivs 50
        abilityslot 0
        level 33
        pokemon SPECIES_HOOTHOOT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 32
        pokemon SPECIES_PIDGEOTTO
        ballseal 0
    endparty

trainerdata 448, "Vance"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 448
        // mon 0
        ivs 50
        abilityslot 0
        level 37
        pokemon SPECIES_PIDGEOTTO
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 38
        pokemon SPECIES_PIDGEOT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 42
        pokemon SPECIES_NOCTOWL
        ballseal 0
    endparty

trainerdata 449, "Arnie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BUG_CATCHER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 449
        // mon 0
        ivs 0
        abilityslot 0
        level 43
        pokemon SPECIES_VENOMOTH
        move MOVE_DISABLE
        move MOVE_SUPERSONIC
        move MOVE_CONFUSION
        move MOVE_LEECH_LIFE
        ballseal 0
    endparty

trainerdata 450, "Wilton"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 450
        // mon 0
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_QWILFISH
        move MOVE_LIQUIDATION
        move MOVE_BARB_BARRAGE
        move MOVE_THUNDER_WAVE
        move MOVE_PAIN_SPLIT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_EMPOLEON
        move MOVE_HYDRO_PUMP
        move MOVE_FLASH_CANNON
        move MOVE_ICE_BEAM
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_GASTRODON
        move MOVE_SCALD
        move MOVE_EARTH_POWER
        move MOVE_TOXIC
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 451, "Parry"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 451
        // mon 0
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 35
        pokemon SPECIES_GRAVELER
        ballseal 0
    endparty

trainerdata 452, "Parry"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 452
        // mon 0
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_STEELIX
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 37
        pokemon SPECIES_GRAVELER
        ballseal 0
    endparty

trainerdata 453, "Erin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 453
        // mon 0
        ivs 0
        abilityslot 0
        level 46
        pokemon SPECIES_BELLOSSOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 39
        pokemon SPECIES_SUNFLORA
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 48
        pokemon SPECIES_RAPIDASH
        ballseal 0
    endparty

trainerdata 454, "Irwin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_JUGGLER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 454
        // mon 0
        ivs 0
        abilityslot 0
        level 22
        pokemon SPECIES_VOLTORB
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 26
        pokemon SPECIES_VOLTORB
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 28
        pokemon SPECIES_VOLTORB
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 34
        pokemon SPECIES_VOLTORB
        ballseal 0
    endparty

trainerdata 455, "Irwin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_JUGGLER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 455
        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_VOLTORB
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_VOLTORB
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_VOLTORB
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_ELECTRODE
        ballseal 0
    endparty

trainerdata 456, "Gaven"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 456
        // mon 0
        ivs 50
        abilityslot 0
        level 34
        pokemon SPECIES_VICTREEBEL
        move MOVE_WRAP
        move MOVE_TOXIC
        move MOVE_ACID
        move MOVE_RAZOR_LEAF
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 34
        pokemon SPECIES_KINGLER
        move MOVE_BUBBLE_BEAM
        move MOVE_STOMP
        move MOVE_GUILLOTINE
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 34
        pokemon SPECIES_FLAREON
        move MOVE_SAND_ATTACK
        move MOVE_QUICK_ATTACK
        move MOVE_BITE
        move MOVE_FIRE_BLAST
        ballseal 0
    endparty

trainerdata 457, "Gaven"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 457
        // mon 0
        ivs 50
        abilityslot 0
        level 38
        pokemon SPECIES_VICTREEBEL
        move MOVE_WRAP
        move MOVE_TOXIC
        move MOVE_ACID
        move MOVE_RAZOR_LEAF
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 39
        pokemon SPECIES_KINGLER
        move MOVE_BRINE
        move MOVE_STOMP
        move MOVE_X_SCISSOR
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 38
        pokemon SPECIES_FLAREON
        move MOVE_FIRE_BLAST
        move MOVE_QUICK_ATTACK
        move MOVE_SAND_ATTACK
        move MOVE_FIRE_SPIN
        ballseal 0
    endparty

trainerdata 458, "Jamie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 458
        // mon 0
        ivs 50
        abilityslot 32
        level 38
        pokemon SPECIES_RAPIDASH
        move MOVE_STOMP
        move MOVE_FIRE_SPIN
        move MOVE_FLAME_WHEEL
        move MOVE_EMBER
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 37
        pokemon SPECIES_AMPHAROS
        move MOVE_DISCHARGE
        move MOVE_SIGNAL_BEAM
        move MOVE_CHARGE
        move MOVE_THUNDER_PUNCH
        ballseal 0
    endparty

trainerdata 459, "Jamie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 459
        // mon 0
        ivs 50
        abilityslot 32
        level 42
        pokemon SPECIES_RAPIDASH
        move MOVE_STOMP
        move MOVE_FIRE_SPIN
        move MOVE_FIRE_BLAST
        move MOVE_EMBER
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 40
        pokemon SPECIES_AMPHAROS
        move MOVE_DISCHARGE
        move MOVE_SIGNAL_BEAM
        move MOVE_CHARGE
        move MOVE_THUNDER_WAVE
        ballseal 0
    endparty

trainerdata 460, "Wade"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BUG_CATCHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 460
        // mon 0
        ivs 0
        abilityslot 0
        level 28
        pokemon SPECIES_BUTTERFREE
        move MOVE_BUG_BITE
        move MOVE_SILVER_WIND
        move MOVE_CONFUSION
        move MOVE_GUST
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_BUTTERFREE
        move MOVE_BUG_BUZZ
        move MOVE_TAILWIND
        move MOVE_CAPTIVATE
        move MOVE_SAFEGUARD
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 37
        pokemon SPECIES_BEEDRILL
        move MOVE_BUG_BITE
        move MOVE_TWINEEDLE
        move MOVE_POISON_JAB
        move MOVE_FOCUS_ENERGY
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 28
        pokemon SPECIES_BUTTERFREE
        move MOVE_BUG_BITE
        move MOVE_GUST
        move MOVE_SLEEP_POWDER
        move MOVE_STUN_SPORE
        ballseal 0
    endparty

trainerdata 461, "Wade"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BUG_CATCHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 461
        // mon 0
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_METAPOD
        move MOVE_BUG_BITE
        move MOVE_STRING_SHOT
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 29
        pokemon SPECIES_BUTTERFREE
        move MOVE_PSYBEAM
        move MOVE_SILVER_WIND
        move MOVE_SUPERSONIC
        move MOVE_WHIRLWIND
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 22
        pokemon SPECIES_KAKUNA
        move MOVE_BUG_BITE
        move MOVE_POISON_STING
        move MOVE_STRING_SHOT
        move MOVE_NONE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_METAPOD
        move MOVE_BUG_BITE
        move MOVE_STRING_SHOT
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0
    endparty

trainerdata 462, "Ralph"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 462
        // mon 0
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 463, "Ralph"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 463
        // mon 0
        ivs 0
        abilityslot 0
        level 45
        pokemon SPECIES_QWILFISH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 42
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 464, "Dana"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LASS
    nummons 2
    item ITEM_MOOMOO_MILK
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 464
        // mon 0
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_FLAAFFY
        move MOVE_COTTON_SPORE
        move MOVE_CHARGE
        move MOVE_DISCHARGE
        move MOVE_THUNDER_WAVE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 31
        pokemon SPECIES_PSYDUCK
        move MOVE_WATER_PULSE
        move MOVE_SCREECH
        move MOVE_DISABLE
        move MOVE_CONFUSION
        ballseal 0
    endparty

trainerdata 465, "Dana"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LASS
    nummons 2
    item ITEM_MOOMOO_MILK
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 465
        // mon 0
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_GOLDUCK
        move MOVE_WATER_PULSE
        move MOVE_DISABLE
        move MOVE_CONFUSION
        move MOVE_SCREECH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_AMPHAROS
        move MOVE_SIGNAL_BEAM
        move MOVE_DISCHARGE
        move MOVE_THUNDER_WAVE
        move MOVE_COTTON_SPORE
        ballseal 0
    endparty

trainerdata 466, "Tiffany"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 466
        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_CLEFAIRY
        move MOVE_GRAVITY
        move MOVE_SING
        move MOVE_WAKE_UP_SLAP
        move MOVE_METRONOME
        ballseal 0
    endparty

trainerdata 467, "Tiffany"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 467
        // mon 0
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_CLEFABLE
        move MOVE_GRAVITY
        move MOVE_SING
        move MOVE_WAKE_UP_SLAP
        move MOVE_MOONLIGHT
        ballseal 0
    endparty

trainerdata 468, "Ross"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCIENTIST_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 468
        // mon 0
        ivs 0
        abilityslot 0
        level 37
        pokemon SPECIES_INDEEDEE
        move MOVE_PSYCHIC
        move MOVE_FOLLOW_ME
        move MOVE_TRICK_ROOM
        move MOVE_HELPING_HAND
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 37
        monwithform SPECIES_SLOWKING, 1
        move MOVE_EERIE_SPELL
        move MOVE_NASTY_PLOT
        move MOVE_SURF
        move MOVE_SLUDGE_BOMB
        ballseal 0
    endparty

trainerdata 469, "Mitch"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCIENTIST_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 469
        // mon 0
        ivs 0
        abilityslot 0
        level 37
        pokemon SPECIES_DITTO
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_DITTO
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0
    endparty

trainerdata 470, "Gregg"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCIENTIST_1
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 470
        // mon 0
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_PORYGON_Z
        move MOVE_TRI_ATTACK
        move MOVE_ICE_BEAM
        move MOVE_THUNDERBOLT
        move MOVE_NASTY_PLOT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 36
        pokemon SPECIES_MAGNEZONE
        move MOVE_THUNDERBOLT
        move MOVE_FLASH_CANNON
        move MOVE_CHARGE_BEAM
        move MOVE_POWER_GEM
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 36
        monwithform SPECIES_WORMADAM, 1
        move MOVE_QUIVER_DANCE
        move MOVE_CONFUSION
        move MOVE_FLASH_CANNON
        move MOVE_EARTH_POWER
        ballseal 0
    endparty

trainerdata 471, "Garett"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCIENTIST_1
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 471
        // mon 0
        ivs 0
        abilityslot 32
        level 41
        pokemon SPECIES_SCIZOR
        move MOVE_BULLET_PUNCH
        move MOVE_U_TURN
        move MOVE_BUG_BITE
        move MOVE_SUPERPOWER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 42
        pokemon SPECIES_AMPHAROS
        move MOVE_THUNDERBOLT
        move MOVE_DRAGON_PULSE
        move MOVE_SIGNAL_BEAM
        move MOVE_POWER_GEM
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_PERRSERKER
        move MOVE_BULLET_PUNCH
        move MOVE_ICE_FANG
        move MOVE_THUNDER_FANG
        move MOVE_DOUBLE_EDGE
        ballseal 0
    endparty

trainerdata 472, "Trenton"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCIENTIST_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 472
        // mon 0
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_PORYGON_Z
        move MOVE_TRI_ATTACK
        move MOVE_AURA_SPHERE
        move MOVE_ICE_BEAM
        move MOVE_CHARGE_BEAM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 42
        pokemon SPECIES_TOXTRICITY
        move MOVE_SPARK
        move MOVE_QUICK_ATTACK
        move MOVE_BULLDOZE
        move MOVE_SHIFT_GEAR
        ballseal 0
    endparty

trainerdata 473, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SUPER_NERD
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 473
        // mon 0
        ivs 0
        abilityslot 0
        level 22
        pokemon SPECIES_KOFFING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 22
        pokemon SPECIES_KOFFING
        ballseal 0
    endparty

trainerdata 474, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SUPER_NERD
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 474
        // mon 0
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_DITTO
        ballseal 0
    endparty

trainerdata 475, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SUPER_NERD
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 475
        // mon 0
        ivs 0
        abilityslot 32
        level 20
        pokemon SPECIES_MAGNEMITE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_MAGNEMITE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 20
        pokemon SPECIES_MAGNEMITE
        ballseal 0
    endparty

trainerdata 476, "Mickey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SUPER_NERD
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 476
        // mon 0
        ivs 0
        abilityslot 0
        level 27
        pokemon SPECIES_MAGNEMITE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 27
        pokemon SPECIES_MAGNEMITE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 27
        pokemon SPECIES_MAGNEMITE
        ballseal 0
    endparty

trainerdata 477, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SUPER_NERD
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 477
        // mon 0
        ivs 0
        abilityslot 32
        level 30
        pokemon SPECIES_PORYGON
        move MOVE_CONVERSION
        move MOVE_CONVERSION_2
        move MOVE_RECOVER
        move MOVE_TRI_ATTACK
        ballseal 0
    endparty

trainerdata 478, "Ariana"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_EXECUTIVE
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 478
        // mon 0
        ivs 255
        abilityslot 0
        level 40
        pokemon SPECIES_CHERRIM
        item ITEM_MIRACLE_SEED
        move MOVE_MORNING_SUN
        move MOVE_SOLAR_BEAM
        move MOVE_GIGA_DRAIN
        move MOVE_DAZZLING_GLEAM
        ability ABILITY_FLOWER_GIFT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 41
        pokemon SPECIES_LEAFEON
        item ITEM_LIFE_ORB
        move MOVE_SOLAR_BLADE
        move MOVE_STOMPING_TANTRUM
        move MOVE_SWORDS_DANCE
        move MOVE_X_SCISSOR
        ability ABILITY_CHLOROPHYLL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 40
        pokemon SPECIES_ARBOK
        item ITEM_BLACK_SLUDGE
        move MOVE_CRUNCH
        move MOVE_GUNK_SHOT
        move MOVE_KNOCK_OFF
        move MOVE_GLARE
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 479, "Ariana"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_EXECUTIVE
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 479
        // mon 0
        ivs 255
        abilityslot 0
        level 46
        pokemon SPECIES_TORKOAL
        item ITEM_HEAT_ROCK
        move MOVE_PROTECT
        move MOVE_IRON_DEFENSE
        move MOVE_LAVA_PLUME
        move MOVE_SUNNY_DAY
        ability ABILITY_DROUGHT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CALM
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 46
        pokemon SPECIES_LEAFEON
        item ITEM_LIFE_ORB
        move MOVE_SOLAR_BLADE
        move MOVE_STOMPING_TANTRUM
        move MOVE_SWORDS_DANCE
        move MOVE_X_SCISSOR
        ability ABILITY_CHLOROPHYLL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 47
        pokemon SPECIES_CHERRIM
        item ITEM_MIRACLE_SEED
        move MOVE_SUNNY_DAY
        move MOVE_SOLAR_BEAM
        move MOVE_GIGA_DRAIN
        move MOVE_DAZZLING_GLEAM
        ability ABILITY_FLOWER_GIFT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 480, "Diana"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_SKIER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 480
        // mon 0
        ivs 255
        abilityslot 0
        level 39                                            
        pokemon SPECIES_DELIBIRD
        item ITEM_NONE
        move MOVE_ICY_WIND
        move MOVE_WATER_PULSE
        move MOVE_ROOST
        move MOVE_AIR_SLASH
        ability ABILITY_VITAL_SPIRIT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 39
        pokemon SPECIES_WEAVILE
        item ITEM_NONE
        move MOVE_ICICLE_CRASH
        move MOVE_ICE_SHARD
        move MOVE_KNOCK_OFF
        move MOVE_HONE_CLAWS
        ability ABILITY_PICKPOCKET
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 481, "Jill"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_SKIER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 481
        // mon 0
        ivs 255
        abilityslot 0
        level 40                                            
        pokemon SPECIES_FROSLASS
        item ITEM_NONE
        move MOVE_ICY_WIND
        move MOVE_SHADOW_BALL
        move MOVE_DRAINING_KISS
        move MOVE_WILL_O_WISP
        ability ABILITY_ADAPTABILITY
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 40                                            
        monwithform SPECIES_ROTOM, 3
        item ITEM_NONE
        move MOVE_BLIZZARD
        move MOVE_THUNDERBOLT
        move MOVE_PAIN_SPLIT
        move MOVE_WILL_O_WISP
        ability ABILITY_LEVITATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 482, "Deandre"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_BOARDER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 482
        // mon 0
        ivs 255
        abilityslot 0
        level 39                                        
        monwithform SPECIES_AVALUGG, 1
        item ITEM_NONE
        move MOVE_ROCK_SLIDE
        move MOVE_WIDE_GUARD
        move MOVE_AVALANCHE
        move MOVE_MOUNTAIN_GALE
        ability ABILITY_STRONG_JAW
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 0, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BRAVE
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 40    
        pokemon SPECIES_MR_RIME
        item ITEM_NONE
        move MOVE_ICY_WIND
        move MOVE_PSYCHIC
        move MOVE_HYPNOSIS
        move MOVE_FOUL_PLAY
        ability ABILITY_SCREEN_CLEANER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 43    
        pokemon SPECIES_EISCUE
        item ITEM_NONE
        move MOVE_ICICLE_SPEAR
        move MOVE_LIQUIDATION
        move MOVE_BELLY_DRUM
        move MOVE_FIRST_IMPRESSION
        ability ABILITY_ICE_FACE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 483, "Patton"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_BOARDER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 483
        // mon 0
        ivs 255
        abilityslot 0
        level 39                                        
        pokemon SPECIES_GLACEON
        item ITEM_NONE
        move MOVE_ICY_WIND
        move MOVE_HELPING_HAND
        move MOVE_SHADOW_BALL
        move MOVE_DISCHARGE
        ability ABILITY_COMPETITIVE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 39                                        
        pokemon SPECIES_AVALUGG
        item ITEM_NONE
        move MOVE_WIDE_GUARD
        move MOVE_AVALANCHE
        move MOVE_GYRO_BALL
        move MOVE_RECOVER
        ability ABILITY_FILTER
        setivs 31, 31, 31, 0, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 0, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BRAVE
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 484, "Gerardo"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_BOARDER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 484
        // mon 0
        ivs 255
        abilityslot 0
        level 40                                            
        pokemon SPECIES_ARCTOZOLT
        item ITEM_NONE
        move MOVE_BOLT_BEAK
        move MOVE_ICICLE_CRASH
        move MOVE_LOW_KICK
        move MOVE_STOMPING_TANTRUM
        ability ABILITY_VOLT_ABSORB
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 40
        pokemon SPECIES_WEAVILE
        item ITEM_NONE
        move MOVE_ICICLE_CRASH
        move MOVE_ICE_SHARD
        move MOVE_KNOCK_OFF
        move MOVE_HONE_CLAWS
        ability ABILITY_PICKPOCKET
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 485, "Archer"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_EXECUTIVE_0
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 485
        // mon 0
        ivs 255
        abilityslot 0
        level 48
        pokemon SPECIES_CROBAT
        item ITEM_BLACK_SLUDGE
        move MOVE_TAILWIND
        move MOVE_LEECH_LIFE
        move MOVE_BRAVE_BIRD
        move MOVE_POISON_JAB
        ability ABILITY_INFILTRATOR
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 47
        pokemon SPECIES_REVAVROOM
        item ITEM_AIR_BALLOON
        move MOVE_SHIFT_GEAR
        move MOVE_SPIN_OUT
        move MOVE_GUNK_SHOT
        move MOVE_TAUNT
        ability ABILITY_FILTER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 50
        pokemon SPECIES_HOUNDOOM
        item ITEM_LIFE_ORB
        move MOVE_LAVA_PLUME
        move MOVE_DARK_PULSE
        move MOVE_FOCUS_BLAST
        move MOVE_NASTY_PLOT
        ability ABILITY_FLASH_FIRE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 0
        level 47
        pokemon SPECIES_DRAGAPULT
        item ITEM_FOCUS_SASH
        move MOVE_DRAGON_DARTS
        move MOVE_PHANTOM_FORCE
        move MOVE_WILL_O_WISP
        move MOVE_U_TURN
        ability ABILITY_INFILTRATOR
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 0
        level 48
        pokemon SPECIES_TOXAPEX
        item ITEM_LEFTOVERS
        move MOVE_WIDE_GUARD
        move MOVE_RECOVER
        move MOVE_TOXIC
        move MOVE_POISON_JAB
        ability ABILITY_REGENERATOR
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 486, "Proton"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_EXECUTIVE_1
    nummons 2
    item ITEM_POTION
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 486
        // mon 0
        ivs 200
        abilityslot 0
        level 14
        pokemon SPECIES_CROAGUNK
        item ITEM_BLACK_SLUDGE
        move MOVE_LOW_KICK
        move MOVE_POISON_STING
        move MOVE_DIG
        move MOVE_PROTECT
        ability ABILITY_DRY_SKIN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 15
        pokemon SPECIES_IMPIDIMP
        item ITEM_LEFTOVERS
        move MOVE_ASSURANCE
        move MOVE_SWAGGER
        move MOVE_FAKE_OUT
        move MOVE_TAUNT
        ability ABILITY_PRANKSTER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 487, "Petrel"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_EXECUTIVE_2
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 487
        // mon 0
        ivs 255
        abilityslot 0
        level 42
        pokemon SPECIES_RATICATE
        item ITEM_LIFE_ORB
        move MOVE_DOUBLE_EDGE
        move MOVE_FIRE_FANG
        move MOVE_THUNDER_FANG
        move MOVE_ICE_FANG
        ability ABILITY_STRONG_JAW
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 44
        monwithform SPECIES_WEEZING, 1
        item ITEM_BLACK_SLUDGE
        move MOVE_PAIN_SPLIT
        move MOVE_SLUDGE_BOMB
        move MOVE_HEAT_WAVE
        move MOVE_AROMATIC_MIST
        ability ABILITY_MISTY_SURGE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 42
        pokemon SPECIES_NOCTOWL
        item ITEM_LEFTOVERS
        move MOVE_HURRICANE
        move MOVE_DARK_PULSE
        move MOVE_ROOST
        move MOVE_MOONBLAST
        ability ABILITY_TINTED_LENS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 0
        level 42
        pokemon SPECIES_CENTISKORCH
        item ITEM_ASSAULT_VEST
        move MOVE_FIRE_LASH
        move MOVE_FIRST_IMPRESSION
        move MOVE_ROCK_SLIDE
        move MOVE_LEECH_LIFE
        ability ABILITY_FLASH_FIRE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 255
        abilityslot 0
        level 42
        pokemon SPECIES_METAGROSS
        item ITEM_AIR_BALLOON
        move MOVE_HAMMER_ARM
        move MOVE_ZEN_HEADBUTT
        move MOVE_ROCK_SLIDE
        move MOVE_METEOR_MASH
        ability ABILITY_TOUGH_CLAWS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 5
        ivs 255
        abilityslot 0
        level 42
        pokemon SPECIES_KROOKODILE
        item ITEM_FOCUS_SASH
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        move MOVE_GUNK_SHOT
        move MOVE_BRUTAL_SWING
        ability ABILITY_INTIMIDATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 488, "Petrel"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_EXECUTIVE_2
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 488
        // mon 0
        ivs 255
        abilityslot 0
        level 39
        pokemon SPECIES_RATICATE
        item ITEM_LIFE_ORB
        move MOVE_DOUBLE_EDGE
        move MOVE_FIRE_FANG
        move MOVE_THUNDER_FANG
        move MOVE_ICE_FANG
        ability ABILITY_STRONG_JAW
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 40
        monwithform SPECIES_WEEZING, 1
        item ITEM_BLACK_SLUDGE
        move MOVE_MOONBLAST
        move MOVE_SLUDGE_BOMB
        move MOVE_HEAT_WAVE
        move MOVE_PAIN_SPLIT
        ability ABILITY_MISTY_SURGE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 39
        pokemon SPECIES_NOCTOWL
        item ITEM_LEFTOVERS
        move MOVE_HURRICANE
        move MOVE_DARK_PULSE
        move MOVE_ROOST
        move MOVE_MOONBLAST
        ability ABILITY_TINTED_LENS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 0
        level 39
        pokemon SPECIES_CENTISKORCH
        item ITEM_ASSAULT_VEST
        move MOVE_FIRE_LASH
        move MOVE_FIRST_IMPRESSION
        move MOVE_ROCK_SLIDE
        move MOVE_LEECH_LIFE
        ability ABILITY_FLASH_FIRE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 489, "Silver"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_RIVAL
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 489
        // mon 0
        ivs 250
        abilityslot 0
        level 55
        pokemon SPECIES_SNEASEL
        move MOVE_ICY_WIND
        move MOVE_SHADOW_CLAW
        move MOVE_FEINT_ATTACK
        move MOVE_METAL_CLAW
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 0
        level 58
        pokemon SPECIES_CROBAT
        move MOVE_TOXIC
        move MOVE_BITE
        move MOVE_CONFUSE_RAY
        move MOVE_AIR_CUTTER
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 0
        level 55
        pokemon SPECIES_MAGNETON
        move MOVE_DISCHARGE
        move MOVE_MIRROR_SHOT
        move MOVE_THUNDER_WAVE
        move MOVE_MAGNET_BOMB
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 0
        level 56
        pokemon SPECIES_GENGAR
        move MOVE_DARK_PULSE
        move MOVE_SLUDGE_BOMB
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 0
        level 56
        pokemon SPECIES_ALAKAZAM
        move MOVE_RECOVER
        move MOVE_FOCUS_BLAST
        move MOVE_PSYCHIC
        move MOVE_REFLECT
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 0
        level 60
        pokemon SPECIES_MEGANIUM
        move MOVE_PETAL_DANCE
        move MOVE_BODY_SLAM
        move MOVE_LIGHT_SCREEN
        move MOVE_SYNTHESIS
        ballseal 0
    endparty

trainerdata 490, "Silver"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_RIVAL
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 490
        // mon 0
        ivs 250
        abilityslot 0
        level 55
        pokemon SPECIES_SNEASEL
        move MOVE_ICY_WIND
        move MOVE_SHADOW_CLAW
        move MOVE_FEINT_ATTACK
        move MOVE_METAL_CLAW
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 0
        level 58
        pokemon SPECIES_CROBAT
        move MOVE_TOXIC
        move MOVE_BITE
        move MOVE_CONFUSE_RAY
        move MOVE_AIR_CUTTER
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 0
        level 55
        pokemon SPECIES_MAGNETON
        move MOVE_DISCHARGE
        move MOVE_MIRROR_SHOT
        move MOVE_THUNDER_WAVE
        move MOVE_MAGNET_BOMB
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 0
        level 56
        pokemon SPECIES_GENGAR
        move MOVE_DARK_PULSE
        move MOVE_SLUDGE_BOMB
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 0
        level 56
        pokemon SPECIES_ALAKAZAM
        move MOVE_RECOVER
        move MOVE_FOCUS_BLAST
        move MOVE_PSYCHIC
        move MOVE_REFLECT
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 0
        level 60
        pokemon SPECIES_TYPHLOSION
        move MOVE_ROLLOUT
        move MOVE_FLAMETHROWER
        move MOVE_WILL_O_WISP
        move MOVE_SWIFT
        ballseal 0
    endparty

trainerdata 491, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_RIVAL
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 491
        // mon 0
        ivs 250
        abilityslot 0
        level 55
        pokemon SPECIES_SNEASEL
        item ITEM_NONE
        move MOVE_ICY_WIND
        move MOVE_SHADOW_CLAW
        move MOVE_FEINT_ATTACK
        move MOVE_METAL_CLAW
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 0
        level 58
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_BITE
        move MOVE_CONFUSE_RAY
        move MOVE_AIR_CUTTER
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 0
        level 55
        pokemon SPECIES_MAGNETON
        item ITEM_NONE
        move MOVE_DISCHARGE
        move MOVE_MIRROR_SHOT
        move MOVE_THUNDER_WAVE
        move MOVE_MAGNET_BOMB
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 0
        level 56
        pokemon SPECIES_GENGAR
        item ITEM_NONE
        move MOVE_DARK_PULSE
        move MOVE_SLUDGE_BOMB
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 0
        level 56
        pokemon SPECIES_ALAKAZAM
        item ITEM_NONE
        move MOVE_RECOVER
        move MOVE_FOCUS_BLAST
        move MOVE_PSYCHIC
        move MOVE_REFLECT
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 0
        level 60
        pokemon SPECIES_FERALIGATR
        item ITEM_NONE
        move MOVE_CRUNCH
        move MOVE_AQUA_TAIL
        move MOVE_SLASH
        move MOVE_ICE_FANG
        ballseal 0
    endparty

trainerdata 492, "Alex"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKEFAN_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 492
        // mon 0
        ivs 0
        abilityslot 32
        level 70
        pokemon SPECIES_NIDOKING
        move MOVE_PROTECT
        move MOVE_HIGH_HORSEPOWER
        move MOVE_POISON_JAB
        move MOVE_ROCK_SLIDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_SLOWKING
        move MOVE_SLACK_OFF
        move MOVE_PSYSHOCK
        move MOVE_CALM_MIND
        move MOVE_HYDRO_PUMP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_GYARADOS
        move MOVE_WAVE_CRASH
        move MOVE_DRAGON_RUSH
        move MOVE_PROTECT
        move MOVE_CRUNCH
        ballseal 0
    endparty

trainerdata 493, "Edith"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_MEDIUM
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 493
        // mon 0
        ivs 255
        abilityslot 0
        level 25
        pokemon SPECIES_PHANTUMP
        item ITEM_SITRUS_BERRY
        move MOVE_WILL_O_WISP
        move MOVE_SHADOW_CLAW
        move MOVE_LEECH_SEED
        move MOVE_HORN_LEECH
        ability ABILITY_HARVEST
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 26
        pokemon SPECIES_PUMPKABOO
        item ITEM_NONE
        move MOVE_WILL_O_WISP
        move MOVE_ENERGY_BALL
        move MOVE_LEECH_SEED
        move MOVE_SHADOW_BALL
        ability ABILITY_INSOMNIA
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 494, "Georgina"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_MEDIUM
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 494
        // mon 0
        ivs 255
        abilityslot 0
        level 25
        pokemon SPECIES_DRIFLOON
        item ITEM_NONE
        move MOVE_DESTINY_BOND
        move MOVE_TAILWIND
        move MOVE_WILL_O_WISP
        move MOVE_SUPERSONIC
        ability ABILITY_AFTERMATH
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 25
        pokemon SPECIES_SPIRITOMB
        item ITEM_NONE
        move MOVE_SHADOW_BALL
        move MOVE_WILL_O_WISP
        move MOVE_DARK_PULSE
        move MOVE_ANCIENT_POWER
        ability ABILITY_INFILTRATOR
        setivs 15, 15, 15, 15, 15, 15 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 495, "Boy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PASSERBY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 495
        // mon 0
        ivs 0
        abilityslot 0
        level 5
        pokemon SPECIES_CHIKORITA
        ballseal 0
    endparty

trainerdata 496, "Boy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PASSERBY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 496
        // mon 0
        ivs 0
        abilityslot 0
        level 5
        pokemon SPECIES_CYNDAQUIL
        ballseal 0
    endparty

trainerdata 497, "Boy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PASSERBY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 497
        // mon 0
        ivs 0
        abilityslot 0
        level 5
        pokemon SPECIES_TOTODILE
        ballseal 0
    endparty

trainerdata 498, "Eusine"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_MYSTERY_MAN
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 498
        // mon 0
        ivs 255
        abilityslot 0
        level 37
        pokemon SPECIES_ALAKAZAM
        item ITEM_LIFE_ORB
        move MOVE_DISABLE
        move MOVE_PSYCHIC
        move MOVE_FOCUS_BLAST
        move MOVE_CALM_MIND
        ability ABILITY_MAGIC_GUARD
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
        
        // mon 1
        ivs 255
        abilityslot 0
        level 37
        pokemon SPECIES_ELECTRODE
        item ITEM_LIGHT_CLAY
        move MOVE_ELECTRO_BALL
        move MOVE_LIGHT_SCREEN
        move MOVE_REFLECT
        move MOVE_THUNDER_WAVE
        ability ABILITY_SOUNDPROOF
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 255
        abilityslot 0
        level 37
        pokemon SPECIES_JUMPLUFF
        item ITEM_FOCUS_SASH
        move MOVE_SLEEP_POWDER
        move MOVE_RAGE_POWDER
        move MOVE_ENCORE
        move MOVE_PROTECT
        ability ABILITY_LEAF_GUARD
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 255
        abilityslot 0
        level 37
        pokemon SPECIES_DELPHOX
        item ITEM_LIFE_ORB
        move MOVE_MYSTICAL_FIRE
        move MOVE_PSYCHIC
        move MOVE_FOCUS_BLAST
        move MOVE_CALM_MIND
        ability ABILITY_MAGICIAN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 499, "Grunt"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 499
        // mon 0
        ivs 255
        abilityslot 0
        level 39
        pokemon SPECIES_TORKOAL
        item ITEM_HEAT_ROCK
        move MOVE_PROTECT
        move MOVE_IRON_DEFENSE
        move MOVE_LAVA_PLUME
        move MOVE_SUNNY_DAY
        ability ABILITY_DROUGHT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_CALM
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 255
        abilityslot 0
        level 39
        pokemon SPECIES_SUNFLORA
        item ITEM_LIFE_ORB
        move MOVE_FIRE_BLAST
        move MOVE_SOLAR_BEAM
        move MOVE_GIGA_DRAIN
        move MOVE_GRASS_WHISTLE
        ability ABILITY_CHLOROPHYLL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
        ballseal 0
    endparty

trainerdata 500, "Kobe"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_ACE_TRAINER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 500
        // mon 0
        ivs 50
        abilityslot 0
        level 50
        pokemon SPECIES_GARCHOMP
        move MOVE_EARTHQUAKE
        move MOVE_DRAGON_RUSH
        move MOVE_SWORDS_DANCE
        move MOVE_FIRE_FANG
        ability ABILITY_ROUGH_SKIN
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 50
        pokemon SPECIES_NOIVERN
        move MOVE_BOOMBURST
        move MOVE_DRAGON_PULSE
        move MOVE_FIRE_BLAST
        move MOVE_TAILWIND
        ability ABILITY_AERILATE
        ballseal 0
    endparty

trainerdata 501, "Piper"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_ACE_TRAINER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 501
        // mon 0
        ivs 50
        abilityslot 32
        level 50
        pokemon SPECIES_APPLETUN
        move MOVE_IRON_DEFENSE
        move MOVE_BODY_PRESS
        move MOVE_RECOVER
        move MOVE_LEECH_SEED
        ability ABILITY_THICK_FAT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 50
        pokemon SPECIES_DRAGAPULT
        move MOVE_PHANTOM_FORCE
        move MOVE_DRAGON_DARTS
        move MOVE_WILL_O_WISP
        move MOVE_SUCKER_PUNCH
        ability ABILITY_INFILTRATOR
        ballseal 0
    endparty

trainerdata 502, "Clea & Gil"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 502
        // mon 0
        ivs 0
        abilityslot 0
        level 50
        pokemon SPECIES_DRAGALGE
        move MOVE_HYDRO_PUMP
        move MOVE_SLUDGE_BOMB
        move MOVE_DRAGON_PULSE
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 50
        pokemon SPECIES_GOODRA
        move MOVE_GUNK_SHOT
        move MOVE_AQUA_TAIL
        move MOVE_POWER_WHIP
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 503, "Jack"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_HYPER_POTION
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 503
        // mon 0
        ivs 0
        abilityslot 0
        level 43
        pokemon SPECIES_ELECTRODE
        move MOVE_CHARGE
        move MOVE_CHARGE_BEAM
        move MOVE_SWIFT
        move MOVE_ROLLOUT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_VILEPLUME
        move MOVE_SOLAR_BEAM
        move MOVE_GIGA_DRAIN
        move MOVE_MOONLIGHT
        move MOVE_SUNNY_DAY
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_ARCANINE
        move MOVE_EXTREME_SPEED
        move MOVE_FLAMETHROWER
        move MOVE_CRUNCH
        move MOVE_REVERSAL
        ballseal 0
    endparty

trainerdata 504, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 504
        // mon 0
        ivs 0
        abilityslot 0
        level 35
        pokemon SPECIES_ELECTRODE
        move MOVE_SCREECH
        move MOVE_SONIC_BOOM
        move MOVE_ROLLOUT
        move MOVE_LIGHT_SCREEN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 35
        pokemon SPECIES_GROWLITHE
        move MOVE_SUNNY_DAY
        move MOVE_LEER
        move MOVE_TAKE_DOWN
        move MOVE_FLAME_WHEEL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 37
        pokemon SPECIES_VILEPLUME
        move MOVE_SOLAR_BEAM
        move MOVE_SLEEP_POWDER
        move MOVE_ACID
        move MOVE_MOONLIGHT
        ballseal 0
    endparty

trainerdata 505, "Alan"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 505
        // mon 0
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_XATU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 54
        pokemon SPECIES_TANGROWTH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_QUAGSIRE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 54
        pokemon SPECIES_YANMEGA
        ballseal 0
    endparty

trainerdata 506, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 506
        // mon 0
        ivs 0
        abilityslot 0
        level 35
        pokemon SPECIES_XATU
        move MOVE_PECK
        move MOVE_NIGHT_SHADE
        move MOVE_SWIFT
        move MOVE_FUTURE_SIGHT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_TANGELA
        move MOVE_POISON_POWDER
        move MOVE_VINE_WHIP
        move MOVE_BIND
        move MOVE_MEGA_DRAIN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_YANMA
        move MOVE_QUICK_ATTACK
        move MOVE_NONE
        move MOVE_SONIC_BOOM
        move MOVE_SUPERSONIC
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 35
        pokemon SPECIES_QUAGSIRE
        move MOVE_TAIL_WHIP
        move MOVE_SLAM
        move MOVE_AMNESIA
        move MOVE_EARTHQUAKE
        ballseal 0
    endparty

trainerdata 507, "Chad"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 507
        // mon 0
        ivs 0
        abilityslot 0
        level 46
        pokemon SPECIES_MR_MIME
        move MOVE_BATON_PASS
        move MOVE_NONE
        move MOVE_LIGHT_SCREEN
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 56
        pokemon SPECIES_MAGNETON
        move MOVE_GYRO_BALL
        move MOVE_MIRROR_SHOT
        move MOVE_THUNDER_WAVE
        move MOVE_MAGNET_BOMB
        ballseal 0
    endparty

trainerdata 508, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 508
        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_MR_MIME
        move MOVE_PSYCHIC
        move MOVE_LIGHT_SCREEN
        move MOVE_REFLECT
        move MOVE_ENCORE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_MAGNETON
        move MOVE_ZAP_CANNON
        move MOVE_THUNDER_WAVE
        move MOVE_LOCK_ON
        move MOVE_SWIFT
        ballseal 0
    endparty

trainerdata 509, "Huey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SAILOR
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 509
        // mon 0
        ivs 0
        abilityslot 0
        level 48
        pokemon SPECIES_POLITOED
        move MOVE_WHIRLPOOL
        move MOVE_RAIN_DANCE
        move MOVE_BODY_SLAM
        move MOVE_PERISH_SONG
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_POLIWRATH
        move MOVE_SURF
        move MOVE_STRENGTH
        move MOVE_ICE_PUNCH
        move MOVE_SUBMISSION
        ballseal 0
    endparty

trainerdata 510, "Joey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_YOUNGSTER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 510
        // mon 0
        ivs 0
        abilityslot 0
        level 54
        pokemon SPECIES_RATICATE
        move MOVE_HYPER_FANG
        move MOVE_QUICK_ATTACK
        move MOVE_SUBSTITUTE
        move MOVE_ENDEAVOR
        ballseal 0
    endparty

trainerdata 511, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_YOUNGSTER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 511
        // mon 0
        ivs 0
        abilityslot 0
        level 37
        pokemon SPECIES_RATICATE
        move MOVE_HYPER_BEAM
        move MOVE_QUICK_ATTACK
        move MOVE_HYPER_FANG
        move MOVE_PURSUIT
        ballseal 0
    endparty

trainerdata 512, "Wade"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BUG_CATCHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 512
        // mon 0
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_BUTTERFREE
        move MOVE_BUG_BITE
        move MOVE_GUST
        move MOVE_SUPERSONIC
        move MOVE_WHIRLWIND
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_BUTTERFREE
        move MOVE_BUG_BUZZ
        move MOVE_STUN_SPORE
        move MOVE_CAPTIVATE
        move MOVE_TAILWIND
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 43
        pokemon SPECIES_BEEDRILL
        move MOVE_ENDEAVOR
        move MOVE_FOCUS_ENERGY
        move MOVE_PIN_MISSILE
        move MOVE_BUG_BITE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_BUTTERFREE
        move MOVE_STUN_SPORE
        move MOVE_SLEEP_POWDER
        move MOVE_CAPTIVATE
        move MOVE_TAILWIND
        ballseal 0
    endparty

trainerdata 513, "Arnie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 513
        // mon 0
        ivs 0
        abilityslot 0
        level 45
        pokemon SPECIES_NINCADA
        move MOVE_DIG
        move MOVE_METAL_CLAW
        move MOVE_MUD_SLAP
        move MOVE_LEECH_LIFE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 56
        pokemon SPECIES_VENOMOTH
        move MOVE_GUST
        move MOVE_PSYCHIC
        move MOVE_POISON_FANG
        move MOVE_SIGNAL_BEAM
        ballseal 0
    endparty

trainerdata 514, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BUG_CATCHER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 514
        // mon 0
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_VENOMOTH
        move MOVE_GUST
        move MOVE_SUPERSONIC
        move MOVE_PSYCHIC
        move MOVE_TOXIC
        ballseal 0
    endparty

trainerdata 515, "Ralph"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 515
        // mon 0
        ivs 0
        abilityslot 0
        level 53
        pokemon SPECIES_QWILFISH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 56
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 516, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 516
        // mon 0
        ivs 0
        abilityslot 0
        level 35
        pokemon SPECIES_QWILFISH
        move MOVE_TOXIC
        move MOVE_NONE
        move MOVE_SURF
        move MOVE_PIN_MISSILE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 39
        pokemon SPECIES_SEAKING
        move MOVE_ENDURE
        move MOVE_FLAIL
        move MOVE_FURY_ATTACK
        move MOVE_WATERFALL
        ballseal 0
    endparty

trainerdata 517, "Tully"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 517
        // mon 0
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_SEAKING
        move MOVE_WATER_PULSE
        move MOVE_RAIN_DANCE
        move MOVE_WATERFALL
        move MOVE_AQUA_RING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 50
        pokemon SPECIES_SEAKING
        move MOVE_WATER_PULSE
        move MOVE_RAIN_DANCE
        move MOVE_WATERFALL
        move MOVE_MEGAHORN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 53
        pokemon SPECIES_QWILFISH
        move MOVE_ROLLOUT
        move MOVE_SURF
        move MOVE_AQUA_TAIL
        move MOVE_NONE
        ballseal 0
    endparty

trainerdata 518, "Liz"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 518
        // mon 0
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_VICTREEBEL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 58
        pokemon SPECIES_NIDOKING
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 60
        pokemon SPECIES_NIDOQUEEN
        ballseal 0
    endparty

trainerdata 519, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 519
        // mon 0
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_WEEPINBELL
        move MOVE_SLEEP_POWDER
        move MOVE_POISON_POWDER
        move MOVE_STUN_SPORE
        move MOVE_SLUDGE_BOMB
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_NIDOKING
        move MOVE_EARTHQUAKE
        move MOVE_DOUBLE_KICK
        move MOVE_POISON_STING
        move MOVE_IRON_TAIL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_NIDOQUEEN
        move MOVE_EARTHQUAKE
        move MOVE_DOUBLE_KICK
        move MOVE_TAIL_WHIP
        move MOVE_BODY_SLAM
        ballseal 0
    endparty

trainerdata 520, "Gina"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 520
        // mon 0
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_SKIPLOOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_JUMPLUFF
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 55
        pokemon SPECIES_VENUSAUR
        ballseal 0
    endparty

trainerdata 521, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 521
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_JUMPLUFF
        move MOVE_STUN_SPORE
        move MOVE_SUNNY_DAY
        move MOVE_LEECH_SEED
        move MOVE_COTTON_SPORE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_JUMPLUFF
        move MOVE_SUNNY_DAY
        move MOVE_SLEEP_POWDER
        move MOVE_LEECH_SEED
        move MOVE_COTTON_SPORE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_VENUSAUR
        move MOVE_SOLAR_BEAM
        move MOVE_RAZOR_LEAF
        move MOVE_HEADBUTT
        move MOVE_MUD_SLAP
        ballseal 0
    endparty

trainerdata 522, "Tiffany"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PICNICKER
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 522
        // mon 0
        ivs 0
        abilityslot 0
        level 61
        pokemon SPECIES_CLEFABLE
        move MOVE_GRAVITY
        move MOVE_METRONOME
        move MOVE_BLIZZARD
        move MOVE_THUNDER
        ballseal 0
    endparty

trainerdata 523, "Anthony"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 523
        // mon 0
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 49
        pokemon SPECIES_GOLEM
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 55
        pokemon SPECIES_MACHAMP
        ballseal 0
    endparty

trainerdata 524, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 524
        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_GRAVELER
        move MOVE_MAGNITUDE
        move MOVE_SELF_DESTRUCT
        move MOVE_DEFENSE_CURL
        move MOVE_ROLLOUT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_GOLEM
        move MOVE_MAGNITUDE
        move MOVE_SELF_DESTRUCT
        move MOVE_DEFENSE_CURL
        move MOVE_ROLLOUT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_MACHOKE
        move MOVE_KARATE_CHOP
        move MOVE_VITAL_THROW
        move MOVE_HEADBUTT
        move MOVE_DIG
        ballseal 0
    endparty

trainerdata 525, "Todd"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 525
        // mon 0
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 44
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 54
        pokemon SPECIES_MAGCARGO
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 56
        pokemon SPECIES_GOLDUCK
        ballseal 0
    endparty

trainerdata 526, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 526
        // mon 0
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_GRAVELER
        move MOVE_SELF_DESTRUCT
        move MOVE_ROCK_THROW
        move MOVE_HARDEN
        move MOVE_MAGNITUDE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_GRAVELER
        move MOVE_SELF_DESTRUCT
        move MOVE_ROCK_THROW
        move MOVE_HARDEN
        move MOVE_MAGNITUDE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_MAGCARGO
        move MOVE_ROCK_THROW
        move MOVE_HARDEN
        move MOVE_AMNESIA
        move MOVE_FLAMETHROWER
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_GOLDUCK
        move MOVE_DISABLE
        move MOVE_PSYCHIC
        move MOVE_SURF
        move MOVE_PSYCH_UP
        ballseal 0
    endparty

trainerdata 527, "Irwin"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_JUGGLER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 527
        // mon 0
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_VOLTORB
        move MOVE_ROLLOUT
        move MOVE_SPARK
        move MOVE_SONIC_BOOM
        move MOVE_CHARGE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 40
        pokemon SPECIES_VOLTORB
        move MOVE_CHARGE_BEAM
        move MOVE_CHARGE
        move MOVE_LIGHT_SCREEN
        move MOVE_SWIFT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 46
        pokemon SPECIES_ELECTRODE
        move MOVE_THUNDER
        move MOVE_SCREECH
        move MOVE_CHARGE_BEAM
        move MOVE_RAIN_DANCE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 51
        pokemon SPECIES_ELECTRODE
        move MOVE_THUNDER
        move MOVE_MIRROR_COAT
        move MOVE_MAGNET_RISE
        move MOVE_THUNDER_WAVE
        ballseal 0
    endparty

trainerdata 528, "Dana"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LASS
    nummons 2
    item ITEM_MOOMOO_MILK
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 528
        // mon 0
        ivs 0
        abilityslot 0
        level 51
        pokemon SPECIES_GOLDUCK
        move MOVE_WATER_PULSE
        move MOVE_AMNESIA
        move MOVE_CONFUSION
        move MOVE_SCREECH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 54
        pokemon SPECIES_AMPHAROS
        move MOVE_THUNDER
        move MOVE_DISCHARGE
        move MOVE_THUNDER_WAVE
        move MOVE_SIGNAL_BEAM
        ballseal 0
    endparty

trainerdata 529, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LASS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 529
        // mon 0
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_AMPHAROS
        move MOVE_SWIFT
        move MOVE_THUNDER_PUNCH
        move MOVE_THUNDER_WAVE
        move MOVE_COTTON_SPORE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_GOLDUCK
        move MOVE_DISABLE
        move MOVE_SURF
        move MOVE_PSYCHIC
        move MOVE_SCREECH
        ballseal 0
    endparty

trainerdata 530, "Brent"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKE_MANIAC
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 530
        // mon 0
        ivs 0
        abilityslot 0
        level 48
        pokemon SPECIES_GYARADOS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_LICKITUNG
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 58
        pokemon SPECIES_NIDOQUEEN
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 58
        pokemon SPECIES_NIDOKING
        ballseal 0
    endparty

trainerdata 531, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 531
        // mon 0
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_DRATINI
        move MOVE_THUNDER_WAVE
        move MOVE_TWISTER
        move MOVE_ICE_BEAM
        move MOVE_HEADBUTT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_DRATINI
        move MOVE_THUNDER_WAVE
        move MOVE_TWISTER
        move MOVE_FLAMETHROWER
        move MOVE_HEADBUTT
        ballseal 0
    endparty

trainerdata 532, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BUG_CATCHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 532
        // mon 0
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_BUTTERFREE
        move MOVE_CONFUSION
        move MOVE_POISON_POWDER
        move MOVE_SUPERSONIC
        move MOVE_GUST
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_BUTTERFREE
        move MOVE_CONFUSION
        move MOVE_STUN_SPORE
        move MOVE_SUPERSONIC
        move MOVE_GUST
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_BEEDRILL
        move MOVE_FURY_ATTACK
        move MOVE_PURSUIT
        move MOVE_TWINEEDLE
        move MOVE_NONE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_BUTTERFREE
        move MOVE_PSYBEAM
        move MOVE_SLEEP_POWDER
        move MOVE_GUST
        move MOVE_WHIRLWIND
        ballseal 0
    endparty

trainerdata 533, "Wayne"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 533
        // mon 0
        ivs 0
        abilityslot 0
        level 8
        pokemon SPECIES_LEDYBA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 10
        pokemon SPECIES_PARAS
        ballseal 0
    endparty

trainerdata 534, "Kimberly"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BEAUTY
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 534
        // mon 0
        ivs 0
        abilityslot 0
        level 19
        pokemon SPECIES_CORSOLA
        ballseal 0
    endparty

trainerdata 535, "Marigold"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKEFAN_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 535
        // mon 0
        ivs 0
        abilityslot 32
        level 16
        pokemon SPECIES_MEOWTH
        ballseal 0
    endparty

trainerdata 536, "Bertrand"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 536
        // mon 0
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_FEAROW
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_PRIMEAPE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_TAUROS
        ballseal 0
    endparty

trainerdata 537, "Harrison"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKE_MANIAC
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 537
        // mon 0
        ivs 0
        abilityslot 32
        level 32
        pokemon SPECIES_SANDACONDA
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        move MOVE_BODY_PRESS
        move MOVE_COIL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_EISCUE
        move MOVE_ICICLE_SPEAR
        move MOVE_LIQUIDATION
        move MOVE_HEADBUTT
        move MOVE_MIST
        ballseal 0
    endparty

trainerdata 538, "Hugh" // TODO
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SUPER_NERD
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 538
        // mon 0
        ivs 0
        abilityslot 0
        level 39
        pokemon SPECIES_SEADRA
        move MOVE_SMOKESCREEN
        move MOVE_TWISTER
        move MOVE_SURF
        move MOVE_WATERFALL
        ballseal 0
    endparty

trainerdata 539, "Markus"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SUPER_NERD
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 539
        // mon 0
        ivs 0
        abilityslot 32
        level 32
        pokemon SPECIES_MAGNETON
        move MOVE_THUNDERBOLT
        move MOVE_FLASH_CANNON
        move MOVE_POWER_GEM
        move MOVE_THUNDER_WAVE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 32
        monwithform SPECIES_SLIGGOO, 1
        move MOVE_HEAVY_SLAM
        move MOVE_BODY_PRESS
        move MOVE_ACID_ARMOR
        move MOVE_LIFE_DEW
        ballseal 0
    endparty

trainerdata 540, "Rex"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKEFAN_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 540
        // mon 0
        ivs 0
        abilityslot 0
        level 45
        pokemon SPECIES_PHANPY
        ballseal 0
    endparty

trainerdata 541, "Andy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKEFAN_M
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 541
        // mon 0
        ivs 0
        abilityslot 32
        level 44
        pokemon SPECIES_TEDDIURSA
        ballseal 0
    endparty

trainerdata 542, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SAGE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 542
        // mon 0
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_NOCTOWL
        move MOVE_FORESIGHT
        move MOVE_HYPNOSIS
        move MOVE_TAKE_DOWN
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_FLAREON
        move MOVE_SAND_ATTACK
        move MOVE_FLAMETHROWER
        move MOVE_QUICK_ATTACK
        move MOVE_BITE
        ballseal 0
    endparty

trainerdata 543, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SAGE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 543
        // mon 0
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_NOCTOWL
        move MOVE_FORESIGHT
        move MOVE_HYPNOSIS
        move MOVE_TAKE_DOWN
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_JOLTEON
        move MOVE_SAND_ATTACK
        move MOVE_THUNDERBOLT
        move MOVE_QUICK_ATTACK
        move MOVE_DOUBLE_KICK
        ballseal 0
    endparty

trainerdata 544, "Mickey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SAGE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 544
        // mon 0
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_NOCTOWL
        move MOVE_FORESIGHT
        move MOVE_HYPNOSIS
        move MOVE_TAKE_DOWN
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_VAPOREON
        move MOVE_SAND_ATTACK
        move MOVE_SURF
        move MOVE_QUICK_ATTACK
        move MOVE_BITE
        ballseal 0
    endparty

trainerdata 545, "French"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_M
    nummons 4
    item ITEM_DIRE_HIT
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 545
        // mon 0
        ivs 50
        abilityslot 32
        level 74
        pokemon SPECIES_LOKIX
        item ITEM_FOCUS_SASH
        move MOVE_FIRST_IMPRESSION
        move MOVE_NIGHT_SLASH
        move MOVE_AXE_KICK
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 74
        pokemon SPECIES_ALAKAZAM
        item ITEM_SITRUS_BERRY
        move MOVE_PSYCHIC
        move MOVE_CALM_MIND
        move MOVE_FOCUS_BLAST
        move MOVE_ENERGY_BALL
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 74
        pokemon SPECIES_GENGAR
        item ITEM_BLACK_SLUDGE
        move MOVE_SHADOW_BALL
        move MOVE_SLUDGE_BOMB
        move MOVE_FOCUS_BLAST
        move MOVE_SUBSTITUTE
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 0
        level 74
        pokemon SPECIES_SQUAWKABILLY
        item ITEM_CHOICE_BAND
        move MOVE_FLY
        move MOVE_BODY_SLAM
        move MOVE_U_TURN
        move MOVE_EXTREME_SPEED
        ballseal 0
    endparty

trainerdata 546, "Sherman"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 546
        // mon 0
        ivs 0
        abilityslot 0
        level 73
        pokemon SPECIES_FURRET
        move MOVE_SWORDS_DANCE
        move MOVE_BATON_PASS
        move MOVE_EXTREME_SPEED
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_PYUKUMUKU
        move MOVE_PAIN_SPLIT
        move MOVE_TOXIC
        move MOVE_LIQUIDATION
        move MOVE_HELPING_HAND
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 73
        pokemon SPECIES_BRAMBLEGHAST
        move MOVE_POWER_WHIP
        move MOVE_PAIN_SPLIT
        move MOVE_CURSE
        move MOVE_PHANTOM_FORCE
        ballseal 0
    endparty

trainerdata 547, "Bruce"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 547
        // mon 0
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_GLIMMORA
        move MOVE_TOXIC_SPIKES
        move MOVE_MORTAL_SPIN
        move MOVE_SPIKY_SHIELD
        move MOVE_POWER_GEM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 74
        monwithform SPECIES_LYCANROC, 1
        move MOVE_ACCELEROCK
        move MOVE_SUCKER_PUNCH
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 74
        monwithform SPECIES_DECIDUEYE, 1
        move MOVE_BULK_UP
        move MOVE_TRIPLE_ARROWS
        move MOVE_LEAF_BLADE
        move MOVE_BRAVE_BIRD
        ballseal 0
    endparty

trainerdata 548, "Manford"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BLACK_BELT
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 548
        // mon 0
        ivs 30
        abilityslot 0
        level 74
        pokemon SPECIES_EMBOAR
        move MOVE_HEAD_SMASH
        move MOVE_CLOSE_COMBAT
        move MOVE_FLARE_BLITZ
        move MOVE_DETECT
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 74
        pokemon SPECIES_KROOKODILE
        move MOVE_CLOSE_COMBAT
        move MOVE_HEADLONG_RUSH
        move MOVE_KNOCK_OFF
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 0
        level 74
        pokemon SPECIES_SAMUROTT
        move MOVE_AQUA_JET
        move MOVE_MEGAHORN
        move MOVE_SUPERPOWER
        move MOVE_RAZOR_SHELL
        ballseal 0
    endparty

trainerdata 549, "Zac & Jen"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_DOUBLE_TEAM
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 549
        // mon 0
        ivs 50
        abilityslot 0
        level 73
        pokemon SPECIES_PELIPPER
        move MOVE_HYDRO_PUMP
        move MOVE_PROTECT
        move MOVE_ROOST
        move MOVE_AQUA_RING
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 32
        level 73
        pokemon SPECIES_POLIWRATH
        move MOVE_ROCK_SMASH
        move MOVE_EARTHQUAKE
        move MOVE_LIQUIDATION
        move MOVE_DETECT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 73
        pokemon SPECIES_AGGRON
        move MOVE_HEAVY_SLAM
        move MOVE_PROTECT
        move MOVE_THUNDER_PUNCH
        move MOVE_BODY_PRESS
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 0
        level 73
        pokemon SPECIES_MILOTIC
        move MOVE_HYDRO_PUMP
        move MOVE_MOONBLAST
        move MOVE_RECOVER
        move MOVE_AQUA_RING
        ballseal 0

        // mon 4
        ivs 50
        abilityslot 0
        level 73
        pokemon SPECIES_GALVANTULA
        move MOVE_THUNDER
        move MOVE_VOLT_SWITCH
        move MOVE_BUG_BUZZ
        move MOVE_SLUDGE_BOMB
        ballseal 0

        // mon 5
        ivs 50
        abilityslot 0
        level 73
        pokemon SPECIES_MAUSHOLD
        move MOVE_POPULATION_BOMB
        move MOVE_BEAT_UP
        move MOVE_BULLET_SEED
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 550, "Ander"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BLACK_BELT
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 550
        // mon 0
        ivs 30
        abilityslot 0
        level 74
        pokemon SPECIES_PINSIR
        move MOVE_EARTHQUAKE
        move MOVE_CLOSE_COMBAT
        move MOVE_X_SCISSOR
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 74
        pokemon SPECIES_SPINDA
        move MOVE_SUPERPOWER
        move MOVE_EXTREME_SPEED
        move MOVE_PROTECT
        move MOVE_SHADOW_CLAW
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 0
        level 74
        pokemon SPECIES_ANNIHILAPE
        move MOVE_RAGE_FIST
        move MOVE_ROCK_SMASH
        move MOVE_STOMPING_TANTRUM
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 551, "Dwight"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 551
        // mon 0
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_SEISMITOAD
        move MOVE_DRAIN_PUNCH
        move MOVE_MUDDY_WATER
        move MOVE_TOXIC
        move MOVE_RECOVER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_STEELIX
        move MOVE_HEADLONG_RUSH
        move MOVE_EARTHQUAKE
        move MOVE_PROTECT
        move MOVE_IRON_TAIL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_ARCHEOPS
        move MOVE_HIGH_HORSEPOWER
        move MOVE_PROTECT
        move MOVE_POWER_GEM
        move MOVE_U_TURN
        ballseal 0
    endparty

trainerdata 552, "Regis"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_YOUNGSTER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 552
        // mon 0
        ivs 0
        abilityslot 0
        level 73
        pokemon SPECIES_JOLTEON
        move MOVE_THUNDERBOLT
        move MOVE_VOLT_SWITCH
        move MOVE_SHADOW_BALL
        move MOVE_FOCUS_BLAST
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 73
        pokemon SPECIES_SAWK
        move MOVE_MACH_PUNCH
        move MOVE_KNOCK_OFF
        move MOVE_FIRE_PUNCH
        move MOVE_CLOSE_COMBAT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 73
        pokemon SPECIES_GOTHITELLE
        move MOVE_PSYSHOCK
        move MOVE_FOCUS_BLAST
        move MOVE_SHADOW_BALL
        move MOVE_TELEPORT
        ballseal 0
    endparty

trainerdata 553, "Moe & Lulu"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_YOUNG_COUPLE
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 553
        // mon 0
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_CASTFORM
        ability ABILITY_FORECAST
        move MOVE_HYDRO_PUMP
        move MOVE_WEATHER_BALL
        move MOVE_POWDER_SNOW
        move MOVE_NASTY_PLOT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_GIGALITH
        ability ABILITY_SAND_STREAM
        move MOVE_PROTECT
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        move MOVE_SANDSTORM
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_DUGTRIO
        ability ABILITY_SAND_FORCE
        move MOVE_SWORDS_DANCE
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        move MOVE_IRON_HEAD
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_EXCADRILL
        ability ABILITY_SAND_RUSH
        move MOVE_IRON_HEAD
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        move MOVE_SANDSTORM
        ballseal 0
    endparty

trainerdata 554, "Milton"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_GENTLEMAN
    nummons 4
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 554
        // mon 0
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_ARCANINE
        move MOVE_EXTREME_SPEED
        move MOVE_FLARE_BLITZ
        move MOVE_PLAY_ROUGH
        move MOVE_HELPING_HAND
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_FARFETCHD
        move MOVE_ACROBATICS
        move MOVE_LEAF_BLADE
        move MOVE_PSYCHO_CUT
        move MOVE_SWORDS_DANCE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_RAPIDASH
        move MOVE_FLARE_BLITZ
        move MOVE_BOUNCE
        move MOVE_PLAY_ROUGH
        move MOVE_ZEN_HEADBUTT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 65
        pokemon SPECIES_LIEPARD
        move MOVE_FAKE_OUT
        move MOVE_SUCKER_PUNCH
        move MOVE_DARK_PULSE
        move MOVE_MOONBLAST
        ballseal 0
    endparty

trainerdata 555, "Justin"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 555
        // mon 0
        ivs 50
        abilityslot 0
        level 69
        pokemon SPECIES_PIDGEOT
        move MOVE_HURRICANE
        move MOVE_HEAT_WAVE
        move MOVE_TAILWIND
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 69
        pokemon SPECIES_FARFETCHD
        move MOVE_BRAVE_BIRD
        move MOVE_LEAF_BLADE
        move MOVE_PROTECT
        move MOVE_KNOCK_OFF
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 69
        pokemon SPECIES_AERODACTYL
        move MOVE_EARTHQUAKE
        move MOVE_HEAD_SMASH
        move MOVE_BRAVE_BIRD
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 556, "Gail"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 556
        // mon 0
        ivs 50
        abilityslot 0
        level 69
        pokemon SPECIES_FEAROW
        move MOVE_BRAVE_BIRD
        move MOVE_DRILL_RUN
        move MOVE_ROOST
        move MOVE_PURSUIT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 69
        pokemon SPECIES_SQUAWKABILLY
        move MOVE_BRAVE_BIRD
        move MOVE_BODY_SLAM
        move MOVE_ROOST
        move MOVE_TAUNT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 69
        monwithform SPECIES_ORICORIO, 3
        move MOVE_AURA_SPHERE
        move MOVE_HURRICANE
        move MOVE_PROTECT
        move MOVE_REVELATION_DANCE
        ballseal 0
    endparty

trainerdata 557, "Vic & Tara"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_YOUNG_COUPLE
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 557
        // mon 0
        ivs 0
        abilityslot 32
        level 69
        pokemon SPECIES_VILEPLUME
        ability ABILITY_CHLOROPHYLL
        move MOVE_GIGA_DRAIN
        move MOVE_SLUDGE_BOMB
        move MOVE_MOONBLAST
        move MOVE_TOXIC
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 69
        pokemon SPECIES_NINETALES
        ability ABILITY_DROUGHT
        move MOVE_SOLAR_BEAM
        move MOVE_FLAMETHROWER
        move MOVE_PROTECT
        move MOVE_MEGA_DRAIN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 69
        pokemon SPECIES_SCOVILLAIN
        ability ABILITY_CHLOROPHYLL
        move MOVE_OVERHEAT
        move MOVE_SEED_BOMB
        move MOVE_PROTECT
        move MOVE_CRUNCH
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 69
        pokemon SPECIES_ARMAROUGE
        ability ABILITY_FLASH_FIRE
        move MOVE_WILL_O_WISP
        move MOVE_LAVA_PLUME
        move MOVE_PSYCHIC
        move MOVE_NIGHT_SHADE
        ballseal 0
    endparty

trainerdata 558, "Kyler"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 558
        // mon 0
        ivs 0
        abilityslot 0
        level 69
        pokemon SPECIES_SWANNA
        move MOVE_HURRICANE
        move MOVE_HYDRO_PUMP
        move MOVE_ROOST
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 68
        pokemon SPECIES_SEISMITOAD
        move MOVE_DRAIN_PUNCH
        move MOVE_MUDDY_WATER
        move MOVE_TOXIC
        move MOVE_RECOVER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 69
        pokemon SPECIES_SIMIPOUR
        move MOVE_HYDRO_PUMP
        move MOVE_DAZZLING_GLEAM
        move MOVE_PROTECT
        move MOVE_SURF
        ballseal 0
    endparty

trainerdata 559, "Tim & Sue"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_YOUNG_COUPLE
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 559
        // mon 0
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_GIGALITH
        ability ABILITY_SAND_STREAM
        move MOVE_PROTECT
        move MOVE_ROCK_SLIDE
        move MOVE_STOMPING_TANTRUM
        move MOVE_SANDSTORM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_EXCADRILL
        ability ABILITY_SAND_RUSH
        move MOVE_DRILL_RUN
        move MOVE_ROCK_SLIDE
        move MOVE_SWORDS_DANCE
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_FLYGON
        ability ABILITY_SAND_FORCE
        move MOVE_EARTH_POWER
        move MOVE_QUIVER_DANCE
        move MOVE_DRAGON_PULSE
        move MOVE_BUG_BUZZ
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_CARRACOSTA
        ability ABILITY_SOLID_ROCK
        move MOVE_AQUA_JET
        move MOVE_AQUA_TAIL
        move MOVE_ROCK_SLIDE
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 560, "Clark"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_CAMPER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 560
        // mon 0
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_ALOMOMOLA
        move MOVE_RECOVER
        move MOVE_HELPING_HAND
        move MOVE_MOONBLAST
        move MOVE_FLIP_TURN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_EELEKTROSS
        move MOVE_CLOSE_COMBAT
        move MOVE_WILD_CHARGE
        move MOVE_ZEN_HEADBUTT
        move MOVE_LEECH_LIFE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_FERROTHORN
        move MOVE_GYRO_BALL
        move MOVE_EXPLOSION
        move MOVE_LEECH_SEED
        move MOVE_PROTECT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_JYNX
        move MOVE_PROTECT
        move MOVE_ICE_BEAM
        move MOVE_PSYCHIC
        move MOVE_FOCUS_BLAST
        ballseal 0
    endparty

trainerdata 561, "Tanner"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_CAMPER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 561
        // mon 0
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_PALOSSAND
        move MOVE_IRON_DEFENSE
        move MOVE_SHADOW_BALL
        move MOVE_BODY_PRESS
        move MOVE_PAIN_SPLIT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_TSAREENA
        move MOVE_POWER_WHIP
        move MOVE_HIGH_JUMP_KICK
        move MOVE_U_TURN
        move MOVE_PLAY_ROUGH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_ORANGURU
        move MOVE_PSYCHIC
        move MOVE_POWER_GEM
        move MOVE_PROTECT
        move MOVE_HYPER_VOICE
        ballseal 0
    endparty

trainerdata 562, "Piper"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PICNICKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 562
        // mon 0
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_STARMIE
        move MOVE_SURF
        move MOVE_ICE_BEAM
        move MOVE_THUNDERBOLT
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_AGGRON
        move MOVE_HEAVY_SLAM
        move MOVE_PROTECT
        move MOVE_THUNDER_PUNCH
        move MOVE_BODY_PRESS
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_REUNICLUS
        move MOVE_TRICK_ROOM
        move MOVE_FOCUS_BLAST
        move MOVE_SHADOW_BALL
        move MOVE_PSYSHOCK
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_SINISTCHA
        move MOVE_LEAF_STORM
        move MOVE_FOUL_PLAY
        move MOVE_STRENGTH_SAP
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 563, "Ginger"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PICNICKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 563
        // mon 0
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_ARAQUANID
        move MOVE_SPIDER_WEB
        move MOVE_LEECH_LIFE
        move MOVE_LIQUIDATION
        move MOVE_FLIP_TURN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_ESCAVALIER
        move MOVE_SUPERPOWER
        move MOVE_IRON_HEAD
        move MOVE_X_SCISSOR
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_SAWSBUCK
        move MOVE_MEGAHORN
        move MOVE_LEECH_SEED
        move MOVE_HORN_LEECH
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 564, "Clarice"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_TEACHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 564
        // mon 0
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_MIGHTYENA
        item ITEM_SITRUS_BERRY
        move MOVE_PLAY_ROUGH
        move MOVE_SUCKER_PUNCH
        move MOVE_KNOCK_OFF
        move MOVE_PARTING_SHOT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_AERODACTYL
        item ITEM_LIFE_ORB
        move MOVE_EARTHQUAKE
        move MOVE_HEAD_SMASH
        move MOVE_BRAVE_BIRD
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_WIGGLYTUFF
        item ITEM_LEFTOVERS
        move MOVE_WISH
        move MOVE_PROTECT
        move MOVE_MOONBLAST
        move MOVE_HYPER_VOICE
        ballseal 0
    endparty

trainerdata 565, "Josh"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 565
        // mon 0
        ivs 50
        abilityslot 0
        level 71
        pokemon SPECIES_SIGILYPH
        move MOVE_HYPNOSIS
        move MOVE_TRICK_ROOM
        move MOVE_PSYCHIC
        move MOVE_ROOST
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 71
        pokemon SPECIES_TOUCANNON
        move MOVE_U_TURN
        move MOVE_BRAVE_BIRD
        move MOVE_BRICK_BREAK
        move MOVE_BULLET_SEED
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 71
        pokemon SPECIES_SQUAWKABILLY
        move MOVE_BRAVE_BIRD
        move MOVE_BODY_SLAM
        move MOVE_ROOST
        move MOVE_TAUNT
        ballseal 0

        // mon 3
        ivs 50
        abilityslot 0
        level 71
        pokemon SPECIES_CHARIZARD
        move MOVE_DRACO_METEOR
        move MOVE_HURRICANE
        move MOVE_PROTECT
        move MOVE_LAVA_PLUME
        ballseal 0
    endparty

trainerdata 566, "Connor"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 566
        // mon 0
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_LINOONE
        item ITEM_SITRUS_BERRY
        move MOVE_BELLY_DRUM
        move MOVE_EXTREME_SPEED
        move MOVE_SHADOW_CLAW
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_NIDOQUEEN
        item ITEM_LIFE_ORB
        move MOVE_EARTH_POWER
        move MOVE_SLUDGE_BOMB
        move MOVE_FOCUS_BLAST
        move MOVE_HELPING_HAND
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_EXEGGUTOR
        item ITEM_LIFE_ORB
        move MOVE_LEAF_STORM
        move MOVE_HYPNOSIS
        move MOVE_PROTECT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_SNORLAX
        item ITEM_LEFTOVERS
        move MOVE_CRUNCH
        move MOVE_SUPERCELL_SLAM
        move MOVE_HAMMER_ARM
        move MOVE_DOUBLE_EDGE
        ballseal 0
    endparty

trainerdata 567, "Torin"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 567
        // mon 0
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_ARCHALUDON
        item ITEM_SITRUS_BERRY
        move MOVE_IRON_DEFENSE
        move MOVE_BODY_PRESS
        move MOVE_FLASH_CANNON
        move MOVE_DRACO_METEOR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_CROBAT
        item ITEM_BLACK_SLUDGE
        move MOVE_SWORDS_DANCE
        move MOVE_LEECH_LIFE
        move MOVE_BRAVE_BIRD
        move MOVE_POISON_JAB
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_ZOROARK
        item ITEM_FOCUS_SASH
        move MOVE_AURA_SPHERE
        move MOVE_KNOCK_OFF
        move MOVE_PROTECT
        move MOVE_HONE_CLAWS
        ballseal 0
    endparty

trainerdata 568, "Travis"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 568
        // mon 0
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_HITMONCHAN
        move MOVE_PROTECT
        move MOVE_MACH_PUNCH
        move MOVE_CLOSE_COMBAT
        move MOVE_ICE_PUNCH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_SABLEYE
        move MOVE_FOUL_PLAY
        move MOVE_DISABLE
        move MOVE_NIGHT_SHADE
        move MOVE_MEAN_LOOK
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_LUVDISC
        move MOVE_HYDRO_PUMP
        move MOVE_ICE_BEAM
        move MOVE_PROTECT
        move MOVE_DRAINING_KISS
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_VELUZA
        move MOVE_NIGHT_SLASH
        move MOVE_PSYCHO_CUT
        move MOVE_WAVE_CRASH
        move MOVE_FLIP_TURN
        ballseal 0
    endparty

trainerdata 569, "Kay & Tia"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_TWINS
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 569
        // mon 0
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_KOMMO_O
        move MOVE_DRACO_METEOR
        move MOVE_CLOSE_COMBAT
        move MOVE_FLAMETHROWER
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_CLODSIRE
        move MOVE_TOXIC_SPIKES
        move MOVE_HELPING_HAND
        move MOVE_SLUDGE_BOMB
        move MOVE_EARTH_POWER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_METAGROSS
        move MOVE_METEOR_MASH
        move MOVE_ZEN_HEADBUTT
        move MOVE_HAMMER_ARM
        move MOVE_BULLET_PUNCH
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_QUAGSIRE
        move MOVE_MUDDY_WATER
        move MOVE_TOXIC
        move MOVE_EARTHQUAKE
        move MOVE_HELPING_HAND
        ballseal 0
    endparty

trainerdata 570, "Boone"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKEFAN_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 570
        // mon 0
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_KILOWATTREL
        move MOVE_THUNDERBOLT
        move MOVE_HURRICANE
        move MOVE_ROOST
        move MOVE_VOLT_SWITCH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_WHISCASH
        move MOVE_EARTHQUAKE
        move MOVE_ICE_BEAM
        move MOVE_MUDDY_WATER
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_LAPRAS
        move MOVE_SURF
        move MOVE_PERISH_SONG
        move MOVE_PROTECT
        move MOVE_ICY_WIND
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_FLAREON
        move MOVE_FIRE_LASH
        move MOVE_SUPERPOWER
        move MOVE_PROTECT
        move MOVE_HELPING_HAND
        ballseal 0
    endparty

trainerdata 571, "Eleanor"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_POKEFAN_F
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 571
        // mon 0
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_SERPERIOR
        move MOVE_LEAF_STORM
        move MOVE_DRAGON_PULSE
        move MOVE_GIGA_DRAIN
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_ZEBSTRIKA
        move MOVE_WILD_CHARGE
        move MOVE_FLARE_BLITZ
        move MOVE_DOUBLE_EDGE
        move MOVE_FLAME_CHARGE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_SWOOBAT
        move MOVE_CALM_MIND
        move MOVE_HURRICANE
        move MOVE_PSYSHOCK
        move MOVE_ROOST
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_AUDINO
        move MOVE_DAZZLING_GLEAM
        move MOVE_HYPER_VOICE
        move MOVE_AFTER_YOU
        move MOVE_WISH
        ballseal 0
    endparty

trainerdata 572, "Dale"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 572
        // mon 0
        ivs 0
        abilityslot 32
        level 70
        pokemon SPECIES_GENGAR
        move MOVE_SHADOW_BALL
        move MOVE_SLUDGE_BOMB
        move MOVE_FOCUS_BLAST
        move MOVE_SUBSTITUTE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 70
        pokemon SPECIES_SABLEYE
        move MOVE_FOUL_PLAY
        move MOVE_DISABLE
        move MOVE_NIGHT_SHADE
        move MOVE_MEAN_LOOK
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 70
        pokemon SPECIES_GOLISOPOD
        move MOVE_FIRST_IMPRESSION
        move MOVE_RAZOR_SHELL
        move MOVE_ROCK_SMASH
        move MOVE_AQUA_JET
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 70
        pokemon SPECIES_STOUTLAND
        move MOVE_SWORDS_DANCE
        move MOVE_EXTREME_SPEED
        move MOVE_BODY_SLAM
        move MOVE_PLAY_ROUGH
        ballseal 0
    endparty

trainerdata 573, "Jacob"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 573
        // mon 0
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_AERODACTYL
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        move MOVE_ACROBATICS
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_LINOONE
        move MOVE_BELLY_DRUM
        move MOVE_EXTREME_SPEED
        move MOVE_SHADOW_CLAW
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 70
        pokemon SPECIES_CRABOMINABLE
        move MOVE_CLOSE_COMBAT
        move MOVE_ICE_HAMMER
        move MOVE_ICE_SHARD
        move MOVE_PROTECT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_MANDIBUZZ
        move MOVE_KNOCK_OFF
        move MOVE_TOXIC
        move MOVE_WHIRLWIND
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 574, "Aiden"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 574
        // mon 0
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_DRUDDIGON
        move MOVE_CLOSE_COMBAT
        move MOVE_DRAGON_DANCE
        move MOVE_THUNDER_PUNCH
        move MOVE_ICE_PUNCH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_SPIDOPS
        move MOVE_STICKY_WEB
        move MOVE_PROTECT
        move MOVE_U_TURN
        move MOVE_COUNTER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_BOMBIRDIER
        move MOVE_ROCK_SLIDE
        move MOVE_PROTECT
        move MOVE_KNOCK_OFF
        move MOVE_DUAL_WINGBEAT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 70
        pokemon SPECIES_LAPRAS
        move MOVE_SURF
        move MOVE_PROTECT
        move MOVE_RECOVER
        move MOVE_ICE_BEAM
        ballseal 0
    endparty

trainerdata 575, "Dan"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 575
        // mon 0
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_LOKIX
        move MOVE_PROTECT
        move MOVE_AXE_KICK
        move MOVE_FIRST_IMPRESSION
        move MOVE_X_SCISSOR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_TOUCANNON
        move MOVE_U_TURN
        move MOVE_BRAVE_BIRD
        move MOVE_ROCK_SMASH
        move MOVE_ROOST
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_RIBOMBEE
        move MOVE_QUIVER_DANCE
        move MOVE_AROMATHERAPY
        move MOVE_BUG_BUZZ
        move MOVE_DRAINING_KISS
        ballseal 0
    endparty

trainerdata 576, "Theron"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 576
        // mon 0
        ivs 0
        abilityslot 2
        level 70
        pokemon SPECIES_ILLUMISE
        move MOVE_PLAY_ROUGH
        move MOVE_LEECH_LIFE
        move MOVE_HELPING_HAND
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 2
        level 70
        pokemon SPECIES_BANETTE
        move MOVE_PHANTOM_FORCE
        move MOVE_ICE_PUNCH
        move MOVE_PROTECT
        move MOVE_SHADOW_SNEAK
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 2
        level 70
        pokemon SPECIES_ORICORIO
        move MOVE_AURA_SPHERE
        move MOVE_HURRICANE
        move MOVE_PROTECT
        move MOVE_REVELATION_DANCE
        ballseal 0
    endparty

trainerdata 577, "Markey"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 577
        // mon 0
        ivs 0
        abilityslot 32
        level 72
        pokemon SPECIES_KLINKLANG
        move MOVE_SHIFT_GEAR
        move MOVE_SUPERCELL_SLAM
        move MOVE_ROCK_SLIDE
        move MOVE_GEAR_GRIND
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_BAXCALIBUR
        move MOVE_ICICLE_CRASH
        move MOVE_GLAIVE_RUSH
        move MOVE_DRAGON_TAIL
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 578, "Teddy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 578
        // mon 0
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_DACHSBUN
        move MOVE_PLAY_ROUGH
        move MOVE_BODY_PRESS
        move MOVE_BULK_UP
        move MOVE_BATON_PASS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_MAUSHOLD
        move MOVE_POPULATION_BOMB
        move MOVE_BEAT_UP
        move MOVE_BULLET_SEED
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 579, "Ernest"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 579
        // mon 0
        ivs 0
        abilityslot 32
        level 70
        monwithform SPECIES_STUNFISK, 1
        move MOVE_STEALTH_ROCK
        move MOVE_BODY_PRESS
        move MOVE_IRON_DEFENSE
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_COFAGRIGUS
        move MOVE_SHADOW_BALL
        move MOVE_WILL_O_WISP
        move MOVE_PAIN_SPLIT
        move MOVE_MYSTICAL_FIRE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 71
        pokemon SPECIES_WIGGLYTUFF
        move MOVE_WISH
        move MOVE_PROTECT
        move MOVE_MOONBLAST
        move MOVE_HYPER_VOICE
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 70
        pokemon SPECIES_DURANT
        move MOVE_X_SCISSOR
        move MOVE_IRON_HEAD
        move MOVE_CRUNCH
        move MOVE_AGILITY
        ballseal 0
    endparty

trainerdata 580, "Pedro"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_CAMPER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 580
        // mon 0
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_LINOONE
        item ITEM_SITRUS_BERRY
        move MOVE_BELLY_DRUM
        move MOVE_EXTREME_SPEED
        move MOVE_SHADOW_CLAW
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_GHOLDENGO
        item ITEM_LUM_BERRY
        move MOVE_RECOVER
        move MOVE_SHADOW_BALL
        move MOVE_POWER_GEM
        move MOVE_FLASH_CANNON
        ballseal 0
    endparty

trainerdata 581, "Adrian"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 581
        // mon 0
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_EMBOAR
        move MOVE_HEAD_SMASH
        move MOVE_CLOSE_COMBAT
        move MOVE_FLARE_BLITZ
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_VANILLUXE
        move MOVE_PROTECT
        move MOVE_BLIZZARD
        move MOVE_DAZZLING_GLEAM
        move MOVE_AURORA_VEIL
        ballseal 0
    endparty

trainerdata 582, "Cheyenne"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 582
        // mon 0
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_SALAMENCE
        move MOVE_DUAL_WINGBEAT
        move MOVE_ROCK_SLIDE
        move MOVE_DRAGON_DANCE
        move MOVE_STOMPING_TANTRUM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_SAWK
        move MOVE_MACH_PUNCH
        move MOVE_KNOCK_OFF
        move MOVE_ICE_PUNCH
        move MOVE_THUNDER_PUNCH
        ballseal 0
    endparty

trainerdata 583, "Bert"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 583
        // mon 0
        ivs 50
        abilityslot 0
        level 75
        pokemon SPECIES_BRAVIARY
        move MOVE_SUPERPOWER
        move MOVE_BRAVE_BIRD
        move MOVE_PSYCHO_CUT
        move MOVE_DEFOG
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 75
        monwithform SPECIES_BRAVIARY, 1
        move MOVE_TAILWIND
        move MOVE_BRAVE_BIRD
        move MOVE_SUPERPOWER
        move MOVE_PSYCHO_CUT
        ballseal 0
    endparty

trainerdata 584, "Ernie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 584
        // mon 0
        ivs 50
        abilityslot 0
        level 75
        pokemon SPECIES_UNFEZANT
        move MOVE_BOOMBURST
        move MOVE_HURRICANE
        move MOVE_TAILWIND
        move MOVE_ROOST
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 75
        pokemon SPECIES_BEAUTIFLY
        move MOVE_QUIVER_DANCE
        move MOVE_MOONBLAST
        move MOVE_GIGA_DRAIN
        move MOVE_BUG_BUZZ
        ballseal 0
    endparty

trainerdata 585, "Elmo"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 585
        // mon 0
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_GYARADOS
        move MOVE_THUNDER_WAVE
        move MOVE_ICE_FANG
        move MOVE_BOUNCE
        move MOVE_WAVE_CRASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_TENTACRUEL
        move MOVE_HEX
        move MOVE_HYDRO_PUMP
        move MOVE_SLUDGE_BOMB
        move MOVE_RECOVER
        ballseal 0
    endparty

trainerdata 586, "Luis"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 586
        // mon 0
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_PYUKUMUKU
        move MOVE_PAIN_SPLIT
        move MOVE_TOXIC
        move MOVE_LIQUIDATION
        move MOVE_HELPING_HAND
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_WUGTRIO        
        move MOVE_LIQUIDATION
        move MOVE_THROAT_CHOP
        move MOVE_EARTHQUAKE
        move MOVE_AQUA_JET
        ballseal 0
    endparty

trainerdata 587, "Leona"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 587
        // mon 0
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_OMASTAR
        move MOVE_HYDRO_PUMP
        move MOVE_BODY_PRESS
        move MOVE_FLASH_CANNON
        move MOVE_POWER_GEM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_LUDICOLO
        move MOVE_GIGA_DRAIN
        move MOVE_HYDRO_PUMP
        move MOVE_ICE_BEAM
        move MOVE_SURF
        ballseal 0
    endparty

trainerdata 588, "Mina"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 588
        // mon 0
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_LUVDISC
        move MOVE_HYDRO_PUMP
        move MOVE_ICE_BEAM
        move MOVE_DAZZLING_GLEAM
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_SAMUROTT
        move MOVE_AQUA_JET
        move MOVE_MEGAHORN
        move MOVE_SUPERPOWER
        move MOVE_WAVE_CRASH
        ballseal 0
    endparty

trainerdata 589, "Murphy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 589
        // mon 0
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_LAPRAS
        move MOVE_SURF
        move MOVE_PERISH_SONG
        move MOVE_BLIZZARD
        move MOVE_RECOVER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_VAPOREON
        move MOVE_MUDDY_WATER
        move MOVE_HELPING_HAND
        move MOVE_TOXIC
        move MOVE_RECOVER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 74
        pokemon SPECIES_GOLISOPOD
        move MOVE_FIRST_IMPRESSION
        move MOVE_RAZOR_SHELL
        move MOVE_ROCK_SMASH
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 590, "Liam"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 590
        // mon 0
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_KINGDRA
        ability ABILITY_SWIFT_SWIM
        move MOVE_SURF
        move MOVE_HYDRO_PUMP
        move MOVE_ICE_BEAM
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_PELIPPER
        ability ABILITY_DRIZZLE
        move MOVE_PROTECT
        move MOVE_SCALD
        move MOVE_AIR_SLASH
        move MOVE_ROOST
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 75
        monwithform SPECIES_ORICORIO, 1
        ability ABILITY_DANCER
        move MOVE_REVELATION_DANCE
        move MOVE_HURRICANE
        move MOVE_ROOST
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 591, "Gideon"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 591
        // mon 0
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_PALAFIN
        move MOVE_WAVE_CRASH
        move MOVE_ICE_PUNCH
        move MOVE_ACROBATICS
        move MOVE_JET_PUNCH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_TOXAPEX
        move MOVE_TOXIC
        move MOVE_RECOVER
        move MOVE_SURF
        move MOVE_POISON_JAB
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_JELLICENT
        move MOVE_WATER_SPOUT
        move MOVE_SHADOW_BALL
        move MOVE_SCALD
        move MOVE_RECOVER
        ballseal 0
    endparty

trainerdata 592, "Chelan"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 592
        // mon 0
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_AZUMARILL
        move MOVE_WATERFALL
        move MOVE_AQUA_JET
        move MOVE_SUPERPOWER
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_PRIMARINA
        move MOVE_HYDRO_PUMP
        move MOVE_MOONBLAST
        move MOVE_CALM_MIND
        move MOVE_ICY_WIND
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_ARAQUANID
        move MOVE_SPIDER_WEB
        move MOVE_LEECH_LIFE
        move MOVE_LIQUIDATION
        move MOVE_LUNGE
        ballseal 0
    endparty

trainerdata 593, "Kendra"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 593
        // mon 0
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_VELUZA
        move MOVE_NIGHT_SLASH
        move MOVE_PSYCHO_CUT
        move MOVE_WAVE_CRASH
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_CLODSIRE
        move MOVE_TOXIC
        move MOVE_RECOVER
        move MOVE_EARTHQUAKE
        move MOVE_HELPING_HAND
        ballseal 0
    endparty

trainerdata 594, "Esteban"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 594
        // mon 0
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_GOLDUCK
        move MOVE_HYDRO_PUMP
        move MOVE_PSYCHIC
        move MOVE_PROTECT
        move MOVE_ICE_BEAM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_POLIWRATH
        move MOVE_SUBMISSION
        move MOVE_MACH_PUNCH
        move MOVE_ICE_PUNCH
        move MOVE_HYPNOSIS
        ballseal 0
    endparty

trainerdata 595, "Duane"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SWIMMER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 595
        // mon 0
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_SEAKING
        move MOVE_MEGAHORN
        move MOVE_DOUBLE_EDGE
        move MOVE_WAVE_CRASH
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_KABUTOPS
        move MOVE_ROCK_SLIDE
        move MOVE_AQUA_JET
        move MOVE_LEECH_LIFE
        move MOVE_RAZOR_SHELL
        ballseal 0
    endparty

trainerdata 596, "Kinsley"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 596
        // mon 0
        ivs 50
        abilityslot 0
        level 74
        pokemon SPECIES_FARFETCHD
        move MOVE_BRAVE_BIRD
        move MOVE_LEAF_BLADE
        move MOVE_PROTECT
        move MOVE_KNOCK_OFF
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 74
        pokemon SPECIES_FEAROW
        move MOVE_DRILL_RUN
        move MOVE_BRAVE_BIRD
        move MOVE_ROOST
        move MOVE_PURSUIT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 74
        pokemon SPECIES_PIDGEOT
        move MOVE_HURRICANE
        move MOVE_HEAT_WAVE
        move MOVE_TAILWIND
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 597, "Easton"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 597
        // mon 0
        ivs 50
        abilityslot 0
        level 75
        pokemon SPECIES_DODRIO
        move MOVE_QUICK_ATTACK
        move MOVE_FLARE_BLITZ
        move MOVE_BRAVE_BIRD
        move MOVE_WILD_CHARGE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 75
        pokemon SPECIES_EMOLGA
        move MOVE_DISCHARGE
        move MOVE_HELPING_HAND
        move MOVE_KNOCK_OFF
        move MOVE_QUICK_ATTACK
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 75
        pokemon SPECIES_FLAMIGO
        move MOVE_THROAT_CHOP
        move MOVE_BRAVE_BIRD
        move MOVE_DETECT
        move MOVE_CLOSE_COMBAT
        ballseal 0
    endparty

trainerdata 598, "Day & Dani"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 598
        // mon 0
        ivs 0
        abilityslot 0
        level 63
        pokemon SPECIES_PLUSLE
        move MOVE_NASTY_PLOT
        move MOVE_MOONBLAST
        move MOVE_PROTECT
        move MOVE_DISCHARGE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 63
        pokemon SPECIES_MINUN
        move MOVE_MOONBLAST
        move MOVE_HELPING_HAND
        move MOVE_PROTECT
        move MOVE_DISCHARGE
        ballseal 0
    endparty

trainerdata 599, "Virgil"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_CAMPER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 599
        // mon 0
        ivs 0
        abilityslot 0
        level 63
        pokemon SPECIES_GUMSHOOS
        move MOVE_EXTREME_SPEED
        move MOVE_EARTHQUAKE
        move MOVE_FIRE_FANG
        move MOVE_SUPER_FANG
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 63
        pokemon SPECIES_GLALIE
        move MOVE_BODY_SLAM
        move MOVE_ICE_SHARD
        move MOVE_CRUNCH
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 600, "Selina"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PICNICKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 600
        // mon 0
        ivs 0
        abilityslot 0
        level 63
        pokemon SPECIES_CLEFABLE
        move MOVE_SOFT_BOILED
        move MOVE_MOONBLAST
        move MOVE_FOLLOW_ME
        move MOVE_ENCORE
        ballseal 0

        // mon 0
        ivs 0
        abilityslot 0
        level 63
        pokemon SPECIES_HYDRAPPLE
        move MOVE_SYRUP_BOMB
        move MOVE_DRAGON_PULSE
        move MOVE_RECOVER
        move MOVE_YAWN
        ballseal 0
    endparty

trainerdata 601, "Grunt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEAM_ROCKET
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 601
        // mon 0
        ivs 0
        abilityslot 0
        level 24
        monwithform SPECIES_YAMASK, 1
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 24
        monwithform SPECIES_SLOWPOKE, 1
        ballseal 0
    endparty

trainerdata 602, "Jose"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 3
    item ITEM_X_ATTACK
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 602
        // mon 0
        ivs 50
        abilityslot 0
        level 50
        pokemon SPECIES_FARFETCHD
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 52
        pokemon SPECIES_FARFETCHD
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 53
        pokemon SPECIES_FARFETCHD
        ballseal 0
    endparty

trainerdata 603, "Erin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_PICNICKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 603
        // mon 0
        ivs 0
        abilityslot 0
        level 42
        pokemon SPECIES_CHERRIM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 46
        pokemon SPECIES_SUNFLORA
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 49
        pokemon SPECIES_BELLOSSOM
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 32
        level 53
        pokemon SPECIES_RAPIDASH
        ballseal 0
    endparty

trainerdata 604, "Gaven"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 604
        // mon 0
        ivs 50
        abilityslot 0
        level 52
        pokemon SPECIES_VICTREEBEL
        move MOVE_LEAF_STORM
        move MOVE_TOXIC
        move MOVE_ACID
        move MOVE_LEAF_BLADE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 49
        pokemon SPECIES_KINGLER
        move MOVE_BRINE
        move MOVE_CRABHAMMER
        move MOVE_X_SCISSOR
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 50
        pokemon SPECIES_FLAREON
        move MOVE_OVERHEAT
        move MOVE_QUICK_ATTACK
        move MOVE_WILL_O_WISP
        move MOVE_ATTRACT
        ballseal 0
    endparty

trainerdata 605, "Kenji"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BLACK_BELT
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 605
        // mon 0
        ivs 30
        abilityslot 0
        level 41
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 1
        ivs 30
        abilityslot 0
        level 53
        pokemon SPECIES_MACHAMP
        ballseal 0

        // mon 2
        ivs 30
        abilityslot 0
        level 49
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 3
        ivs 30
        abilityslot 0
        level 53
        pokemon SPECIES_HITMONLEE
        ballseal 0
    endparty

trainerdata 606, "Parry"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 606
        // mon 0
        ivs 0
        abilityslot 0
        level 56
        pokemon SPECIES_STEELIX
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_GOLEM
        ballseal 0
    endparty

trainerdata 607, "Reena"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_F
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 607
        // mon 0
        ivs 50
        abilityslot 0
        level 54
        pokemon SPECIES_ARCANINE
        move MOVE_FLARE_BLITZ
        move MOVE_EXTREME_SPEED
        move MOVE_CRUNCH
        move MOVE_ROAR
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 53
        pokemon SPECIES_NIDOQUEEN
        move MOVE_CAPTIVATE
        move MOVE_POISON_FANG
        move MOVE_EARTH_POWER
        move MOVE_BODY_SLAM
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 32
        level 56
        pokemon SPECIES_STARMIE
        move MOVE_SURF
        move MOVE_NONE
        move MOVE_COSMIC_POWER
        move MOVE_PSYCHIC
        ballseal 0
    endparty

trainerdata 608, "Wilton"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 608
        // mon 0
        ivs 0
        abilityslot 0
        level 42
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 46
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 63
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 609, "Jamie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 609
        // mon 0
        ivs 50
        abilityslot 32
        level 56
        pokemon SPECIES_RAPIDASH
        move MOVE_BOUNCE
        move MOVE_FIRE_SPIN
        move MOVE_FLARE_BLITZ
        move MOVE_EMBER
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 59
        pokemon SPECIES_AMPHAROS
        move MOVE_POWER_GEM
        move MOVE_THUNDER
        move MOVE_SIGNAL_BEAM
        move MOVE_CHARGE
        ballseal 0
    endparty

trainerdata 610, "Derek"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKEFAN_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 610
        // mon 0
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_PICHU
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 22
        pokemon SPECIES_TEDDIURSA
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 39
        pokemon SPECIES_PIKACHU
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_URSARING
        ballseal 0
    endparty

trainerdata 611, "Beverly"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_POKEFAN_F
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 611
        // mon 0
        ivs 0
        abilityslot 0
        level 53
        pokemon SPECIES_GRANBULL
        ballseal 0
    endparty

trainerdata 612, "Vance"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 612
        // mon 0
        ivs 50
        abilityslot 0
        level 56
        pokemon SPECIES_PIDGEOT
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 44
        pokemon SPECIES_PIDGEOT
        ballseal 0

        // mon 2
        ivs 50
        abilityslot 0
        level 54
        pokemon SPECIES_NOCTOWL
        ballseal 0
    endparty

trainerdata 613, "Krise"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_LASS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 613
        // mon 0
        ivs 0
        abilityslot 0
        level 21
        pokemon SPECIES_ODDISH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 31
        pokemon SPECIES_CUBONE
        ballseal 0
    endparty

trainerdata 614, "Krise"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_LASS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 614
        // mon 0
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_GLOOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_MAROWAK
        ballseal 0
    endparty

trainerdata 615, "Krise"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_LASS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 615
        // mon 0
        ivs 0
        abilityslot 0
        level 53
        pokemon SPECIES_VILEPLUME
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 54
        pokemon SPECIES_MAROWAK
        ballseal 0
    endparty

trainerdata 616, "Ian"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 616
        // mon 0
        ivs 0
        abilityslot 0
        level 27
        pokemon SPECIES_MANKEY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_DUGTRIO
        ballseal 0
    endparty

trainerdata 617, "Ian"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 617
        // mon 0
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_PRIMEAPE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_DUGTRIO
        ballseal 0
    endparty

trainerdata 618, "Ian"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_YOUNGSTER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 618
        // mon 0
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_PRIMEAPE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 58
        pokemon SPECIES_DUGTRIO
        ballseal 0
    endparty

trainerdata 619, "Walt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FIREBREATHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 619
        // mon 0
        ivs 0
        abilityslot 0
        level 25
        pokemon SPECIES_MAGMAR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_MAGMAR
        ballseal 0
    endparty

trainerdata 620, "Walt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FIREBREATHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 620
        // mon 0
        ivs 0
        abilityslot 0
        level 34
        pokemon SPECIES_MAGMAR
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 37
        pokemon SPECIES_MAGMAR
        ballseal 0
    endparty

trainerdata 621, "Walt"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FIREBREATHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 621
        // mon 0
        ivs 0
        abilityslot 0
        level 26
        pokemon SPECIES_MAGBY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 49
        pokemon SPECIES_MAGMAR
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 58
        pokemon SPECIES_MAGMORTAR
        ballseal 0
    endparty

trainerdata 622, "Doug"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BUG_CATCHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 622
        // mon 0
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_BUTTERFREE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_ARIADOS
        ballseal 0
    endparty

trainerdata 623, "Doug"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BUG_CATCHER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 623
        // mon 0
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_BUTTERFREE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 46
        pokemon SPECIES_ARIADOS
        ballseal 0
    endparty

trainerdata 624, "Doug"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 624
        // mon 0
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_BUTTERFREE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 50
        pokemon SPECIES_ARIADOS
        ballseal 0
    endparty

trainerdata 625, "Rob"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BUG_CATCHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 625
        // mon 0
        ivs 0
        abilityslot 0
        level 71
        pokemon SPECIES_BEEDRILL
        move MOVE_GUNK_SHOT
        move MOVE_KNOCK_OFF
        move MOVE_U_TURN
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_PINSIR
        move MOVE_EARTHQUAKE
        move MOVE_CLOSE_COMBAT
        move MOVE_X_SCISSOR
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_DUSTOX
        move MOVE_QUIVER_DANCE
        move MOVE_SLUDGE_BOMB
        move MOVE_EXTRASENSORY
        move MOVE_BUG_BUZZ
        ballseal 0
    endparty

trainerdata 626, "Rob"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 626
        // mon 0
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_BEEDRILL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 48
        pokemon SPECIES_BUTTERFREE
        ballseal 0
    endparty

trainerdata 627, "Rob"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BUG_CATCHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 627
        // mon 0
        ivs 0
        abilityslot 0
        level 56
        pokemon SPECIES_BEEDRILL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 56
        pokemon SPECIES_BUTTERFREE
        ballseal 0
    endparty

trainerdata 628, "Reese"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 628
        // mon 0
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_GOLURK
        move MOVE_IRON_DEFENSE
        move MOVE_BODY_PRESS
        move MOVE_ROCK_SLIDE
        move MOVE_PHANTOM_FORCE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_PALAFIN
        move MOVE_WAVE_CRASH
        move MOVE_FLIP_TURN
        move MOVE_ACROBATICS
        move MOVE_JET_PUNCH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_KANGASKHAN
        move MOVE_SUCKER_PUNCH
        move MOVE_CRUNCH
        move MOVE_DOUBLE_HIT
        move MOVE_SEISMIC_TOSS
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 70
        pokemon SPECIES_CHIMECHO
        move MOVE_RECOVER
        move MOVE_HEAL_BELL
        move MOVE_TRICK_ROOM
        move MOVE_HELPING_HAND
        ballseal 0
    endparty

trainerdata 629, "Reese"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 629
        // mon 0
        ivs 0
        abilityslot 0
        level 48
        pokemon SPECIES_ARBOK
        move MOVE_MUD_BOMB
        move MOVE_SWALLOW
        move MOVE_STOCKPILE
        move MOVE_SPIT_UP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 50
        pokemon SPECIES_WEEZING
        move MOVE_SLUDGE_BOMB
        move MOVE_DOUBLE_HIT
        move MOVE_SMOKESCREEN
        move MOVE_ASSURANCE
        ballseal 0
    endparty

trainerdata 630, "Reese"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 630
        // mon 0
        ivs 0
        abilityslot 0
        level 56
        pokemon SPECIES_ARBOK
        move MOVE_GUNK_SHOT
        move MOVE_MUD_BOMB
        move MOVE_GASTRO_ACID
        move MOVE_CRUNCH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 55
        pokemon SPECIES_WEEZING
        move MOVE_SLUDGE_BOMB
        move MOVE_DOUBLE_HIT
        move MOVE_SMOKESCREEN
        move MOVE_THUNDER
        ballseal 0
    endparty

trainerdata 631, "Aiden"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 631
        // mon 0
        ivs 0
        abilityslot 0
        level 50
        pokemon SPECIES_HYPNO
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 49
        pokemon SPECIES_TENTACRUEL
        ballseal 0
    endparty

trainerdata 632, "Aiden"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 632
        // mon 0
        ivs 0
        abilityslot 0
        level 55
        pokemon SPECIES_HYPNO
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 55
        pokemon SPECIES_TENTACRUEL
        ballseal 0
    endparty

trainerdata 633, "Aiden"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 633
        // mon 0
        ivs 0
        abilityslot 0
        level 55
        pokemon SPECIES_TENTACRUEL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 58
        pokemon SPECIES_HYPNO
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 58
        pokemon SPECIES_TENTACRUEL
        ballseal 0
    endparty

trainerdata 634, "Ernest"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 634
        // mon 0
        ivs 0
        abilityslot 0
        level 46
        pokemon SPECIES_TEDDIURSA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 47
        pokemon SPECIES_AZUMARILL
        ballseal 0
    endparty

trainerdata 635, "Ernest"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 635
        // mon 0
        ivs 0
        abilityslot 0
        level 48
        pokemon SPECIES_TEDDIURSA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 49
        pokemon SPECIES_AZUMARILL
        ballseal 0
    endparty

trainerdata 636, "Ernest"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIKER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 636
        // mon 0
        ivs 0
        abilityslot 0
        level 58
        pokemon SPECIES_URSARING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 54
        pokemon SPECIES_AZUMARILL
        ballseal 0
    endparty

trainerdata 637, "Hillary"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEACHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 637
        // mon 0
        ivs 0
        abilityslot 0
        level 43
        pokemon SPECIES_AMBIPOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 43
        pokemon SPECIES_SUNFLORA
        ballseal 0
    endparty

trainerdata 638, "Hillary"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEACHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 638
        // mon 0
        ivs 0
        abilityslot 0
        level 49
        pokemon SPECIES_AMBIPOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 49
        pokemon SPECIES_SUNFLORA
        ballseal 0
    endparty

trainerdata 639, "Hillary"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TEACHER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 639
        // mon 0
        ivs 0
        abilityslot 0
        level 55
        pokemon SPECIES_AMBIPOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 55
        pokemon SPECIES_SUNFLORA
        ballseal 0
    endparty

trainerdata 640, "Billy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 640
        // mon 0
        ivs 0
        abilityslot 0
        level 42
        pokemon SPECIES_PARASECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 43
        pokemon SPECIES_POLIWHIRL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_DITTO
        ballseal 0
    endparty

trainerdata 641, "Billy"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 641
        // mon 0
        ivs 0
        abilityslot 0
        level 46
        pokemon SPECIES_PARASECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_POLIWHIRL
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 46
        pokemon SPECIES_DITTO
        ballseal 0
    endparty

trainerdata 642, "Billy"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCHOOL_KID_M
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 642
        // mon 0
        ivs 0
        abilityslot 0
        level 50
        pokemon SPECIES_MR_MIME
        move MOVE_TRICK_ROOM
        move MOVE_PSYCHIC
        move MOVE_SUBSTITUTE
        move MOVE_NONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 55
        pokemon SPECIES_PARASECT
        move MOVE_SPORE
        move MOVE_GIGA_DRAIN
        move MOVE_X_SCISSOR
        move MOVE_SLASH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 53
        pokemon SPECIES_POLIWRATH
        move MOVE_WAKE_UP_SLAP
        move MOVE_BELLY_DRUM
        move MOVE_DYNAMIC_PUNCH
        move MOVE_HYPNOSIS
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 51
        pokemon SPECIES_DITTO
        move MOVE_TRANSFORM
        move MOVE_NONE
        move MOVE_NONE
        move MOVE_NONE
        ballseal 0
    endparty

trainerdata 643, "Kay & Tia"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 643
        // mon 0
        ivs 0
        abilityslot 0
        level 48
        pokemon SPECIES_QUAGSIRE
        move MOVE_RAIN_DANCE
        move MOVE_SURF
        move MOVE_EARTHQUAKE
        move MOVE_NONE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 48
        pokemon SPECIES_QUAGSIRE
        move MOVE_AMNESIA
        move MOVE_SURF
        move MOVE_YAWN
        move MOVE_NONE
        ballseal 0
    endparty

trainerdata 644, "Kay & Tia"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 644
        // mon 0
        ivs 0
        abilityslot 0
        level 53
        pokemon SPECIES_QUAGSIRE
        move MOVE_RAIN_DANCE
        move MOVE_SURF
        move MOVE_MUDDY_WATER
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 53
        pokemon SPECIES_QUAGSIRE
        move MOVE_AMNESIA
        move MOVE_SURF
        move MOVE_MUDDY_WATER
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 645, "Kay & Tia"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_TWINS
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 645
        // mon 0
        ivs 0
        abilityslot 0
        level 55
        pokemon SPECIES_QUAGSIRE
        move MOVE_AMNESIA
        move MOVE_SURF
        move MOVE_YAWN
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 55
        pokemon SPECIES_QUAGSIRE
        move MOVE_RAIN_DANCE
        move MOVE_SURF
        move MOVE_MUDDY_WATER
        move MOVE_EARTHQUAKE
        ballseal 0
    endparty

trainerdata 646, "Josh"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 646
        // mon 0
        ivs 50
        abilityslot 0
        level 47
        pokemon SPECIES_FEAROW
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 44
        pokemon SPECIES_SKARMORY
        ballseal 0
    endparty

trainerdata 647, "Josh"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 647
        // mon 0
        ivs 50
        abilityslot 0
        level 48
        pokemon SPECIES_SKARMORY
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 51
        pokemon SPECIES_FEAROW
        ballseal 0
    endparty

trainerdata 648, "Josh"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_BIRD_KEEPER_1
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 648
        // mon 0
        ivs 50
        abilityslot 0
        level 55
        pokemon SPECIES_SKARMORY
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 55
        pokemon SPECIES_FEAROW
        ballseal 0
    endparty

trainerdata 649, "Torin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 649
        // mon 0
        ivs 0
        abilityslot 0
        level 46
        pokemon SPECIES_SANDSLASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 45
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_VULPIX
        ballseal 0
    endparty

trainerdata 650, "Torin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 650
        // mon 0
        ivs 0
        abilityslot 0
        level 48
        pokemon SPECIES_SANDSLASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 51
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 48
        pokemon SPECIES_VULPIX
        ballseal 0
    endparty

trainerdata 651, "Torin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_SCHOOL_KID_M
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 651
        // mon 0
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_SANDSLASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 53
        pokemon SPECIES_GOLBAT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_VULPIX
        ballseal 0
    endparty

trainerdata 652, "Tim & Sue"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_YOUNG_COUPLE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 652
        // mon 0
        ivs 0
        abilityslot 0
        level 45
        pokemon SPECIES_KADABRA
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 50
        pokemon SPECIES_GOLDUCK
        ballseal 0
    endparty

trainerdata 653, "Tim & Sue"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_YOUNG_COUPLE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 653
        // mon 0
        ivs 0
        abilityslot 0
        level 48
        pokemon SPECIES_KADABRA
        move MOVE_RECOVER
        move MOVE_PSYCHIC
        move MOVE_ROLE_PLAY
        move MOVE_REFLECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_GOLDUCK
        move MOVE_WATER_PULSE
        move MOVE_AMNESIA
        move MOVE_ZEN_HEADBUTT
        move MOVE_BLIZZARD
        ballseal 0
    endparty

trainerdata 654, "Tim & Sue"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_YOUNG_COUPLE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 654
        // mon 0
        ivs 0
        abilityslot 0
        level 54
        pokemon SPECIES_ALAKAZAM
        move MOVE_PSYCHIC
        move MOVE_CALM_MIND
        move MOVE_REFLECT
        move MOVE_RECOVER
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 56
        pokemon SPECIES_GOLDUCK
        move MOVE_HYDRO_PUMP
        move MOVE_AMNESIA
        move MOVE_AQUA_JET
        move MOVE_BLIZZARD
        ballseal 0
    endparty

trainerdata 655, "Kenny"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 655
        // mon 0
        ivs 0
        abilityslot 0
        level 16
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 33
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 37
        pokemon SPECIES_GOLEM
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 32
        pokemon SPECIES_SANDSLASH
        ballseal 0
    endparty

trainerdata 656, "Kenny"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 656
        // mon 0
        ivs 0
        abilityslot 0
        level 42
        pokemon SPECIES_SANDSLASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 37
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 44
        pokemon SPECIES_GOLEM
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 46
        pokemon SPECIES_ONIX
        ballseal 0
    endparty

trainerdata 657, "Kenny"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 657
        // mon 0
        ivs 0
        abilityslot 0
        level 46
        pokemon SPECIES_SANDSLASH
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 44
        pokemon SPECIES_GRAVELER
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 49
        pokemon SPECIES_GOLEM
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 54
        pokemon SPECIES_STEELIX
        ballseal 0
    endparty

trainerdata 658, "Tanner"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 658
        // mon 0
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_SUDOWOODO
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_CHINCHOU
        ballseal 0
    endparty

trainerdata 659, "Tanner"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 659
        // mon 0
        ivs 0
        abilityslot 0
        level 48
        pokemon SPECIES_SUDOWOODO
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_LANTURN
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 44
        pokemon SPECIES_SKIPLOOM
        ballseal 0
    endparty

trainerdata 660, "Tanner"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 660
        // mon 0
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_SUDOWOODO
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_JUMPLUFF
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_LANTURN
        ballseal 0
    endparty

trainerdata 661, "Kyle"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 661
        // mon 0
        ivs 0
        abilityslot 0
        level 40
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 38
        pokemon SPECIES_QWILFISH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 43
        pokemon SPECIES_SEAKING
        ballseal 0
    endparty

trainerdata 662, "Kyle"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 662
        // mon 0
        ivs 0
        abilityslot 0
        level 43
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 41
        pokemon SPECIES_QWILFISH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 47
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 39
        pokemon SPECIES_KRABBY
        ballseal 0
    endparty

trainerdata 663, "Kyle"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 663
        // mon 0
        ivs 0
        abilityslot 0
        level 48
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 49
        pokemon SPECIES_QWILFISH
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 52
        pokemon SPECIES_SEAKING
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 51
        pokemon SPECIES_KINGLER
        ballseal 0
    endparty

trainerdata 664, "Kyler"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 664
        // mon 0
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0
    endparty

trainerdata 665, "Kyler"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 665
        // mon 0
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 4
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0
    endparty

trainerdata 666, "Kyler"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FISHERMAN
    nummons 6
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 666
        // mon 0
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 4
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0

        // mon 5
        ivs 0
        abilityslot 0
        level 18
        pokemon SPECIES_MAGIKARP
        ballseal 0
    endparty

trainerdata 667, "Cheryl"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PKMN_TRAINER_2
    nummons 5
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 667
        // mon 0
        ivs 200
        abilityslot 0
        level 61
        pokemon SPECIES_WOBBUFFET
        item ITEM_NONE
        move MOVE_COUNTER
        move MOVE_MIRROR_COAT
        move MOVE_SAFEGUARD
        move MOVE_ENCORE
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 61
        pokemon SPECIES_DRIFBLIM
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_OMINOUS_WIND
        move MOVE_FLY
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 62
        pokemon SPECIES_HARIYAMA
        item ITEM_NONE
        move MOVE_CLOSE_COMBAT
        move MOVE_EARTHQUAKE
        move MOVE_BULLET_PUNCH
        move MOVE_STONE_EDGE
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 63
        pokemon SPECIES_WAILORD
        item ITEM_NONE
        move MOVE_WATER_SPOUT
        move MOVE_BRINE
        move MOVE_EARTHQUAKE
        move MOVE_AVALANCHE
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 65
        pokemon SPECIES_BLISSEY
        item ITEM_SITRUS_BERRY
        move MOVE_SOFT_BOILED
        move MOVE_COUNTER
        move MOVE_PSYCHIC
        move MOVE_TOXIC
        ballseal 0
    endparty

trainerdata 668, "Marley"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PKMN_TRAINER_4
    nummons 5
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 668
        // mon 0
        ivs 200
        abilityslot 0
        level 61
        pokemon SPECIES_NINJASK
        item ITEM_NONE
        move MOVE_X_SCISSOR
        move MOVE_AERIAL_ACE
        move MOVE_SWORDS_DANCE
        move MOVE_SLASH
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 61
        pokemon SPECIES_ELECTRODE
        item ITEM_NONE
        move MOVE_HYPER_BEAM
        move MOVE_THUNDER
        move MOVE_THUNDER_WAVE
        move MOVE_NONE
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 62
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_AIR_SLASH
        move MOVE_POISON_FANG
        move MOVE_CONFUSE_RAY
        move MOVE_NONE
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 63
        pokemon SPECIES_WEAVILE
        item ITEM_NONE
        move MOVE_ICE_SHARD
        move MOVE_NIGHT_SLASH
        move MOVE_ICE_PUNCH
        move MOVE_AERIAL_ACE
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 65
        pokemon SPECIES_ARCANINE
        item ITEM_SITRUS_BERRY
        move MOVE_EXTREME_SPEED
        move MOVE_FLARE_BLITZ
        move MOVE_CRUNCH
        move MOVE_THUNDER_FANG
        ballseal 0
    endparty

trainerdata 669, "Mira"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PKMN_TRAINER_6
    nummons 5
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 669
        // mon 0
        ivs 200
        abilityslot 0
        level 61
        pokemon SPECIES_PORYGON_Z
        item ITEM_NONE
        move MOVE_TRI_ATTACK
        move MOVE_PSYCHIC
        move MOVE_THUNDERBOLT
        move MOVE_DARK_PULSE
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 61
        pokemon SPECIES_GENGAR
        item ITEM_NONE
        move MOVE_SHADOW_BALL
        move MOVE_PSYCHIC
        move MOVE_SLUDGE_BOMB
        move MOVE_ENERGY_BALL
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 62
        pokemon SPECIES_MAGNEZONE
        item ITEM_NONE
        move MOVE_THUNDER
        move MOVE_FLASH_CANNON
        move MOVE_THUNDER_WAVE
        move MOVE_HYPER_BEAM
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 63
        pokemon SPECIES_TOGEKISS
        item ITEM_NONE
        move MOVE_EXTREME_SPEED
        move MOVE_AIR_SLASH
        move MOVE_AURA_SPHERE
        move MOVE_PSYCHIC
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 65
        pokemon SPECIES_ALAKAZAM
        item ITEM_SITRUS_BERRY
        move MOVE_PSYCHIC
        move MOVE_FOCUS_BLAST
        move MOVE_CALM_MIND
        move MOVE_HYPER_BEAM
        ballseal 0
    endparty

trainerdata 670, "Riley"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PKMN_TRAINER_3
    nummons 5
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 670
        // mon 0
        ivs 200
        abilityslot 0
        level 61
        pokemon SPECIES_ABSOL
        item ITEM_NONE
        move MOVE_PSYCHO_CUT
        move MOVE_NIGHT_SLASH
        move MOVE_SWORDS_DANCE
        move MOVE_QUICK_ATTACK
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 61
        pokemon SPECIES_URSARING
        item ITEM_NONE
        move MOVE_AVALANCHE
        move MOVE_SLASH
        move MOVE_AERIAL_ACE
        move MOVE_SHADOW_CLAW
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 62
        pokemon SPECIES_METAGROSS
        item ITEM_NONE
        move MOVE_METEOR_MASH
        move MOVE_ZEN_HEADBUTT
        move MOVE_HAMMER_ARM
        move MOVE_BULLET_PUNCH
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 63
        pokemon SPECIES_SALAMENCE
        item ITEM_NONE
        move MOVE_DRAGON_CLAW
        move MOVE_CRUNCH
        move MOVE_FIRE_FANG
        move MOVE_THUNDER_FANG
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 65
        pokemon SPECIES_LUCARIO
        item ITEM_SITRUS_BERRY
        move MOVE_EXTREME_SPEED
        move MOVE_CLOSE_COMBAT
        move MOVE_BONE_RUSH
        move MOVE_BLAZE_KICK
        ballseal 0
    endparty

trainerdata 671, "Buck"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PKMN_TRAINER_5
    nummons 5
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 671
        // mon 0
        ivs 200
        abilityslot 0
        level 61
        pokemon SPECIES_SHUCKLE
        item ITEM_NONE
        move MOVE_REST
        move MOVE_TOXIC
        move MOVE_PROTECT
        move MOVE_SANDSTORM
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 62
        pokemon SPECIES_UMBREON
        item ITEM_NONE
        move MOVE_DARK_PULSE
        move MOVE_PSYCHIC
        move MOVE_CONFUSE_RAY
        move MOVE_NONE
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 61
        pokemon SPECIES_TORKOAL
        item ITEM_NONE
        move MOVE_EARTHQUAKE
        move MOVE_WILL_O_WISP
        move MOVE_ERUPTION
        move MOVE_PROTECT
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 63
        pokemon SPECIES_DUSKNOIR
        item ITEM_NONE
        move MOVE_FIRE_PUNCH
        move MOVE_ICE_PUNCH
        move MOVE_THUNDER_PUNCH
        move MOVE_SHADOW_BALL
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 65
        pokemon SPECIES_CLAYDOL
        item ITEM_SITRUS_BERRY
        move MOVE_EARTH_POWER
        move MOVE_PSYCHIC
        move MOVE_ANCIENT_POWER
        move MOVE_CALM_MIND
        ballseal 0
    endparty

trainerdata 672, "Alfred"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_GENTLEMAN
    nummons 1
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 672
        // mon 0
        ivs 0
        abilityslot 0
        level 36
        pokemon SPECIES_NOCTOWL
        ballseal 0
    endparty

trainerdata 673, "Alfred"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_GENTLEMAN
    nummons 1
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 673
        // mon 0
        ivs 0
        abilityslot 0
        level 42
        pokemon SPECIES_NOCTOWL
        ballseal 0
    endparty

trainerdata 674, "Alfred"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_GENTLEMAN
    nummons 1
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 674
        // mon 0
        ivs 0
        abilityslot 0
        level 58
        pokemon SPECIES_NOCTOWL
        move MOVE_HYPNOSIS
        move MOVE_DREAM_EATER
        move MOVE_AIR_SLASH
        move MOVE_REFLECT
        ballseal 0
    endparty

trainerdata 675, "Lance"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_PKMN_TRAINER_10
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 675
        // mon 0
        ivs 250
        abilityslot 0
        level 42
        pokemon SPECIES_DRAGONITE
        move MOVE_FLY
        move MOVE_DRAGON_CLAW
        move MOVE_THUNDERBOLT
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 676, "Parker"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SAILOR
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 676
        // mon 0
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_HORSEA
        move MOVE_WATER_PULSE
        move MOVE_FOCUS_ENERGY
        move MOVE_TWISTER
        move MOVE_AGILITY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 43
        pokemon SPECIES_SEADRA
        move MOVE_WATER_PULSE
        move MOVE_FOCUS_ENERGY
        move MOVE_TWISTER
        move MOVE_AGILITY
        ballseal 0
    endparty

trainerdata 677, "Eddie"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_SAILOR
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 677
        // mon 0
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_SHARPEDO
        item ITEM_LIFE_ORB
        move MOVE_LIQUIDATION
        move MOVE_PROTECT
        move MOVE_NIGHT_SLASH
        move MOVE_ICE_FANG
        ability ABILITY_SPEED_BOOST
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_WAILORD
        item ITEM_LEFTOVERS
        move MOVE_WATER_SPOUT
        move MOVE_HYDRO_PUMP
        move MOVE_ICE_BEAM
        move MOVE_EARTH_POWER
        ability ABILITY_OBLIVIOUS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_CRADILY
        item ITEM_SITRUS_BERRY
        move MOVE_EARTH_POWER
        move MOVE_GIGA_DRAIN
        move MOVE_MUDDY_WATER
        move MOVE_LEECH_SEED
        ability ABILITY_SUCTION_CUPS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_MILOTIC
        item ITEM_LUM_BERRY
        move MOVE_HYDRO_PUMP
        move MOVE_MOONBLAST
        move MOVE_RECOVER
        move MOVE_AQUA_RING
        ability ABILITY_MARVEL_SCALE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_MODEST
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 678, "Joy"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_SWIMMER_F
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 678
        // mon 0
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_GOREBYSS
        item ITEM_LUM_BERRY
        move MOVE_SURF
        move MOVE_PSYCHIC
        move MOVE_CALM_MIND
        move MOVE_DRAINING_KISS
        ability ABILITY_WATER_VEIL
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_WHISCASH
        item ITEM_LEFTOVERS
        move MOVE_EARTHQUAKE
        move MOVE_ICE_BEAM
        move MOVE_MUDDY_WATER
        move MOVE_SPIKES
        ability ABILITY_OBLIVIOUS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_QUIET
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 69
        pokemon SPECIES_ALOMOMOLA
        item ITEM_ORAN_BERRY
        move MOVE_MOONBLAST
        move MOVE_HELPING_HAND
        move MOVE_WISH
        move MOVE_FLIP_TURN
        ability ABILITY_REGENERATOR
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_BOLD
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 70
        pokemon SPECIES_WISHIWASHI
        item ITEM_SITRUS_BERRY
        move MOVE_SURF
        move MOVE_REST
        move MOVE_SLEEP_TALK
        move MOVE_BEAT_UP
        ability ABILITY_SCHOOLING
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_QUIET
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 679, "Callie"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BEAUTY
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 679
        // mon 0
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_SPRITZEE
        move MOVE_MISTY_TERRAIN
        move MOVE_AROMATHERAPY
        move MOVE_DRAINING_KISS
        move MOVE_SWEET_KISS
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_SWIRLIX
        move MOVE_PLAY_NICE
        move MOVE_DRAINING_KISS
        move MOVE_FAKE_TEARS
        move MOVE_COTTON_SPORE
        ballseal 0
    endparty

trainerdata 680, "Kassandra"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BEAUTY
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 680
        // mon 0
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_FLOETTE
        move MOVE_HELPING_HAND
        move MOVE_WISH
        move MOVE_MAGICAL_LEAF
        move MOVE_FAIRY_WIND
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 24
        pokemon SPECIES_HATTREM
        move MOVE_BRUTAL_SWING
        move MOVE_DISARMING_VOICE
        move MOVE_PLAY_NICE
        move MOVE_HEAL_PULSE
        ballseal 0
    endparty

trainerdata 681, "Arabella"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 681
        // mon 0
        ivs 60
        abilityslot 0
        level 53
        pokemon SPECIES_STANTLER
        move MOVE_ZEN_HEADBUTT
        move MOVE_RETURN
        move MOVE_ME_FIRST
        move MOVE_TRICK_ROOM
        ballseal 0

        // mon 1
        ivs 60
        abilityslot 0
        level 52
        pokemon SPECIES_TAUROS
        move MOVE_TAKE_DOWN
        move MOVE_THUNDER
        move MOVE_SURF
        move MOVE_FIRE_BLAST
        ballseal 0
    endparty

trainerdata 682, "Bonita"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_M
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 682
        // mon 0
        ivs 60
        abilityslot 0
        level 50
        pokemon SPECIES_SPINDA
        move MOVE_FLAIL
        move MOVE_FAKE_OUT
        move MOVE_TEETER_DANCE
        move MOVE_TRICK_ROOM
        ballseal 0

        // mon 1
        ivs 60
        abilityslot 32
        level 52
        pokemon SPECIES_SUDOWOODO
        move MOVE_WOOD_HAMMER
        move MOVE_HAMMER_ARM
        move MOVE_EARTHQUAKE
        move MOVE_STONE_EDGE
        ballseal 0
    endparty

trainerdata 683, "Salma"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ACE_TRAINER_F
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 683
        // mon 0
        ivs 60
        abilityslot 0
        level 50
        pokemon SPECIES_SLOWKING
        item ITEM_ORAN_BERRY
        move MOVE_SURF
        move MOVE_PSYCHIC
        move MOVE_FLAMETHROWER
        move MOVE_TRICK_ROOM
        ballseal 0

        // mon 1
        ivs 60
        abilityslot 0
        level 53
        pokemon SPECIES_LICKILICKY
        item ITEM_NONE
        move MOVE_WRING_OUT
        move MOVE_THUNDERBOLT
        move MOVE_EARTHQUAKE
        move MOVE_ICE_BEAM
        ballseal 0
    endparty

trainerdata 684, "Elan & Ida"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_DOUBLE_TEAM
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 684
        // mon 0
        ivs 60
        abilityslot 32
        level 52
        pokemon SPECIES_PORYGON2
        item ITEM_NONE
        move MOVE_TRI_ATTACK
        move MOVE_CHARGE_BEAM
        move MOVE_PROTECT
        move MOVE_TRICK_ROOM
        ballseal 0

        // mon 1
        ivs 60
        abilityslot 32
        level 50
        pokemon SPECIES_AZUMARILL
        item ITEM_NONE
        move MOVE_WATERFALL
        move MOVE_AQUA_JET
        move MOVE_SUPERPOWER
        move MOVE_ATTRACT
        ballseal 0
    endparty

trainerdata 685, "Edwin"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_HIKER
    nummons 5
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 685
        // mon 0
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_GLIMMORA
        item ITEM_WHITE_HERB
        move MOVE_TOXIC_SPIKES
        move MOVE_MORTAL_SPIN
        move MOVE_SPIKY_SHIELD
        move MOVE_POWER_GEM
        ability ABILITY_TOXIC_DEBRIS
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_TIMID
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_ARCHEOPS
        item ITEM_FOCUS_SASH
        move MOVE_HIGH_HORSEPOWER
        move MOVE_PROTECT
        move MOVE_POWER_GEM
        move MOVE_U_TURN
        ability ABILITY_DEFEATIST
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_NAIVE
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 73
        pokemon SPECIES_AGGRON
        item ITEM_SITRUS_BERRY
        move MOVE_PROTECT
        move MOVE_ICE_PUNCH
        move MOVE_THUNDER_PUNCH
        move MOVE_BODY_PRESS
        ability ABILITY_FILTER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_SOLROCK
        item ITEM_LEFTOVERS
        move MOVE_FLARE_BLITZ
        move MOVE_ZEN_HEADBUTT
        move MOVE_ROCK_SLIDE
        move MOVE_HYPNOSIS
        ability ABILITY_LEVITATE
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 72
        pokemon SPECIES_GARGANACL
        item ITEM_ROCKY_HELMET
        move MOVE_HAMMER_ARM
        move MOVE_PROTECT
        move MOVE_ROCK_SLIDE
        move MOVE_RECOVER
        ability ABILITY_PURIFYING_SALT
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_IMPISH
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 686, "Bryce"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BOARDER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 686
        // mon 0
        ivs 0
        abilityslot 0
        level 75
        monwithform SPECIES_SANDSLASH, 1
        move MOVE_ICICLE_CRASH
        move MOVE_IRON_HEAD
        move MOVE_ROCK_SLIDE
        move MOVE_SWORDS_DANCE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_LAPRAS
        move MOVE_SURF
        move MOVE_PERISH_SONG
        move MOVE_ICE_BEAM
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_CLOYSTER
        move MOVE_ROCK_BLAST
        move MOVE_ICICLE_SPEAR
        move MOVE_RAZOR_SHELL
        move MOVE_SHELL_SMASH
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_GLALIE
        move MOVE_BODY_SLAM
        move MOVE_ICE_SHARD
        move MOVE_CRUNCH
        move MOVE_EXPLOSION
        ballseal 0
    endparty

trainerdata 687, "Shaun"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BOARDER
    nummons 4
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 687
        // mon 0
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_DEWGONG
        move MOVE_PERISH_SONG
        move MOVE_HYDRO_PUMP
        move MOVE_MOONBLAST
        move MOVE_ICE_BEAM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_CETITAN
        move MOVE_ICICLE_CRASH
        move MOVE_FLIP_TURN
        move MOVE_BOUNCE
        move MOVE_ICE_SHARD
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_BAXCALIBUR
        move MOVE_ICICLE_CRASH
        move MOVE_GLAIVE_RUSH
        move MOVE_DRAGON_TAIL
        move MOVE_PROTECT
        ballseal 0

        // mon 3
        ivs 0
        abilityslot 0
        level 76
        pokemon SPECIES_JYNX
        move MOVE_FOCUS_BLAST
        move MOVE_PSYSHOCK
        move MOVE_BLIZZARD
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 688, "Cady"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_SKIER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 688
        // mon 0
        ivs 0
        abilityslot 0
        level 75
        monwithform SPECIES_NINETALES, 1
        ability ABILITY_SNOW_WARNING
        move MOVE_AURORA_VEIL
        move MOVE_DAZZLING_GLEAM
        move MOVE_BLIZZARD
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 76
        pokemon SPECIES_CASTFORM
        ability ABILITY_FORECAST
        move MOVE_HYDRO_PUMP
        move MOVE_BLIZZARD
        move MOVE_FIRE_BLAST
        move MOVE_NASTY_PLOT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_CRABOMINABLE
        ability ABILITY_SLUSH_RUSH
        move MOVE_CLOSE_COMBAT
        move MOVE_ICE_HAMMER
        move MOVE_ICE_SHARD
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 689, "Cary"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SUPER_NERD
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 689
        // mon 0
        ivs 0
        abilityslot 0
        level 76
        pokemon SPECIES_BLAZIKEN
        move MOVE_BRAVE_BIRD
        move MOVE_BLAZE_KICK
        move MOVE_HIGH_JUMP_KICK
        move MOVE_DETECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_SIMISEAR
        move MOVE_FIRE_BLAST
        move MOVE_DAZZLING_GLEAM
        move MOVE_NASTY_PLOT
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 75
        monwithform SPECIES_TAUROS, 2
        move MOVE_CLOSE_COMBAT
        move MOVE_FLARE_BLITZ
        move MOVE_ZEN_HEADBUTT
        move MOVE_SWORDS_DANCE
        ballseal 0
    endparty

trainerdata 690, "Waldo"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SUPER_NERD
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 690
        // mon 0
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_EMBOAR
        move MOVE_HEAD_SMASH
        move MOVE_CLOSE_COMBAT
        move MOVE_FLARE_BLITZ
        move MOVE_HAMMER_ARM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 76
        pokemon SPECIES_DARMANITAN
        move MOVE_FLARE_BLITZ
        move MOVE_U_TURN
        move MOVE_EARTHQUAKE
        move MOVE_ZEN_HEADBUTT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_VOLCARONA
        move MOVE_QUIVER_DANCE
        move MOVE_FIERY_DANCE
        move MOVE_BUG_BUZZ
        move MOVE_GIGA_DRAIN
        ballseal 0
    endparty

trainerdata 691, "Merle"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SUPER_NERD
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 691
        // mon 0
        ivs 0
        abilityslot 32
        level 76
        pokemon SPECIES_HEATMOR
        move MOVE_POWER_GEM
        move MOVE_EARTH_POWER
        move MOVE_LAVA_PLUME
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 75
        pokemon SPECIES_INCINEROAR
        move MOVE_FAKE_OUT
        move MOVE_FLARE_BLITZ
        move MOVE_PARTING_SHOT
        move MOVE_KNOCK_OFF
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 32
        level 76
        pokemon SPECIES_CERULEDGE
        move MOVE_FLARE_BLITZ
        move MOVE_PSYCHO_CUT
        move MOVE_WILL_O_WISP
        move MOVE_FLAME_CHARGE
        ballseal 0
    endparty

trainerdata 692, "Lowell"
    trainermontype TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ABILITY
    trainerclass CLASS_SCIENTIST_1
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 692
        // mon 0
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_CAMERUPT
        ability ABILITY_DROUGHT
        move MOVE_EARTHQUAKE
        move MOVE_ERUPTION
        move MOVE_SOLAR_BEAM
        move MOVE_SUNNY_DAY
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_CHARIZARD
        ability ABILITY_SOLAR_POWER
        move MOVE_HEAT_WAVE
        move MOVE_DRAGON_PULSE
        move MOVE_HURRICANE
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_ARCANINE
        ability ABILITY_INTIMIDATE
        move MOVE_OVERHEAT
        move MOVE_EXTREME_SPEED
        move MOVE_PLAY_ROUGH
        move MOVE_THUNDER_FANG
        ballseal 0
    endparty

trainerdata 693, "Linden"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCIENTIST_1
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 693
        // mon 0
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_CHANDELURE
        move MOVE_PROTECT
        move MOVE_WILL_O_WISP
        move MOVE_HEX
        move MOVE_AURA_SPHERE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        monwithform SPECIES_ARCANINE, 1
        move MOVE_EXTREME_SPEED
        move MOVE_FLARE_BLITZ
        move MOVE_ROCK_SLIDE
        move MOVE_HELPING_HAND
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 76
        pokemon SPECIES_TURTONATOR
        move MOVE_FLAMETHROWER
        move MOVE_IRON_DEFENSE
        move MOVE_BODY_PRESS
        move MOVE_DRAGON_PULSE
        ballseal 0
    endparty

trainerdata 694, "Daniel"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_SCIENTIST_1
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 694
        // mon 0
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_NINETALES
        move MOVE_LAVA_PLUME
        move MOVE_WILL_O_WISP
        move MOVE_PROTECT
        move MOVE_SHADOW_BALL
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 75
        monwithform SPECIES_MAROWAK, 1
        move MOVE_BONE_RUSH
        move MOVE_PROTECT
        move MOVE_FLARE_BLITZ
        move MOVE_SHADOW_BONE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 75
        pokemon SPECIES_FLAREON
        move MOVE_FIRE_LASH
        move MOVE_SUPERPOWER
        move MOVE_EARTHQUAKE
        move MOVE_HELPING_HAND
        ballseal 0
    endparty

trainerdata 695, "Dane"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BUG_CATCHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 695
        // mon 0
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_AMOONGUSS
        move MOVE_SPORE
        move MOVE_RAGE_POWDER
        move MOVE_SLUDGE_BOMB
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 73
        pokemon SPECIES_ESCAVALIER
        move MOVE_SUPERPOWER
        move MOVE_IRON_HEAD
        move MOVE_MEGAHORN
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_MIMIKYU
        move MOVE_SHADOW_SNEAK
        move MOVE_SHADOW_CLAW
        move MOVE_TRICK_ROOM
        move MOVE_WILL_O_WISP
        ballseal 0
    endparty

trainerdata 696, "Dion"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BUG_CATCHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 696
        // mon 0
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_ARIADOS
        move MOVE_U_TURN
        move MOVE_BUG_BITE
        move MOVE_SHADOW_SNEAK
        move MOVE_PROTECT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_GALVANTULA
        move MOVE_BUG_BUZZ
        move MOVE_THUNDERBOLT
        move MOVE_STICKY_WEB
        move MOVE_SLUDGE_BOMB
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_FERROTHORN
        move MOVE_LEECH_SEED
        move MOVE_POWER_WHIP
        move MOVE_GYRO_BALL
        move MOVE_PAYBACK
        ballseal 0
    endparty

trainerdata 697, "Stacey"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BUG_CATCHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 697
        // mon 0
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_ARAQUANID
        move MOVE_SPIDER_WEB
        move MOVE_LEECH_LIFE
        move MOVE_LIQUIDATION
        move MOVE_FLIP_TURN
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_LEAVANNY
        move MOVE_PROTECT
        move MOVE_STICKY_WEB
        move MOVE_MEGAHORN
        move MOVE_LEAF_BLADE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 60
        pokemon SPECIES_EELEKTROSS
        move MOVE_CLOSE_COMBAT
        move MOVE_WILD_CHARGE
        move MOVE_PROTECT
        move MOVE_LEECH_LIFE
        ballseal 0
    endparty

trainerdata 698, "Ellis"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BUG_CATCHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 698
        // mon 0
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_GARBODOR
        move MOVE_IRON_DEFENSE
        move MOVE_BODY_PRESS
        move MOVE_EARTHQUAKE
        move MOVE_PAIN_SPLIT
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_SCOLIPEDE
        move MOVE_PROTECT
        move MOVE_GUNK_SHOT
        move MOVE_MEGAHORN
        move MOVE_BATON_PASS
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_CRUSTLE
        move MOVE_LEECH_LIFE
        move MOVE_EARTHQUAKE
        move MOVE_ROCK_SLIDE
        move MOVE_CRABHAMMER
        ballseal 0
    endparty

trainerdata 699, "Abner"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BUG_CATCHER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 699
        // mon 0
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_PARASECT
        move MOVE_LEECH_LIFE
        move MOVE_RAGE_POWDER
        move MOVE_PROTECT
        move MOVE_LEECH_SEED
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_BEEDRILL
        move MOVE_GUNK_SHOT
        move MOVE_KNOCK_OFF
        move MOVE_U_TURN
        move MOVE_PROTECT
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 72
        pokemon SPECIES_RAICHU
        move MOVE_THUNDER_WAVE
        move MOVE_SURF
        move MOVE_THUNDERBOLT
        move MOVE_GRASS_KNOT
        ballseal 0
    endparty

trainerdata 700, "Giovanni"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ROCKET_BOSS
    nummons 4
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 700
        // mon 0
        ivs 100
        abilityslot 0
        level 42
        pokemon SPECIES_NIDOKING
        item ITEM_NONE
        move MOVE_FOCUS_ENERGY
        move MOVE_FURY_ATTACK
        move MOVE_DOUBLE_KICK
        move MOVE_SHADOW_CLAW
        ballseal 0

        // mon 1
        ivs 100
        abilityslot 32
        level 40
        pokemon SPECIES_KANGASKHAN
        item ITEM_NONE
        move MOVE_DIZZY_PUNCH
        move MOVE_SUCKER_PUNCH
        move MOVE_LEER
        move MOVE_OUTRAGE
        ballseal 0

        // mon 2
        ivs 100
        abilityslot 0
        level 43
        pokemon SPECIES_HONCHKROW
        item ITEM_NONE
        move MOVE_DARK_PULSE
        move MOVE_NASTY_PLOT
        move MOVE_SWAGGER
        move MOVE_SHADOW_BALL
        ballseal 0

        // mon 3
        ivs 100
        abilityslot 0
        level 46
        pokemon SPECIES_NIDOQUEEN
        item ITEM_NONE
        move MOVE_EARTH_POWER
        move MOVE_SUPERPOWER
        move MOVE_CRUNCH
        move MOVE_ROAR
        ballseal 0
    endparty

trainerdata 701, "Lance"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_CHAMPION
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 701
        // mon 0
        ivs 250
        abilityslot 0
        level 72
        pokemon SPECIES_SALAMENCE
        item ITEM_LUM_BERRY
        move MOVE_FLAMETHROWER
        move MOVE_SHADOW_CLAW
        move MOVE_DRAGON_CLAW
        move MOVE_REST
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 0
        level 68
        pokemon SPECIES_GYARADOS
        item ITEM_NONE
        move MOVE_THUNDER_WAVE
        move MOVE_ICE_FANG
        move MOVE_WATERFALL
        move MOVE_DRAGON_DANCE
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 0
        level 72
        pokemon SPECIES_GARCHOMP
        item ITEM_NONE
        move MOVE_SWORDS_DANCE
        move MOVE_OUTRAGE
        move MOVE_EARTHQUAKE
        move MOVE_ROAR
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 0
        level 73
        pokemon SPECIES_ALTARIA
        item ITEM_NONE
        move MOVE_PERISH_SONG
        move MOVE_DRAGON_BREATH
        move MOVE_NONE
        move MOVE_HYPER_BEAM
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 0
        level 68
        pokemon SPECIES_CHARIZARD
        item ITEM_NONE
        move MOVE_FLAMETHROWER
        move MOVE_AIR_SLASH
        move MOVE_DRAGON_CLAW
        move MOVE_HYPER_BEAM
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 0
        level 75
        pokemon SPECIES_DRAGONITE
        item ITEM_SITRUS_BERRY
        move MOVE_FIRE_BLAST
        move MOVE_SAFEGUARD
        move MOVE_DRACO_METEOR
        move MOVE_HYPER_BEAM
        ballseal 0
    endparty

trainerdata 702, "Will"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ELITE_FOUR_0
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 702
        // mon 0
        ivs 250
        abilityslot 32
        level 58
        pokemon SPECIES_BRONZONG
        item ITEM_NONE
        move MOVE_REFLECT
        move MOVE_PAYBACK
        move MOVE_GRAVITY
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 0
        level 60
        pokemon SPECIES_JYNX
        item ITEM_NONE
        move MOVE_FAKE_TEARS
        move MOVE_LOVELY_KISS
        move MOVE_BLIZZARD
        move MOVE_DREAM_EATER
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 0
        level 59
        pokemon SPECIES_GRUMPIG
        item ITEM_NONE
        move MOVE_CONFUSE_RAY
        move MOVE_SIGNAL_BEAM
        move MOVE_POWER_GEM
        move MOVE_PSYCHIC
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 32
        level 60
        pokemon SPECIES_SLOWBRO
        item ITEM_NONE
        move MOVE_CURSE
        move MOVE_AMNESIA
        move MOVE_BODY_SLAM
        move MOVE_PSYCHIC
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 0
        level 61
        pokemon SPECIES_GARDEVOIR
        item ITEM_NONE
        move MOVE_FOCUS_BLAST
        move MOVE_CHARGE_BEAM
        move MOVE_CALM_MIND
        move MOVE_PSYCHIC
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 32
        level 62
        pokemon SPECIES_XATU
        item ITEM_SITRUS_BERRY
        move MOVE_QUICK_ATTACK
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        move MOVE_PSYCHIC
        ballseal 0
    endparty

trainerdata 703, "Koga"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ELITE_FOUR_2
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 703
        // mon 0
        ivs 250
        abilityslot 32
        level 61
        pokemon SPECIES_SKUNTANK
        item ITEM_NONE
        move MOVE_SUCKER_PUNCH
        move MOVE_DIG
        move MOVE_TOXIC
        move MOVE_EXPLOSION
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 0
        level 63
        pokemon SPECIES_VENOMOTH
        item ITEM_NONE
        move MOVE_NONE
        move MOVE_BATON_PASS
        move MOVE_PSYCHIC
        move MOVE_SILVER_WIND
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 32
        level 60
        pokemon SPECIES_TOXICROAK
        item ITEM_NONE
        move MOVE_CROSS_CHOP
        move MOVE_X_SCISSOR
        move MOVE_SWAGGER
        move MOVE_GUNK_SHOT
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 32
        level 62
        pokemon SPECIES_MUK
        item ITEM_BLACK_SLUDGE
        move MOVE_NONE
        move MOVE_SCREECH
        move MOVE_SWAGGER
        move MOVE_TOXIC
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 0
        level 64
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_MEAN_LOOK
        move MOVE_FLY
        move MOVE_CROSS_POISON
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 32
        level 62
        pokemon SPECIES_SWALOT
        item ITEM_LEFTOVERS
        move MOVE_YAWN
        move MOVE_AMNESIA
        move MOVE_PAIN_SPLIT
        move MOVE_SLUDGE_BOMB
        ballseal 0
    endparty

trainerdata 704, "Bruno"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ELITE_FOUR_3
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 704
        // mon 0
        ivs 250
        abilityslot 32
        level 62
        pokemon SPECIES_HITMONTOP
        item ITEM_NONE
        move MOVE_COUNTER
        move MOVE_QUICK_ATTACK
        move MOVE_CLOSE_COMBAT
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 32
        level 61
        pokemon SPECIES_HITMONLEE
        item ITEM_NONE
        move MOVE_SWAGGER
        move MOVE_CLOSE_COMBAT
        move MOVE_REVERSAL
        move MOVE_BLAZE_KICK
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 32
        level 61
        pokemon SPECIES_HITMONCHAN
        item ITEM_NONE
        move MOVE_SUBSTITUTE
        move MOVE_DRAIN_PUNCH
        move MOVE_CLOSE_COMBAT
        move MOVE_BULLET_PUNCH
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 0
        level 62
        pokemon SPECIES_HARIYAMA
        item ITEM_SITRUS_BERRY
        move MOVE_LOW_KICK
        move MOVE_PAYBACK
        move MOVE_BULLET_PUNCH
        move MOVE_BULK_UP
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 32
        level 64
        pokemon SPECIES_MACHAMP
        item ITEM_NONE
        move MOVE_BULLET_PUNCH
        move MOVE_FORESIGHT
        move MOVE_STONE_EDGE
        move MOVE_DYNAMIC_PUNCH
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 32
        level 64
        pokemon SPECIES_LUCARIO
        item ITEM_NONE
        move MOVE_EXTREME_SPEED
        move MOVE_CLOSE_COMBAT
        move MOVE_COUNTER
        move MOVE_IRON_TAIL
        ballseal 0
    endparty

trainerdata 705, "Karen"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_ELITE_FOUR_1
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 705
        // mon 0
        ivs 250
        abilityslot 0
        level 60
        pokemon SPECIES_WEAVILE
        item ITEM_NONE
        move MOVE_ICE_SHARD
        move MOVE_NIGHT_SLASH
        move MOVE_ICE_PUNCH
        move MOVE_LOW_KICK
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 0
        level 60
        pokemon SPECIES_SPIRITOMB
        item ITEM_NONE
        move MOVE_CURSE
        move MOVE_CONFUSE_RAY
        move MOVE_PAIN_SPLIT
        move MOVE_SUCKER_PUNCH
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 32
        level 60
        pokemon SPECIES_ABSOL
        item ITEM_NONE
        move MOVE_NIGHT_SLASH
        move MOVE_PSYCHO_CUT
        move MOVE_DETECT
        move MOVE_PERISH_SONG
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 32
        level 60
        pokemon SPECIES_HONCHKROW
        item ITEM_NONE
        move MOVE_DRILL_PECK
        move MOVE_WHIRLWIND
        move MOVE_SUCKER_PUNCH
        move MOVE_THUNDER_WAVE
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 0
        level 60
        pokemon SPECIES_HOUNDOOM
        item ITEM_NONE
        move MOVE_NASTY_PLOT
        move MOVE_DARK_PULSE
        move MOVE_FLAMETHROWER
        move MOVE_SLUDGE_BOMB
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 0
        level 62
        pokemon SPECIES_UMBREON
        item ITEM_SITRUS_BERRY
        move MOVE_CURSE
        move MOVE_PAYBACK
        move MOVE_CONFUSE_RAY
        move MOVE_SUCKER_PUNCH
        ballseal 0
    endparty

trainerdata 706, "Proton"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES | TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_ABILITY | TRAINER_DATA_TYPE_BALL | TRAINER_DATA_TYPE_IV_EV_SET | TRAINER_DATA_TYPE_NATURE_SET | TRAINER_DATA_TYPE_SHINY_LOCK | TRAINER_DATA_TYPE_ADDITIONAL_FLAGS
    trainerclass CLASS_EXECUTIVE_1
    nummons 3
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 706
        // mon 0
        ivs 200
        abilityslot 0
        level 45
        pokemon SPECIES_TOXICROAK
        item ITEM_BLACK_SLUDGE
        move MOVE_CLOSE_COMBAT
        move MOVE_MACH_PUNCH
        move MOVE_GUNK_SHOT
        move MOVE_PROTECT
        ability ABILITY_POISON_TOUCH
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 44
        pokemon SPECIES_GRIMMSNARL
        item ITEM_LIGHT_CLAY
        move MOVE_FAKE_OUT
        move MOVE_LIGHT_SCREEN
        move MOVE_REFLECT
        move MOVE_PLAY_ROUGH
        ability ABILITY_PRANKSTER
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_ADAMANT
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 44
        pokemon SPECIES_GRAFAIAI
        item ITEM_FOCUS_SASH
        move MOVE_GUNK_SHOT
        move MOVE_KNOCK_OFF
        move MOVE_TAUNT
        move MOVE_PROTECT
        ability ABILITY_UNBURDEN
        setivs 31, 31, 31, 31, 31, 31 // hp, atk, def, spd, spatk, spdef
        setevs 84, 84, 84, 84, 84, 84 // hp, atk, def, spd, spatk, spdef
        nature NATURE_JOLLY
        shinylock 0
        additionalflags 0 // no further entries data will be read, but needs to be here as the trainer data structure specifies additionalflags
        ballseal 0
    endparty

trainerdata 707, "Palmer"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_TOWER_TYCOON
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 707
        // mon 0
        ivs 0
        abilityslot 0
        level 5
        pokemon SPECIES_RATTATA
        ballseal 0
    endparty

trainerdata 708, "Argenta"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HALL_MATRON
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 708
        // mon 0
        ivs 0
        abilityslot 0
        level 5
        pokemon SPECIES_RATTATA
        ballseal 0
    endparty

trainerdata 709, "Thorton"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_FACTORY_HEAD
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 709
        // mon 0
        ivs 0
        abilityslot 0
        level 5
        pokemon SPECIES_RATTATA
        ballseal 0
    endparty

trainerdata 710, "Dahlia"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_ARCADE_STAR
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 710
        // mon 0
        ivs 0
        abilityslot 0
        level 5
        pokemon SPECIES_RATTATA
        ballseal 0
    endparty

trainerdata 711, "Darach"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CASTLE_VALET
    nummons 1
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 711
        // mon 0
        ivs 0
        abilityslot 0
        level 5
        pokemon SPECIES_RATTATA
        ballseal 0
    endparty

trainerdata 712, "Falkner"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_M
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 712
        // mon 0
        ivs 200
        abilityslot 0
        level 50
        pokemon SPECIES_STARAPTOR
        item ITEM_NONE
        move MOVE_ATTRACT
        move MOVE_BRAVE_BIRD
        move MOVE_CLOSE_COMBAT
        move MOVE_U_TURN
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_NOCTOWL
        item ITEM_NONE
        move MOVE_ROOST
        move MOVE_AIR_SLASH
        move MOVE_SHADOW_BALL
        move MOVE_FEATHER_DANCE
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_SWELLOW
        item ITEM_FLAME_ORB
        move MOVE_FACADE
        move MOVE_PROTECT
        move MOVE_NONE
        move MOVE_ENDEAVOR
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 54
        pokemon SPECIES_HONCHKROW
        item ITEM_NONE
        move MOVE_NIGHT_SLASH
        move MOVE_SUCKER_PUNCH
        move MOVE_THUNDER_WAVE
        move MOVE_DARK_PULSE
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 48
        pokemon SPECIES_PELIPPER
        item ITEM_NONE
        move MOVE_SURF
        move MOVE_TAILWIND
        move MOVE_ICE_BEAM
        move MOVE_HIDDEN_POWER
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 56
        pokemon SPECIES_PIDGEOT
        item ITEM_NONE
        move MOVE_RETURN
        move MOVE_NONE
        move MOVE_SWAGGER
        move MOVE_ROOST
        ballseal 0
    endparty

trainerdata 713, "Bugsy"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_F
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 713
        // mon 0
        ivs 200
        abilityslot 32
        level 56
        pokemon SPECIES_SCIZOR
        item ITEM_SITRUS_BERRY
        move MOVE_BULLET_PUNCH
        move MOVE_X_SCISSOR
        move MOVE_SWORDS_DANCE
        move MOVE_SUPERPOWER
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 48
        pokemon SPECIES_SHEDINJA
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_X_SCISSOR
        move MOVE_SHADOW_SNEAK
        move MOVE_SWAGGER
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 52
        pokemon SPECIES_YANMEGA
        item ITEM_NONE
        move MOVE_DETECT
        move MOVE_BUG_BUZZ
        move MOVE_AIR_SLASH
        move MOVE_ANCIENT_POWER
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 55
        pokemon SPECIES_PINSIR
        item ITEM_NONE
        move MOVE_EARTHQUAKE
        move MOVE_GUILLOTINE
        move MOVE_X_SCISSOR
        move MOVE_ROCK_TOMB
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 54
        pokemon SPECIES_HERACROSS
        item ITEM_NONE
        move MOVE_CLOSE_COMBAT
        move MOVE_MEGAHORN
        move MOVE_STONE_EDGE
        move MOVE_COUNTER
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_VESPIQUEN
        item ITEM_SITRUS_BERRY
        move MOVE_PROTECT
        move MOVE_CONFUSE_RAY
        move MOVE_ATTACK_ORDER
        move MOVE_DEFEND_ORDER
        ballseal 0
    endparty

trainerdata 714, "Whitney"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 714
        // mon 0
        ivs 250
        abilityslot 0
        level 52
        pokemon SPECIES_GIRAFARIG
        item ITEM_NONE
        move MOVE_PSYCHIC
        move MOVE_SHADOW_BALL
        move MOVE_CALM_MIND
        move MOVE_BATON_PASS
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 50
        pokemon SPECIES_LICKILICKY
        item ITEM_NONE
        move MOVE_WRING_OUT
        move MOVE_FLAMETHROWER
        move MOVE_ICE_BEAM
        move MOVE_THUNDERBOLT
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 54
        pokemon SPECIES_BIBAREL
        item ITEM_NONE
        move MOVE_NONE
        move MOVE_CHARGE_BEAM
        move MOVE_SURF
        move MOVE_ICE_BEAM
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 32
        level 54
        pokemon SPECIES_DELCATTY
        item ITEM_NONE
        move MOVE_FAKE_OUT
        move MOVE_ASSIST
        move MOVE_CALM_MIND
        move MOVE_BATON_PASS
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_CLEFABLE
        item ITEM_NONE
        move MOVE_BLIZZARD
        move MOVE_THUNDER
        move MOVE_FIRE_BLAST
        move MOVE_CALM_MIND
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 32
        level 58
        pokemon SPECIES_MILTANK
        item ITEM_LUM_BERRY
        move MOVE_BODY_SLAM
        move MOVE_ATTRACT
        move MOVE_SLEEP_TALK
        move MOVE_REST
        ballseal 0
    endparty

trainerdata 715, "Morty"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_0
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 715
        // mon 0
        ivs 200
        abilityslot 32
        level 52
        pokemon SPECIES_DRIFBLIM
        item ITEM_SITRUS_BERRY
        move MOVE_DESTINY_BOND
        move MOVE_SUBSTITUTE
        move MOVE_THUNDERBOLT
        move MOVE_SHADOW_BALL
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_DUSKNOIR
        item ITEM_NONE
        move MOVE_PAIN_SPLIT
        move MOVE_WILL_O_WISP
        move MOVE_SUBSTITUTE
        move MOVE_PAYBACK
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_SABLEYE
        item ITEM_NONE
        move MOVE_SUCKER_PUNCH
        move MOVE_BRICK_BREAK
        move MOVE_ICE_PUNCH
        move MOVE_FAKE_OUT
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 54
        pokemon SPECIES_MISMAGIUS
        item ITEM_NONE
        move MOVE_PERISH_SONG
        move MOVE_MEAN_LOOK
        move MOVE_CONFUSE_RAY
        move MOVE_ASTONISH
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 57
        pokemon SPECIES_GENGAR
        item ITEM_NONE
        move MOVE_HYPNOSIS
        move MOVE_CONFUSE_RAY
        move MOVE_SHADOW_BALL
        move MOVE_FOCUS_BLAST
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 57
        pokemon SPECIES_GENGAR
        item ITEM_NONE
        move MOVE_SUBSTITUTE
        move MOVE_SHADOW_BALL
        move MOVE_THUNDERBOLT
        move MOVE_DESTINY_BOND
        ballseal 0
    endparty

trainerdata 716, "Pryce"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_1
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 716
        // mon 0
        ivs 200
        abilityslot 0
        level 56
        pokemon SPECIES_ABOMASNOW
        item ITEM_NONE
        move MOVE_ICE_SHARD
        move MOVE_WOOD_HAMMER
        move MOVE_EARTHQUAKE
        move MOVE_BLIZZARD
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 58
        pokemon SPECIES_DEWGONG
        item ITEM_LUM_BERRY
        move MOVE_DIVE
        move MOVE_SHEER_COLD
        move MOVE_SLEEP_TALK
        move MOVE_REST
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_GLALIE
        item ITEM_NONE
        move MOVE_PAYBACK
        move MOVE_TORMENT
        move MOVE_ATTRACT
        move MOVE_BLIZZARD
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_FROSLASS
        item ITEM_NONE
        move MOVE_ICE_SHARD
        move MOVE_CONFUSE_RAY
        move MOVE_ATTRACT
        move MOVE_BLIZZARD
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_WALREIN
        item ITEM_NONE
        move MOVE_HAIL
        move MOVE_BODY_SLAM
        move MOVE_SWAGGER
        move MOVE_BLIZZARD
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 32
        level 60
        pokemon SPECIES_MAMOSWINE
        item ITEM_SITRUS_BERRY
        move MOVE_EARTHQUAKE
        move MOVE_AVALANCHE
        move MOVE_STONE_EDGE
        move MOVE_NONE
        ballseal 0
    endparty

trainerdata 717, "Jasmine"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_2
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 717
        // mon 0
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_METAGROSS
        item ITEM_NONE
        move MOVE_METEOR_MASH
        move MOVE_BULLET_PUNCH
        move MOVE_GRAVITY
        move MOVE_EXPLOSION
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 56
        pokemon SPECIES_MAGNEZONE
        item ITEM_NONE
        move MOVE_ZAP_CANNON
        move MOVE_LOCK_ON
        move MOVE_MIRROR_COAT
        move MOVE_METAL_SOUND
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_SKARMORY
        item ITEM_NONE
        move MOVE_AIR_SLASH
        move MOVE_SPIKES
        move MOVE_NIGHT_SLASH
        move MOVE_STEEL_WING
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 50
        pokemon SPECIES_BRONZONG
        item ITEM_NONE
        move MOVE_GYRO_BALL
        move MOVE_HYPNOSIS
        move MOVE_DREAM_EATER
        move MOVE_GRAVITY
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_EMPOLEON
        item ITEM_NONE
        move MOVE_HYDRO_PUMP
        move MOVE_BLIZZARD
        move MOVE_AQUA_JET
        move MOVE_ROAR
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 32
        level 62
        pokemon SPECIES_STEELIX
        item ITEM_NONE
        move MOVE_STONE_EDGE
        move MOVE_STEALTH_ROCK
        move MOVE_ROAR
        move MOVE_IRON_TAIL
        ballseal 0
    endparty

trainerdata 718, "Chuck"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_3
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 718
        // mon 0
        ivs 200
        abilityslot 0
        level 54
        pokemon SPECIES_MEDICHAM
        item ITEM_SITRUS_BERRY
        move MOVE_HIGH_JUMP_KICK
        move MOVE_PSYCHO_CUT
        move MOVE_ATTRACT
        move MOVE_THUNDER_PUNCH
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 52
        pokemon SPECIES_HITMONCHAN
        item ITEM_NONE
        move MOVE_MACH_PUNCH
        move MOVE_SWAGGER
        move MOVE_FOCUS_PUNCH
        move MOVE_NONE
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 55
        pokemon SPECIES_HITMONLEE
        item ITEM_NONE
        move MOVE_HIGH_JUMP_KICK
        move MOVE_FAKE_OUT
        move MOVE_BLAZE_KICK
        move MOVE_BULK_UP
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_BRELOOM
        item ITEM_TOXIC_ORB
        move MOVE_SUBSTITUTE
        move MOVE_FOCUS_PUNCH
        move MOVE_DRAIN_PUNCH
        move MOVE_STONE_EDGE
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 56
        pokemon SPECIES_PRIMEAPE
        item ITEM_NONE
        move MOVE_CLOSE_COMBAT
        move MOVE_PAYBACK
        move MOVE_THUNDER_PUNCH
        move MOVE_SWAGGER
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 60
        pokemon SPECIES_POLIWRATH
        item ITEM_SITRUS_BERRY
        move MOVE_NONE
        move MOVE_WATERFALL
        move MOVE_FOCUS_PUNCH
        move MOVE_SUBSTITUTE
        ballseal 0
    endparty

trainerdata 719, "Clair"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_4
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 719
        // mon 0
        ivs 200
        abilityslot 0
        level 56
        pokemon SPECIES_GYARADOS
        item ITEM_WACAN_BERRY
        move MOVE_DRAGON_DANCE
        move MOVE_EARTHQUAKE
        move MOVE_WATERFALL
        move MOVE_DRAGON_PULSE
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_DRAGONAIR
        item ITEM_NONE
        move MOVE_THUNDER_WAVE
        move MOVE_DRAGON_RUSH
        move MOVE_THUNDERBOLT
        move MOVE_FLAMETHROWER
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_AERODACTYL
        item ITEM_NONE
        move MOVE_EARTHQUAKE
        move MOVE_THUNDER_FANG
        move MOVE_ROCK_SLIDE
        move MOVE_ROAR
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 56
        pokemon SPECIES_KINGDRA
        item ITEM_NONE
        move MOVE_YAWN
        move MOVE_HYDRO_PUMP
        move MOVE_ICE_BEAM
        move MOVE_DRAGON_BREATH
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_CHARIZARD
        item ITEM_NONE
        move MOVE_SHADOW_CLAW
        move MOVE_AIR_SLASH
        move MOVE_DRAGON_CLAW
        move MOVE_FIRE_FANG
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 60
        pokemon SPECIES_DRAGONITE
        item ITEM_SITRUS_BERRY
        move MOVE_THUNDER
        move MOVE_SAFEGUARD
        move MOVE_DRAGON_BREATH
        move MOVE_HYPER_BEAM
        ballseal 0
    endparty

trainerdata 720, "Brock"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_5
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 720
        // mon 0
        ivs 200
        abilityslot 32
        level 55
        pokemon SPECIES_GOLEM
        item ITEM_NONE
        move MOVE_SANDSTORM
        move MOVE_ROCK_SLIDE
        move MOVE_ROCK_POLISH
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_RELICANTH
        item ITEM_LUM_BERRY
        move MOVE_HEAD_SMASH
        move MOVE_AQUA_TAIL
        move MOVE_EARTHQUAKE
        move MOVE_REST
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 56
        pokemon SPECIES_OMASTAR
        item ITEM_NONE
        move MOVE_ANCIENT_POWER
        move MOVE_BRINE
        move MOVE_PROTECT
        move MOVE_SANDSTORM
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 61
        pokemon SPECIES_ONIX
        item ITEM_SITRUS_BERRY
        move MOVE_STEALTH_ROCK
        move MOVE_ROCK_SLIDE
        move MOVE_ROCK_POLISH
        move MOVE_SANDSTORM
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 55
        pokemon SPECIES_KABUTOPS
        item ITEM_NONE
        move MOVE_ROCK_SLIDE
        move MOVE_AQUA_JET
        move MOVE_ENDURE
        move MOVE_GIGA_DRAIN
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 57
        pokemon SPECIES_RAMPARDOS
        item ITEM_NONE
        move MOVE_EARTHQUAKE
        move MOVE_STONE_EDGE
        move MOVE_AVALANCHE
        move MOVE_ROCK_POLISH
        ballseal 0
    endparty

trainerdata 721, "Misty"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_6
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 721
        // mon 0
        ivs 200
        abilityslot 32
        level 60
        pokemon SPECIES_STARMIE
        item ITEM_COLBUR_BERRY
        move MOVE_THUNDERBOLT
        move MOVE_PSYCHIC
        move MOVE_ICE_BEAM
        move MOVE_SURF
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 56
        pokemon SPECIES_QUAGSIRE
        item ITEM_NONE
        move MOVE_WATER_PULSE
        move MOVE_AMNESIA
        move MOVE_EARTHQUAKE
        move MOVE_RAIN_DANCE
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 56
        pokemon SPECIES_LAPRAS
        item ITEM_NONE
        move MOVE_SURF
        move MOVE_PERISH_SONG
        move MOVE_BLIZZARD
        move MOVE_RAIN_DANCE
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 54
        pokemon SPECIES_LANTURN
        item ITEM_NONE
        move MOVE_CONFUSE_RAY
        move MOVE_THUNDERBOLT
        move MOVE_SURF
        move MOVE_THUNDER_WAVE
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 54
        pokemon SPECIES_FLOATZEL
        item ITEM_NONE
        move MOVE_AGILITY
        move MOVE_ICE_FANG
        move MOVE_WATERFALL
        move MOVE_BATON_PASS
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 60
        pokemon SPECIES_MILOTIC
        item ITEM_NONE
        move MOVE_HYDRO_PUMP
        move MOVE_ICE_BEAM
        move MOVE_REST
        move MOVE_SLEEP_TALK
        ballseal 0
    endparty

trainerdata 722, "Lt. Surge"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_7
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 722
        // mon 0
        ivs 200
        abilityslot 0
        level 60
        pokemon SPECIES_RAICHU
        item ITEM_NONE
        move MOVE_THUNDER_WAVE
        move MOVE_QUICK_ATTACK
        move MOVE_THUNDERBOLT
        move MOVE_GRASS_KNOT
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_MANECTRIC
        item ITEM_PINAP_BERRY
        move MOVE_THUNDER_WAVE
        move MOVE_NATURAL_GIFT
        move MOVE_DISCHARGE
        move MOVE_OVERHEAT
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_MAGNEZONE
        item ITEM_NONE
        move MOVE_THUNDERBOLT
        move MOVE_NONE
        move MOVE_MAGNET_RISE
        move MOVE_MIRROR_SHOT
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 32
        level 52
        pokemon SPECIES_ELECTRODE
        item ITEM_NONE
        move MOVE_THUNDER_WAVE
        move MOVE_NONE
        move MOVE_THUNDERBOLT
        move MOVE_EXPLOSION
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 58
        pokemon SPECIES_PACHIRISU
        item ITEM_NONE
        move MOVE_QUICK_ATTACK
        move MOVE_SUPER_FANG
        move MOVE_DISCHARGE
        move MOVE_SWEET_KISS
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 56
        pokemon SPECIES_ELECTIVIRE
        item ITEM_SITRUS_BERRY
        move MOVE_THUNDERBOLT
        move MOVE_CROSS_CHOP
        move MOVE_ICE_PUNCH
        move MOVE_EARTHQUAKE
        ballseal 0
    endparty

trainerdata 723, "Erika"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_8
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 723
        // mon 0
        ivs 200
        abilityslot 0
        level 54
        pokemon SPECIES_SHIFTRY
        item ITEM_NONE
        move MOVE_LEAF_STORM
        move MOVE_SUCKER_PUNCH
        move MOVE_EXPLOSION
        move MOVE_SUNNY_DAY
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 53
        pokemon SPECIES_JUMPLUFF
        item ITEM_NONE
        move MOVE_U_TURN
        move MOVE_MEMENTO
        move MOVE_SLEEP_POWDER
        move MOVE_GIGA_DRAIN
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 56
        pokemon SPECIES_VICTREEBEL
        item ITEM_KELPSY_BERRY
        move MOVE_NATURAL_GIFT
        move MOVE_SLUDGE_BOMB
        move MOVE_LEAF_STORM
        move MOVE_LEAF_BLADE
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 56
        pokemon SPECIES_BELLOSSOM
        item ITEM_NONE
        move MOVE_SUNNY_DAY
        move MOVE_SOLAR_BEAM
        move MOVE_GIGA_DRAIN
        move MOVE_ATTRACT
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 60
        pokemon SPECIES_TANGROWTH
        item ITEM_NONE
        move MOVE_SWORDS_DANCE
        move MOVE_POWER_WHIP
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 55
        pokemon SPECIES_ROSERADE
        item ITEM_NONE
        move MOVE_WEATHER_BALL
        move MOVE_ENERGY_BALL
        move MOVE_SLUDGE_BOMB
        move MOVE_STUN_SPORE
        ballseal 0
    endparty

trainerdata 724, "Janine"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_9
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 724
        // mon 0
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_HEAT_WAVE
        move MOVE_CROSS_POISON
        move MOVE_CONFUSE_RAY
        move MOVE_U_TURN
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 0
        level 56
        pokemon SPECIES_WEEZING
        item ITEM_NONE
        move MOVE_THUNDERBOLT
        move MOVE_SLUDGE_BOMB
        move MOVE_TOXIC
        move MOVE_EXPLOSION
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 52
        pokemon SPECIES_TOXICROAK
        item ITEM_NONE
        move MOVE_CROSS_CHOP
        move MOVE_POISON_JAB
        move MOVE_ATTRACT
        move MOVE_SUBSTITUTE
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 58
        pokemon SPECIES_ARIADOS
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_BOUNCE
        move MOVE_SWAGGER
        move MOVE_NIGHT_SHADE
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 59
        pokemon SPECIES_VENOMOTH
        item ITEM_SITRUS_BERRY
        move MOVE_SLEEP_POWDER
        move MOVE_NONE
        move MOVE_BUG_BUZZ
        move MOVE_PSYCHIC
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 55
        pokemon SPECIES_DRAPION
        item ITEM_NONE
        move MOVE_CROSS_POISON
        move MOVE_CONFUSE_RAY
        move MOVE_CRUNCH
        move MOVE_SWORDS_DANCE
        ballseal 0
    endparty

trainerdata 725, "Sabrina"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_10
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 725
        // mon 0
        ivs 200
        abilityslot 0
        level 60
        pokemon SPECIES_ALAKAZAM
        item ITEM_NONE
        move MOVE_GRAVITY
        move MOVE_FOCUS_BLAST
        move MOVE_ENERGY_BALL
        move MOVE_PSYCHIC
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 58
        pokemon SPECIES_ESPEON
        item ITEM_NONE
        move MOVE_CALM_MIND
        move MOVE_BATON_PASS
        move MOVE_SHADOW_BALL
        move MOVE_PSYCHIC
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 56
        pokemon SPECIES_MR_MIME
        item ITEM_NONE
        move MOVE_REFLECT
        move MOVE_SKILL_SWAP
        move MOVE_THUNDER
        move MOVE_PSYCHIC
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 54
        pokemon SPECIES_JYNX
        item ITEM_NONE
        move MOVE_BLIZZARD
        move MOVE_PERISH_SONG
        move MOVE_PSYCHIC
        move MOVE_FOCUS_BLAST
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 0
        level 53
        pokemon SPECIES_WOBBUFFET
        item ITEM_NONE
        move MOVE_COUNTER
        move MOVE_MIRROR_COAT
        move MOVE_DESTINY_BOND
        move MOVE_ENCORE
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 53
        pokemon SPECIES_GALLADE
        item ITEM_SITRUS_BERRY
        move MOVE_CLOSE_COMBAT
        move MOVE_PSYCHO_CUT
        move MOVE_NIGHT_SLASH
        move MOVE_STONE_EDGE
        ballseal 0
    endparty

trainerdata 726, "Blaine"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_11
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 726
        // mon 0
        ivs 200
        abilityslot 0
        level 54
        pokemon SPECIES_TORKOAL
        item ITEM_NONE
        move MOVE_SUNNY_DAY
        move MOVE_YAWN
        move MOVE_BODY_SLAM
        move MOVE_OVERHEAT
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 57
        pokemon SPECIES_CAMERUPT
        item ITEM_NONE
        move MOVE_EARTHQUAKE
        move MOVE_ERUPTION
        move MOVE_SOLAR_BEAM
        move MOVE_SUNNY_DAY
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 32
        level 60
        pokemon SPECIES_RAPIDASH
        item ITEM_NONE
        move MOVE_MEGAHORN
        move MOVE_QUICK_ATTACK
        move MOVE_OVERHEAT
        move MOVE_FLARE_BLITZ
        ballseal 0

        // mon 3
        ivs 200
        abilityslot 0
        level 58
        pokemon SPECIES_MAGCARGO
        item ITEM_NONE
        move MOVE_CURSE
        move MOVE_GYRO_BALL
        move MOVE_OVERHEAT
        move MOVE_STONE_EDGE
        ballseal 0

        // mon 4
        ivs 200
        abilityslot 32
        level 54
        pokemon SPECIES_HOUNDOOM
        item ITEM_NONE
        move MOVE_SHADOW_BALL
        move MOVE_DARK_PULSE
        move MOVE_FLAMETHROWER
        move MOVE_SUCKER_PUNCH
        ballseal 0

        // mon 5
        ivs 200
        abilityslot 0
        level 62
        pokemon SPECIES_MAGMORTAR
        item ITEM_NONE
        move MOVE_THUNDERBOLT
        move MOVE_LOW_KICK
        move MOVE_FLAMETHROWER
        move MOVE_CONFUSE_RAY
        ballseal 0
    endparty

trainerdata 727, "Blue"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_12
    nummons 6
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 727
        // mon 0
        ivs 100
        abilityslot 0
        level 67
        pokemon SPECIES_EXEGGUTOR
        item ITEM_NONE
        move MOVE_LEAF_STORM
        move MOVE_PSYCHIC
        move MOVE_EXPLOSION
        move MOVE_TRICK_ROOM
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 32
        level 69
        pokemon SPECIES_MACHAMP
        item ITEM_IRON_BALL
        move MOVE_DYNAMIC_PUNCH
        move MOVE_STONE_EDGE
        move MOVE_FLING
        move MOVE_ATTRACT
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 32
        level 70
        pokemon SPECIES_RHYPERIOR
        item ITEM_NONE
        move MOVE_MEGAHORN
        move MOVE_STONE_EDGE
        move MOVE_THUNDER_FANG
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 3
        ivs 250
        abilityslot 0
        level 68
        pokemon SPECIES_ARCANINE
        item ITEM_NONE
        move MOVE_FLARE_BLITZ
        move MOVE_EXTREME_SPEED
        move MOVE_THUNDER_FANG
        move MOVE_CRUNCH
        ballseal 0

        // mon 4
        ivs 250
        abilityslot 0
        level 70
        pokemon SPECIES_TYRANITAR
        item ITEM_NONE
        move MOVE_LOW_KICK
        move MOVE_FIRE_FANG
        move MOVE_ROCK_SLIDE
        move MOVE_EARTHQUAKE
        ballseal 0

        // mon 5
        ivs 250
        abilityslot 0
        level 72
        pokemon SPECIES_PIDGEOT
        item ITEM_SITRUS_BERRY
        move MOVE_RETURN
        move MOVE_NONE
        move MOVE_AIR_SLASH
        move MOVE_STEEL_WING
        ballseal 0
    endparty

trainerdata 728, "Charlotte"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_BEAUTY
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 728
        // mon 0
        ivs 0
        abilityslot 0
        level 31
        pokemon SPECIES_BELLOSSOM
        move MOVE_QUIVER_DANCE
        move MOVE_MEGA_DRAIN
        move MOVE_SLEEP_POWDER
        move MOVE_MOONBLAST
        ballseal 1

        // mon 1
        ivs 0
        abilityslot 0
        level 30
        pokemon SPECIES_CHATOT
        move MOVE_ECHOED_VOICE
        move MOVE_AIR_SLASH
        move MOVE_ROOST
        move MOVE_TAUNT
        ballseal 1
    endparty

trainerdata 729, "Duff & Eda"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_YOUNG_COUPLE
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 729
        // mon 0
        ivs 0
        abilityslot 32
        level 22
        pokemon SPECIES_ONIX
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 22
        pokemon SPECIES_CLOYSTER
        ballseal 0
    endparty

trainerdata 730, "Thom & Kae"
    trainermontype TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_DOUBLE_TEAM
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype DOUBLE_BATTLE
    endentry

    party 730
        // mon 0
        ivs 50
        abilityslot 0
        level 25
        pokemon SPECIES_ELECTABUZZ
        move MOVE_THUNDERBOLT
        move MOVE_LIGHT_SCREEN
        move MOVE_SWIFT
        move MOVE_THUNDER_WAVE
        ballseal 0

        // mon 1
        ivs 50
        abilityslot 0
        level 25
        pokemon SPECIES_MAGMAR
        move MOVE_FLAMETHROWER
        move MOVE_CONFUSE_RAY
        move MOVE_FEINT_ATTACK
        move MOVE_PROTECT
        ballseal 0
    endparty

trainerdata 731, "Devin"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_HIKER
    nummons 3
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 731
        // mon 0
        ivs 0
        abilityslot 0
        level 19
        pokemon SPECIES_DUNSPARCE
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 0
        level 19
        pokemon SPECIES_DUNSPARCE
        ballseal 0

        // mon 2
        ivs 0
        abilityslot 0
        level 19
        pokemon SPECIES_DUNSPARCE
        ballseal 0
    endparty

trainerdata 732, "Grant"
    trainermontype TRAINER_DATA_TYPE_NOTHING
    trainerclass CLASS_CAMPER
    nummons 2
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 732
        // mon 0
        ivs 0
        abilityslot 0
        level 21
        pokemon SPECIES_SKIPLOOM
        ballseal 0

        // mon 1
        ivs 0
        abilityslot 32
        level 21
        pokemon SPECIES_MARILL
        ballseal 0
    endparty

trainerdata 733, "Lance"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_CHAMPION
    nummons 3
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 733
        // mon 0
        ivs 250
        abilityslot 0
        level 68
        pokemon SPECIES_GYARADOS
        item ITEM_NONE
        move MOVE_THUNDER_WAVE
        move MOVE_ICE_FANG
        move MOVE_WATERFALL
        move MOVE_DRAGON_DANCE
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 0
        level 68
        pokemon SPECIES_CHARIZARD
        item ITEM_NONE
        move MOVE_FLAMETHROWER
        move MOVE_AIR_SLASH
        move MOVE_DRAGON_CLAW
        move MOVE_HYPER_BEAM
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 0
        level 75
        pokemon SPECIES_DRAGONITE
        item ITEM_NONE
        move MOVE_FIRE_PUNCH
        move MOVE_SAFEGUARD
        move MOVE_DRACO_METEOR
        move MOVE_HYPER_BEAM
        ballseal 0
    endparty

trainerdata 734, "Clair"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_LEADER_4
    nummons 3
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 734
        // mon 0
        ivs 200
        abilityslot 0
        level 52
        pokemon SPECIES_DRAGONAIR
        item ITEM_NONE
        move MOVE_THUNDER_WAVE
        move MOVE_DRAGON_RUSH
        move MOVE_THUNDERBOLT
        move MOVE_FLAMETHROWER
        ballseal 0

        // mon 1
        ivs 200
        abilityslot 32
        level 56
        pokemon SPECIES_KINGDRA
        item ITEM_NONE
        move MOVE_YAWN
        move MOVE_HYDRO_PUMP
        move MOVE_ICE_BEAM
        move MOVE_DRAGON_BREATH
        ballseal 0

        // mon 2
        ivs 200
        abilityslot 0
        level 60
        pokemon SPECIES_DRAGONITE
        item ITEM_NONE
        move MOVE_THUNDER
        move MOVE_PROTECT
        move MOVE_DRAGON_BREATH
        move MOVE_HYPER_BEAM
        ballseal 0
    endparty

trainerdata 735, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_RIVAL
    nummons 3
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 735
        // mon 0
        ivs 250
        abilityslot 0
        level 60
        pokemon SPECIES_MEGANIUM
        item ITEM_NONE
        move MOVE_PETAL_DANCE
        move MOVE_BODY_SLAM
        move MOVE_LIGHT_SCREEN
        move MOVE_SYNTHESIS
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 0
        level 58
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_BITE
        move MOVE_CONFUSE_RAY
        move MOVE_AIR_CUTTER
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 0
        level 56
        pokemon SPECIES_GENGAR
        item ITEM_NONE
        move MOVE_DARK_PULSE
        move MOVE_SLUDGE_BOMB
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        ballseal 0
    endparty

trainerdata 736, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_RIVAL
    nummons 3
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 736
        // mon 0
        ivs 250
        abilityslot 0
        level 60
        pokemon SPECIES_TYPHLOSION
        item ITEM_NONE
        move MOVE_ROLLOUT
        move MOVE_FLAMETHROWER
        move MOVE_WILL_O_WISP
        move MOVE_SWIFT
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 0
        level 58
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_BITE
        move MOVE_CONFUSE_RAY
        move MOVE_AIR_CUTTER
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 0
        level 56
        pokemon SPECIES_GENGAR
        item ITEM_NONE
        move MOVE_DARK_PULSE
        move MOVE_SLUDGE_BOMB
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        ballseal 0
    endparty

trainerdata 737, "Silver"
    trainermontype TRAINER_DATA_TYPE_ITEMS | TRAINER_DATA_TYPE_MOVES
    trainerclass CLASS_RIVAL
    nummons 3
    item ITEM_FULL_RESTORE
    item ITEM_FULL_RESTORE
    item ITEM_NONE
    item ITEM_NONE
    aiflags F_PRIORITIZE_SUPER_EFFECTIVE | F_EVALUATE_ATTACKS | F_EXPERT_ATTACKS | 0
    battletype SINGLE_BATTLE
    endentry

    party 737
        // mon 0
        ivs 250
        abilityslot 0
        level 60
        pokemon SPECIES_FERALIGATR
        item ITEM_NONE
        move MOVE_CRUNCH
        move MOVE_AQUA_TAIL
        move MOVE_SLASH
        move MOVE_ICE_FANG
        ballseal 0

        // mon 1
        ivs 250
        abilityslot 0
        level 58
        pokemon SPECIES_CROBAT
        item ITEM_NONE
        move MOVE_TOXIC
        move MOVE_BITE
        move MOVE_CONFUSE_RAY
        move MOVE_AIR_CUTTER
        ballseal 0

        // mon 2
        ivs 250
        abilityslot 0
        level 56
        pokemon SPECIES_GENGAR
        item ITEM_NONE
        move MOVE_DARK_PULSE
        move MOVE_SLUDGE_BOMB
        move MOVE_SHADOW_BALL
        move MOVE_CONFUSE_RAY
        ballseal 0
    endparty
