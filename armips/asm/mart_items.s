.nds
.thumb

.open "base/arm9.bin", 0x02000000

/* Cherrygrove City */
.org 0x020FBA54
.halfword ITEM_AIR_MAIL
.halfword ITEM_HEAL_BALL
.halfword 0xFFFF

/* Cerulean City */
.org 0x020FBA5A
.halfword ITEM_AIR_MAIL
.halfword ITEM_QUICK_BALL
.halfword 0xFFFF

/* Ecruteak City */
.org 0x020FBA60
.halfword ITEM_AIR_MAIL
.halfword ITEM_HEAL_BALL
.halfword ITEM_NET_BALL
.halfword 0xFFFF

/* Celadon Department Store Mall */
.org 0x020FBA68
.halfword ITEM_AIR_MAIL
.halfword ITEM_TUNNEL_MAIL
.halfword ITEM_BLOOM_MAIL
.halfword 0xFFFF

/* Saffron City */
.org 0x020FBA70
.halfword ITEM_AIR_MAIL
.halfword ITEM_TUNNEL_MAIL
.halfword ITEM_BLOOM_MAIL
.halfword 0xFFFF

/* Violet City */
.org 0x020FBA78
.halfword ITEM_TUNNEL_MAIL
.halfword ITEM_HEAL_BALL
.halfword ITEM_NET_BALL
.halfword 0xFFFF

/* Blackthorn City */
.org 0x020FBA80
.halfword ITEM_AIR_MAIL
.halfword ITEM_NET_BALL
.halfword ITEM_DUSK_BALL
.halfword 0xFFFF

/* Olivine City */
.org 0x020FBA88
.halfword ITEM_HEART_MAIL
.halfword ITEM_HEAL_BALL
.halfword ITEM_NET_BALL
.halfword 0xFFFF

/* Fuchsia City */
.org 0x020FBA90
.halfword ITEM_STEEL_MAIL
.halfword ITEM_DUSK_BALL
.halfword ITEM_QUICK_BALL
.halfword 0xFFFF

/* Lavender City */
.org 0x020FBA98
.halfword ITEM_SNOW_MAIL
.halfword ITEM_DUSK_BALL
.halfword ITEM_QUICK_BALL
.halfword 0xFFFF

/* Pewter City */
.org 0x020FBAA0
.halfword ITEM_STEEL_MAIL
.halfword ITEM_NEST_BALL
.halfword ITEM_QUICK_BALL
.halfword 0xFFFF

/* Viridian City */
.org 0x020FBAA8
.halfword ITEM_STEEL_MAIL
.halfword ITEM_NET_BALL
.halfword ITEM_HEAL_BALL
.halfword 0xFFFF

/* Azalea City */
.org 0x020FBAB0
.halfword ITEM_BLOOM_MAIL
.halfword ITEM_HEAL_BALL
.halfword ITEM_NET_BALL
.halfword 0xFFFF

/* Mahogany City (Pre Rocket Hideout) */
.org 0x020FBAB8
.halfword ITEM_TINYMUSHROOM
.halfword ITEM_POKE_BALL
.halfword ITEM_POTION
.halfword 0xFFFF

/* Safari Zone Gate */
.org 0x020FBAC0
.halfword ITEM_AIR_MAIL
.halfword ITEM_NEST_BALL
.halfword ITEM_DUSK_BALL
.halfword ITEM_QUICK_BALL
.halfword 0xFFFF

/* Goldenrod City Herb Shop */
.org 0x020FBACA
.halfword ITEM_HEAL_POWDER
.halfword ITEM_ENERGYPOWDER
.halfword ITEM_ENERGY_ROOT
.halfword ITEM_REVIVAL_HERB
.halfword 0xFFFF

/* Cianwood City Pharmacy */
.org 0x020FBAD4
.halfword ITEM_POTION
.halfword ITEM_SUPER_POTION
.halfword ITEM_HYPER_POTION
.halfword ITEM_FULL_HEAL
.halfword ITEM_REVIVE
.halfword 0xFFFF

/* Goldenrod City Department Store - Vitamins */
.org 0x020FBAFA
.halfword ITEM_PROTEIN
.halfword ITEM_IRON
.halfword ITEM_CALCIUM
.halfword ITEM_ZINC
.halfword ITEM_CARBOS
.halfword ITEM_HP_UP
.halfword 0xFFFF

/* Celadon City Department Store - Vitamins */
.org 0x020FBB08
.halfword ITEM_PROTEIN
.halfword ITEM_IRON
.halfword ITEM_CALCIUM
.halfword ITEM_ZINC
.halfword ITEM_CARBOS
.halfword ITEM_HP_UP
.halfword 0xFFFF

/* Mt. Moon Square */
.org 0x020FBB16
.halfword ITEM_POKE_DOLL
.halfword ITEM_FRESH_WATER
.halfword ITEM_SODA_POP
.halfword ITEM_LEMONADE
.halfword ITEM_REPEL
.halfword ITEM_HEART_MAIL
.halfword 0xFFFF

/* Goldenrod City Department Store - X Items */
.org 0x020FBBB4
.halfword ITEM_X_SPEED
.halfword ITEM_X_ATTACK
.halfword ITEM_X_DEFENSE
.halfword ITEM_GUARD_SPEC
.halfword ITEM_DIRE_HIT
.halfword ITEM_X_ACCURACY
.halfword ITEM_X_SPECIAL
.halfword ITEM_X_SP__DEF
.halfword 0xFFFF

/* Celadon City Department Store - X Items */
.org 0x020FBBC6
.halfword ITEM_X_SPEED
.halfword ITEM_X_ATTACK
.halfword ITEM_X_DEFENSE
.halfword ITEM_GUARD_SPEC
.halfword ITEM_DIRE_HIT
.halfword ITEM_X_ACCURACY
.halfword ITEM_X_SPECIAL
.halfword ITEM_X_SP__DEF
.halfword 0xFFFF

/* Mahogany City (Post Rocked Hideout) */
.org 0x020FBBD8
.halfword ITEM_GREAT_BALL
.halfword ITEM_SUPER_POTION
.halfword ITEM_HYPER_POTION
.halfword ITEM_ANTIDOTE
.halfword ITEM_PARLYZ_HEAL
.halfword ITEM_SUPER_REPEL
.halfword ITEM_REVIVE
.halfword ITEM_AIR_MAIL
.halfword 0xFFFF

/* Goldenrod City Department Store - Healing Items */
.org 0x020FBBEA
.halfword ITEM_POTION
.halfword ITEM_SUPER_POTION
.halfword ITEM_HYPER_POTION
.halfword ITEM_MAX_POTION
.halfword ITEM_REVIVE
.halfword ITEM_ANTIDOTE
.halfword ITEM_PARLYZ_HEAL
.halfword ITEM_BURN_HEAL
.halfword ITEM_ICE_HEAL
.halfword ITEM_AWAKENING
.halfword ITEM_FULL_HEAL
.halfword 0xFFFF

/* Celadon City Department Store - Healing Items */
.org 0x020FBC02
.halfword ITEM_POTION
.halfword ITEM_SUPER_POTION
.halfword ITEM_HYPER_POTION
.halfword ITEM_MAX_POTION
.halfword ITEM_REVIVE
.halfword ITEM_ANTIDOTE
.halfword ITEM_PARLYZ_HEAL
.halfword ITEM_BURN_HEAL
.halfword ITEM_ICE_HEAL
.halfword ITEM_AWAKENING
.halfword ITEM_FULL_HEAL
.halfword 0xFFFF

/* Goldenrod City Department Store - Trainer's Market */
.org 0x020FBC1A
.halfword ITEM_POTION
.halfword ITEM_SUPER_POTION
.halfword ITEM_HYPER_POTION
.halfword ITEM_MAX_POTION
.halfword ITEM_REVIVE
.halfword ITEM_ANTIDOTE
.halfword ITEM_PARLYZ_HEAL
.halfword ITEM_BURN_HEAL
.halfword ITEM_ICE_HEAL
.halfword ITEM_AWAKENING
.halfword ITEM_FULL_HEAL
.halfword 0xFFFF

/* Goldenrod City Department Store - TM Corner */
.org 0x020FBC34
.halfword ITEM_TM70
.halfword ITEM_TM17
.halfword ITEM_TM54
.halfword ITEM_TM83
.halfword ITEM_TM16
.halfword ITEM_TM33
.halfword ITEM_TM22
.halfword ITEM_TM52
.halfword ITEM_TM38
.halfword ITEM_TM25
.halfword ITEM_TM14
.halfword ITEM_TM15
.halfword 0xFFFF

/* Celadon City Department Store - Trainer's Market */
.org 0x020FBC4E
.halfword ITEM_POTION
.halfword ITEM_SUPER_POTION
.halfword ITEM_HYPER_POTION
.halfword ITEM_MAX_POTION
.halfword ITEM_REVIVE
.halfword ITEM_ANTIDOTE
.halfword ITEM_PARLYZ_HEAL
.halfword ITEM_BURN_HEAL
.halfword ITEM_ICE_HEAL
.halfword ITEM_AWAKENING
.halfword ITEM_FULL_HEAL
.halfword 0xFFFF

/* Celadon City Department Store - TM Corner */
.org 0x020FBC68
.halfword ITEM_TM70
.halfword ITEM_TM17
.halfword ITEM_TM54
.halfword ITEM_TM83
.halfword ITEM_TM16
.halfword ITEM_TM33
.halfword ITEM_TM22
.halfword ITEM_TM52
.halfword ITEM_TM38
.halfword ITEM_TM25
.halfword ITEM_TM14
.halfword ITEM_TM15
.halfword 0xFFFF
.close

/* Badge Breakpoints */
ZERO_BADGES equ 1
ONE_BADGE equ 2
THREE_BADGES equ 3
FIVE_BADGES equ 4
SEVEN_BADGES equ 5
EIGHT_BADGES equ 6

/* General Marts - 2nd Clerk */
.org 0x020FBF22

.halfword ITEM_POKE_BALL
.halfword ZERO_BADGES

.halfword ITEM_GREAT_BALL
.halfword THREE_BADGES

.halfword ITEM_GREAT_BALL
.halfword FIVE_BADGES

.halfword ITEM_POTION
.halfword ZERO_BADGES

.halfword ITEM_SUPER_POTION
.halfword ONE_BADGE

.halfword ITEM_HYPER_POTION
.halfword FIVE_BADGES

.halfword ITEM_MAX_POTION
.halfword SEVEN_BADGES

.halfword ITEM_FULL_RESTORE
.halfword EIGHT_BADGES

.halfword ITEM_REVIVE
.halfword THREE_BADGES

.halfword ITEM_ANTIDOTE
.halfword ZERO_BADGES

.halfword ITEM_PARLYZ_HEAL
.halfword ZERO_BADGES

.halfword ITEM_AWAKENING
.halfword ONE_BADGE

.halfword ITEM_BURN_HEAL
.halfword ONE_BADGE

.halfword ITEM_ICE_HEAL
.halfword ONE_BADGE

.halfword ITEM_FULL_HEAL
.halfword FIVE_BADGES

.halfword ITEM_ESCAPE_ROPE
.halfword ONE_BADGE

.halfword ITEM_REPEL
.halfword ONE_BADGE

.halfword ITEM_SUPER_REPEL
.halfword THREE_BADGES

.halfword ITEM_MAX_REPEL
.halfword SEVEN_BADGES