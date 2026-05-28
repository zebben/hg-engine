#include "../include/randomizer.h"

#include "../include/battle.h"
#include "../include/config.h"
#include "../include/constants/file.h"
#include "../include/constants/item.h"
#include "../include/constants/species.h"
#include "../include/message.h"
#include "../include/pokemon.h"
#include "../include/sprite.h"
#include "../include/types.h"

extern u32 sStarterSpecies[3];

#define STARTER_CHOICE_MSG_BANK          190
#define STARTER_CHOICE_DYNAMIC_MSG_FIRST 1
#define STARTER_CHOICE_DYNAMIC_MSG_LAST  6

static u16 sStarterChoiceSpecies[3] = {
    SPECIES_CHIKORITA,
    SPECIES_CYNDAQUIL,
    SPECIES_TOTODILE,
};

#ifdef MEGA_EVOLUTIONS
// TODO include mega.c to access sMegaTable directly if we can later

struct MegaStruct {
    u16 monindex;
    u16 itemindex : 11;
    u16 form : 5;
};

const struct MegaStruct sMegaTable[] = {
    {
        .monindex = SPECIES_VENUSAUR,
        .itemindex = ITEM_VENUSAURITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_CHARIZARD,
        .itemindex = ITEM_CHARIZARDITE_X,
        .form = 1,
    }, // x
    {
        .monindex = SPECIES_CHARIZARD,
        .itemindex = ITEM_CHARIZARDITE_Y,
        .form = 2,
    }, // y
    {
        .monindex = SPECIES_BLASTOISE,
        .itemindex = ITEM_BLASTOISINITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_BEEDRILL,
        .itemindex = ITEM_BEEDRILLITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_PIDGEOT,
        .itemindex = ITEM_PIDGEOTITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_ALAKAZAM,
        .itemindex = ITEM_ALAKAZITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SLOWBRO,
        .itemindex = ITEM_SLOWBRONITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GENGAR,
        .itemindex = ITEM_GENGARITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_KANGASKHAN,
        .itemindex = ITEM_KANGASKHANITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_PINSIR,
        .itemindex = ITEM_PINSIRITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GYARADOS,
        .itemindex = ITEM_GYARADOSITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_AERODACTYL,
        .itemindex = ITEM_AERODACTYLITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_MEWTWO,
        .itemindex = ITEM_MEWTWONITE_X,
        .form = 1,
    }, // x
    {
        .monindex = SPECIES_MEWTWO,
        .itemindex = ITEM_MEWTWONITE_Y,
        .form = 2,
    }, // y
    {
        .monindex = SPECIES_AMPHAROS,
        .itemindex = ITEM_AMPHAROSITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_STEELIX,
        .itemindex = ITEM_STEELIXITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SCIZOR,
        .itemindex = ITEM_SCIZORITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_HERACROSS,
        .itemindex = ITEM_HERACRONITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_HOUNDOOM,
        .itemindex = ITEM_HOUNDOOMINITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_TYRANITAR,
        .itemindex = ITEM_TYRANITARITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SCEPTILE,
        .itemindex = ITEM_SCEPTILITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_BLAZIKEN,
        .itemindex = ITEM_BLAZIKENITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SWAMPERT,
        .itemindex = ITEM_SWAMPERTITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GARDEVOIR,
        .itemindex = ITEM_GARDEVOIRITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SABLEYE,
        .itemindex = ITEM_SABLENITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_MAWILE,
        .itemindex = ITEM_MAWILITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_AGGRON,
        .itemindex = ITEM_AGGRONITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_MEDICHAM,
        .itemindex = ITEM_MEDICHAMITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_MANECTRIC,
        .itemindex = ITEM_MANECTITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SHARPEDO,
        .itemindex = ITEM_SHARPEDONITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_CAMERUPT,
        .itemindex = ITEM_CAMERUPTITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_ALTARIA,
        .itemindex = ITEM_ALTARIANITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_BANETTE,
        .itemindex = ITEM_BANETTITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_ABSOL,
        .itemindex = ITEM_ABSOLITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GLALIE,
        .itemindex = ITEM_GLALITITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_SALAMENCE,
        .itemindex = ITEM_SALAMENCITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_METAGROSS,
        .itemindex = ITEM_METAGROSSITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_LATIAS,
        .itemindex = ITEM_LATIASITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_LATIOS,
        .itemindex = ITEM_LATIOSITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_LOPUNNY,
        .itemindex = ITEM_LOPUNNITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GARCHOMP,
        .itemindex = ITEM_GARCHOMPITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_LUCARIO,
        .itemindex = ITEM_LUCARIONITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_ABOMASNOW,
        .itemindex = ITEM_ABOMASITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_GALLADE,
        .itemindex = ITEM_GALLADITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_AUDINO,
        .itemindex = ITEM_AUDINITE,
        .form = 1,
    },
    {
        .monindex = SPECIES_DIANCIE,
        .itemindex = ITEM_DIANCITE,
        .form = 1,
    },
};

#endif

#ifdef RANDOMIZER_BLOCK_INCOMPLETE_SPRITES
struct RandomizerSpeciesRange {
    u16 start;
    u16 end;
};

static const struct RandomizerSpeciesRange sRandomizerIncompleteSpriteRanges[] = {
    { SPECIES_AEGISLASH, SPECIES_SPRITZEE },
    { SPECIES_SWIRLIX, SPECIES_SWIRLIX },
    { SPECIES_BINACLE, SPECIES_BARBARACLE },
    { SPECIES_TYRUNT, SPECIES_TYRUNT },
    { SPECIES_PUMPKABOO, SPECIES_PUMPKABOO },
    { SPECIES_BERGMITE, SPECIES_AVALUGG },
    { SPECIES_YVELTAL, SPECIES_YVELTAL },
    { SPECIES_HOOPA, SPECIES_VOLCANION },
    { SPECIES_LITTEN, SPECIES_CRABOMINABLE },
    { SPECIES_CUTIEFLY, SPECIES_RIBOMBEE },
    { SPECIES_TOXAPEX, SPECIES_ARAQUANID },
    { SPECIES_MORELULL, SPECIES_SALANDIT },
    { SPECIES_STUFFUL, SPECIES_BEWEAR },
    { SPECIES_COMFEY, SPECIES_COMFEY },
    { SPECIES_WIMPOD, SPECIES_WIMPOD },
    { SPECIES_SANDYGAST, SPECIES_PYUKUMUKU },
    { SPECIES_SILVALLY, SPECIES_SILVALLY },
    { SPECIES_TOGEDEMARU, SPECIES_MIMIKYU },
    { SPECIES_DHELMISE, SPECIES_KOMMO_O },
    { SPECIES_COSMOG, SPECIES_COSMOEM },
    { SPECIES_NIHILEGO, SPECIES_NIHILEGO },
    { SPECIES_PHEROMOSA, SPECIES_CELESTEELA },
    { SPECIES_GUZZLORD, SPECIES_NECROZMA },
    { SPECIES_POIPOLE, SPECIES_BLACEPHALON },
    { SPECIES_MELTAN, SPECIES_RABOOT },
    { SPECIES_SOBBLE, SPECIES_CORVISQUIRE },
    { SPECIES_BLIPBUG, SPECIES_ORBEETLE },
    { SPECIES_GOSSIFLEUR, SPECIES_ELDEGOSS },
    { SPECIES_DUBWOOL, SPECIES_DUBWOOL },
    { SPECIES_DREDNAW, SPECIES_DREDNAW },
    { SPECIES_ROLYCOLY, SPECIES_COALOSSAL },
    { SPECIES_SILICOBRA, SPECIES_SANDACONDA },
    { SPECIES_TOXTRICITY, SPECIES_CENTISKORCH },
    { SPECIES_GRAPPLOCT, SPECIES_POLTEAGEIST },
    { SPECIES_IMPIDIMP, SPECIES_GRIMMSNARL },
    { SPECIES_CURSOLA, SPECIES_SIRFETCHD },
    { SPECIES_FALINKS, SPECIES_FALINKS },
    { SPECIES_FROSMOTH, SPECIES_STONJOURNER },
    { SPECIES_COPPERAJAH, SPECIES_COPPERAJAH },
    { SPECIES_ARCTOZOLT, SPECIES_ARCTOZOLT },
    { SPECIES_ARCTOVISH, SPECIES_ARCTOVISH },
    { SPECIES_DREEPY, SPECIES_URSHIFU },
    { SPECIES_OVERQWIL, SPECIES_OVERQWIL },
    { SPECIES_FLORAGATO, SPECIES_FLORAGATO },
    { SPECIES_TAROUNTULA, SPECIES_SPIDOPS },
    { SPECIES_PAWMI, SPECIES_PAWMOT },
    { SPECIES_DOLLIV, SPECIES_DOLLIV },
    { SPECIES_NACLSTACK, SPECIES_NACLSTACK },
    { SPECIES_CHARCADET, SPECIES_CERULEDGE },
    { SPECIES_BELLIBOLT, SPECIES_MABOSSTIFF },
    { SPECIES_GRAFAIAI, SPECIES_BRAMBLEGHAST },
    { SPECIES_SCOVILLAIN, SPECIES_SCOVILLAIN },
    { SPECIES_WIGLETT, SPECIES_WUGTRIO },
    { SPECIES_VAROOM, SPECIES_CYCLIZAR },
    { SPECIES_GLIMMET, SPECIES_GLIMMET },
    { SPECIES_CETODDLE, SPECIES_VELUZA },
    { SPECIES_TATSUGIRI, SPECIES_TATSUGIRI },
    { SPECIES_FARIGIRAF, SPECIES_DUDUNSPARCE },
    { SPECIES_GREAT_TUSK, SPECIES_BRUTE_BONNET },
    { SPECIES_SLITHER_WING, SPECIES_IRON_MOTH },
    { SPECIES_FRIGIBAX, SPECIES_BAXCALIBUR },
    { SPECIES_WO_CHIEN, SPECIES_CHI_YU },
    { SPECIES_IRON_VALIANT, SPECIES_IRON_LEAVES },
    { SPECIES_POLTCHAGEIST, SPECIES_ARCHALUDON },
    { SPECIES_GOUGING_FIRE, SPECIES_TERAPAGOS },
    { SPECIES_MEGA_VENUSAUR, SPECIES_MEGA_AMPHAROS },
    { SPECIES_MEGA_SCIZOR, SPECIES_MEGA_SCIZOR },
    { SPECIES_MEGA_HOUNDOOM, SPECIES_MEGA_MANECTRIC },
    { SPECIES_MEGA_CAMERUPT, SPECIES_KYOGRE_PRIMAL },
    { SPECIES_RATICATE_ALOLAN, SPECIES_VULPIX_ALOLAN },
    { SPECIES_DIGLETT_ALOLAN, SPECIES_DIGLETT_ALOLAN },
    { SPECIES_PERSIAN_ALOLAN, SPECIES_PERSIAN_ALOLAN },
    { SPECIES_EXEGGUTOR_ALOLAN, SPECIES_MAROWAK_ALOLAN },
    { SPECIES_MEOWTH_GALARIAN, SPECIES_MEOWTH_GALARIAN },
    { SPECIES_SLOWBRO_GALARIAN, SPECIES_MOLTRES_GALARIAN },
    { SPECIES_CORSOLA_GALARIAN, SPECIES_PIKACHU_COSPLAY },
    { SPECIES_PIKACHU_ORIGINAL_CAP, SPECIES_CASTFORM_SNOWY },
    { SPECIES_DIALGA_ORIGIN, SPECIES_PALKIA_ORIGIN },
    { SPECIES_DARMANITAN_ZEN_MODE, SPECIES_DARMANITAN_ZEN_MODE_GALARIAN },
    { SPECIES_LANDORUS_THERIAN, SPECIES_GENESECT_CHILL_DRIVE },
    { SPECIES_GRENINJA_ASH, SPECIES_GRENINJA_ASH },
    { SPECIES_ZYGARDE_10, SPECIES_ROCKRUFF_OWN_TEMPO },
    { SPECIES_MINIOR_CORE_RED, SPECIES_MAGEARNA_ORIGINAL },
    { SPECIES_CRAMORANT_GULPING, SPECIES_CRAMORANT_GORGING },
    { SPECIES_SINISTEA_ANTIQUE, SPECIES_POLTEAGEIST_ANTIQUE },
    { SPECIES_ALCREMIE_FILLER_1, SPECIES_ALCREMIE_FILLER_2 },
    { SPECIES_ZACIAN_CROWNED, SPECIES_CALYREX_SHADOW_RIDER },
    { SPECIES_GROWLITHE_HISUIAN, SPECIES_GROWLITHE_HISUIAN },
    { SPECIES_TYPHLOSION_HISUIAN, SPECIES_QWILFISH_HISUIAN },
    { SPECIES_SAMUROTT_HISUIAN, SPECIES_SAMUROTT_HISUIAN },
    { SPECIES_AVALUGG_HISUIAN, SPECIES_DECIDUEYE_HISUIAN },
    { SPECIES_UNFEZANT_FEMALE, SPECIES_JELLICENT_FEMALE },
    { SPECIES_TATSUGIRI_DROOPY, SPECIES_REVAVROOM_CAPH },
    { SPECIES_POLTCHAGEIST_MASTERPIECE, SPECIES_OGERPON_CORNERSTONE_MASK },
    { SPECIES_URSALUNA_BLOODMOON, SPECIES_TERAPAGOS_STELLAR },
};
#endif

MessageFormat LONG_CALL *MessageFormat_New(int heapID);
void LONG_CALL BufferSpeciesName(MessageFormat *messageFormat, u32 idx, u16 species);
String LONG_CALL *ReadMsgData_ExpandPlaceholders(MessageFormat *messageFormat, MsgData *msgData, u32 msgno, int heapID);
void LONG_CALL MessageFormat_Delete(MessageFormat *messageFormat);

static u16 Randomizer_GetMegaStone(u16 species, u8 form)
{
#ifdef MEGA_EVOLUTIONS
    for (u32 i = 0; i < NELEMS(sMegaTable); i++) {
        if (sMegaTable[i].monindex == species && sMegaTable[i].form == form) {
            return sMegaTable[i].itemindex;
        }
    }
#endif
    return ITEM_NONE;
}

static BOOL Randomizer_IsMegaAdjustedSpecies(u16 adjusted_species)
{
    return adjusted_species >= SPECIES_MEGA_START && adjusted_species <= MAX_MEGA_NUM;
}

static BOOL Randomizer_HasIncompleteSprites(u16 species)
{
#ifdef RANDOMIZER_BLOCK_INCOMPLETE_SPRITES
    for (u32 i = 0; i < NELEMS(sRandomizerIncompleteSpriteRanges); i++) {
        if (species >= sRandomizerIncompleteSpriteRanges[i].start && species <= sRandomizerIncompleteSpriteRanges[i].end) {
            return TRUE;
        }
    }
#endif
    return FALSE;
}

static u8 Randomizer_GetRandomForm(u16 base_species, u32 seed, BOOL allow_trainer_megas)
{
    u16 form_table[32];
    u8 valid_forms[32];
    u8 valid_form_count = 0;

    valid_forms[valid_form_count++] = 0;

    ArchiveDataLoadOfs(form_table, ARC_CODE_ADDONS, CODE_ADDON_FORM_DATA, sizeof(u16) * (base_species * 32), sizeof(u16) * 32);

    for (u8 i = 0; i < 32; i++) {

        if (form_table[i] == 0) {
            break;
        }
        u16 adjusted_species = form_table[i] & ~NEEDS_REVERSION;
        if (Randomizer_HasIncompleteSprites(adjusted_species)) {
            continue;
        }
        if (form_table[i] & NEEDS_REVERSION) {
#ifdef RANDOMIZER_BLOCK_MEGAS_IN_TRAINERS
            if (allow_trainer_megas) {
                continue;
            }
#endif
            if (!allow_trainer_megas || !Randomizer_IsMegaAdjustedSpecies(adjusted_species) || Randomizer_GetMegaStone(base_species, i + 1) == ITEM_NONE) {
                continue;
            }
        }
        valid_forms[valid_form_count++] = i + 1;
    }

    if (valid_form_count <= 1) {
        return 0;
    }

    u32 saved_seed = gf_get_seed();
    gf_srand(seed);
    u8 selectedIndex = gf_rand() % valid_form_count;
    gf_srand(saved_seed);

    return valid_forms[selectedIndex];
}

static u16 Randomizer_GetBSTToleranceForLevel(u16 level)
{
    if (level <= RANDOMIZER_TIER1_MAX_LEVEL) {
        return RANDOMIZER_TIER1_BST_TOLERANCE;
    } else if (level <= RANDOMIZER_TIER2_MAX_LEVEL) {
        return RANDOMIZER_TIER2_BST_TOLERANCE;
    } else if (level <= RANDOMIZER_TIER3_MAX_LEVEL) {
        return RANDOMIZER_TIER3_BST_TOLERANCE;
    } else {
        return RANDOMIZER_TIER4_BST_TOLERANCE;
    }
}

#ifdef RANDOMIZER_TYPE_MATCHING
static BOOL Randomizer_TypesHaveAffinity(u8 type1, u8 type2)
{
    // Fairy ↔ Normal, Fairy ↔ Psychic
    if ((type1 == TYPE_FAIRY && (type2 == TYPE_NORMAL || type2 == TYPE_PSYCHIC)) || (type2 == TYPE_FAIRY && (type1 == TYPE_NORMAL || type1 == TYPE_PSYCHIC))) {
        return TRUE;
    }
    // Fire ↔ Ground, Fire ↔ Rock
    if ((type1 == TYPE_FIRE && (type2 == TYPE_GROUND || type2 == TYPE_ROCK)) || (type2 == TYPE_FIRE && (type1 == TYPE_GROUND || type1 == TYPE_ROCK))) {
        return TRUE;
    }
    // Electric ↔ Flying
    if ((type1 == TYPE_ELECTRIC && type2 == TYPE_FLYING) || (type2 == TYPE_ELECTRIC && type1 == TYPE_FLYING)) {
        return TRUE;
    }
    // Ice ↔ Water
    if ((type1 == TYPE_ICE && type2 == TYPE_WATER) || (type2 == TYPE_ICE && type1 == TYPE_WATER)) {
        return TRUE;
    }

    return FALSE;
}

static BOOL Randomizer_IsTypeCompatible(u16 original_species, u16 candidate_species, u16 *types_table)
{
    // Types table is packed as (type2 << 8) | type1
    u16 orig_packed = types_table[original_species];
    u16 cand_packed = types_table[candidate_species];

    u8 orig_type1 = orig_packed & 0xFF;
    u8 orig_type2 = (orig_packed >> 8) & 0xFF;
    u8 cand_type1 = cand_packed & 0xFF;
    u8 cand_type2 = (cand_packed >> 8) & 0xFF;

    if (orig_type1 == cand_type1 || orig_type1 == cand_type2 || orig_type2 == cand_type1 || orig_type2 == cand_type2) {
        return TRUE;
    }

    return Randomizer_TypesHaveAffinity(orig_type1, cand_type1) || Randomizer_TypesHaveAffinity(orig_type1, cand_type2) || Randomizer_TypesHaveAffinity(orig_type2, cand_type1) || Randomizer_TypesHaveAffinity(orig_type2, cand_type2);
}
#endif

static BOOL Randomizer_ShouldBanSpecies(u16 species, BOOL is_wild)
{
    if (species == SPECIES_NONE || species == SPECIES_EGG || species == SPECIES_BAD_EGG) {
        return TRUE;
    }
    if (Randomizer_HasIncompleteSprites(species)) {
        return TRUE;
    }

    BOOL is_legendary = IS_SPECIES_LEGENDARY(species);
    BOOL is_mythical = IS_SPECIES_MYTHICAL(species);
    BOOL is_sublegend = IS_SPECIES_SUBLEGEND(species);
    BOOL is_mega = (species >= SPECIES_MEGA_START && species <= MAX_MEGA_NUM);

    if (is_wild) {
#ifdef RANDOMIZER_BLOCK_LEGENDARIES_IN_WILD
        if (is_legendary) {
            return TRUE;
        }
#endif

#ifdef RANDOMIZER_BLOCK_MYTHICALS_IN_WILD
        if (is_mythical) {
            return TRUE;
        }
#endif

#ifdef RANDOMIZER_BLOCK_SUBLEGENDS_IN_WILD
        if (is_sublegend) {
            return TRUE;
        }
#endif
        if (is_mega) {
            return TRUE;
        }
    } else {
        // Trainer
#ifdef RANDOMIZER_BLOCK_LEGENDARIES_IN_TRAINERS
        if (is_legendary) {
            return TRUE;
        }
#endif

#ifdef RANDOMIZER_BLOCK_MYTHICALS_IN_TRAINERS
        if (is_mythical) {
            return TRUE;
        }
#endif

#ifdef RANDOMIZER_BLOCK_SUBLEGENDS_IN_TRAINERS
        if (is_sublegend) {
            return TRUE;
        }
#endif
#ifdef RANDOMIZER_BLOCK_MEGAS_IN_TRAINERS
        if (is_mega) {
            return TRUE;
        }
#endif
    }

    return FALSE;
}

static u16 Randomizer_BuildSpeciesPool(u16 original_species, u16 level, BOOL is_wild, u16 *pool_out, u16 max_pool_size)
{
    u16 pool_count = 0;
    u16 species;
    u16 original_bst;
    u16 species_bst;
    u16 min_bst;
    u16 max_bst;
    u16 base_original;
    BOOL use_bst_matching;

    if (original_species == SPECIES_NONE || original_species == SPECIES_BAD_EGG || original_species == SPECIES_EGG || original_species > MAX_SPECIES_INCLUDING_FORMS) {
        return 0;
    }

    if (original_species > MAX_MON_NUM) {
        base_original = GetBaseSpeciesFromAdjustedForm(original_species);
    } else {
        base_original = original_species;
    }

    u16 bst_table[MAX_MON_NUM + 1];
    ArchiveDataLoadOfs(bst_table, ARC_CODE_ADDONS, CODE_ADDON_SPECIES_BST, 0, sizeof(u16) * (MAX_MON_NUM + 1));

#ifdef RANDOMIZER_TYPE_MATCHING
    u16 types_table[MAX_MON_NUM + 1];
    ArchiveDataLoadOfs(types_table, ARC_CODE_ADDONS, CODE_ADDON_SPECIES_TYPES, 0, sizeof(u16) * (MAX_MON_NUM + 1));
#endif

    original_bst = bst_table[base_original];

    use_bst_matching = TRUE;
    min_bst = (original_bst * (100 - RANDOMIZER_TIER1_BST_TOLERANCE)) / 100;
    max_bst = (original_bst * (100 + Randomizer_GetBSTToleranceForLevel(level))) / 100;

    for (species = 1; species <= MAX_MON_NUM && pool_count < max_pool_size; species++) {
        if (Randomizer_ShouldBanSpecies(species, is_wild)) {
            continue;
        }

        if (use_bst_matching) {
            species_bst = bst_table[species];
            if (species_bst < min_bst || species_bst > max_bst) {
                continue;
            }
        }

#ifdef RANDOMIZER_TYPE_MATCHING
        if (!Randomizer_IsTypeCompatible(base_original, species, types_table)) {
            continue;
        }
#endif

        pool_out[pool_count++] = species;
    }

    if (pool_count < RANDOMIZER_MIN_POOL_SIZE) {
        pool_count = 0;
        for (species = 1; species <= MAX_MON_NUM && pool_count < max_pool_size; species++) {
            if (Randomizer_ShouldBanSpecies(species, is_wild)) {
                continue;
            }

#ifdef RANDOMIZER_TYPE_MATCHING
            if (!Randomizer_IsTypeCompatible(base_original, species, types_table)) {
                continue;
            }
#endif

            pool_out[pool_count++] = species;
        }
    }

    if (pool_count < RANDOMIZER_MIN_POOL_SIZE) {
        pool_count = 0;
        for (species = 1; species <= MAX_MON_NUM && pool_count < max_pool_size; species++) {
            if (Randomizer_ShouldBanSpecies(species, is_wild)) {
                continue;
            }

            pool_out[pool_count++] = species;
        }
    }

    if (pool_count == 0) {
        pool_out[0] = base_original;
        pool_count = 1;
    }

    return pool_count;
}

static u16 Randomizer_SelectFromPool(u16 *pool, u16 pool_size, u32 seed)
{
    if (pool_size == 0) {
        return SPECIES_BULBASAUR;
    }

    if (pool_size == 1) {
        return pool[0];
    }

    // save current random seed to avoid affecting other stuff
    u32 saved_seed = gf_get_seed();

    gf_srand(seed);
    u16 random_index = gf_rand() % pool_size;
    u16 selected_species = pool[random_index];

    // restore previous random seed
    gf_srand(saved_seed);

    return selected_species;
}

u16 LONG_CALL Randomizer_GetRandomTrainerSpecies(u16 original_species, u16 level, u32 trainer, u8 *form_out, u16 *item_out)
{
#if !defined(RANDOMIZER_ENABLED) || !defined(RANDOMIZE_TRAINERS)
    *item_out = ITEM_NONE;
    return original_species;
#else
    u16 pool[MAX_MON_NUM];
    u16 size = Randomizer_BuildSpeciesPool(original_species, level, FALSE, pool, MAX_MON_NUM);
    u32 seed = (u32)original_species + (u32)level + trainer;

    u16 base_species = Randomizer_SelectFromPool(pool, size, seed);
    u8 form = Randomizer_GetRandomForm(base_species, seed ^ 0xF0F0F0F0, TRUE);

    u16 mega_stone = Randomizer_GetMegaStone(base_species, form);
    if (mega_stone != ITEM_NONE) {
        *item_out = mega_stone;
        *form_out = 0;
    } else {
        *item_out = ITEM_NONE;
        *form_out = form;
    }

    return base_species;
#endif
}

u16 LONG_CALL Randomizer_GetRandomWildSpecies(struct PartyPokemon *party_pokemon, u8 *form_out)
{
    u16 original = GetMonData(party_pokemon, MON_DATA_SPECIES, NULL);
#if !defined(RANDOMIZER_ENABLED) || !defined(RANDOMIZE_WILD)
    return original;
#else
    u16 level = GetMonData(party_pokemon, MON_DATA_LEVEL, NULL);
    u16 pool[MAX_MON_NUM];
    u16 size = Randomizer_BuildSpeciesPool(original, level, TRUE, pool, MAX_MON_NUM);
    u32 seed = (u32)original + (u32)level + GetMonData(party_pokemon, MON_DATA_PERSONALITY, NULL);

    u16 base_species = Randomizer_SelectFromPool(pool, size, seed);
    *form_out = Randomizer_GetRandomForm(base_species, seed ^ 0xF0F0F0F0, FALSE);

    return base_species;
#endif
}

void LONG_CALL Randomizer_RandomizeStarters(int *species)
{
    for (int i = 0; i < 3; i++) {
        u16 pool[MAX_MON_NUM];
        u16 size = Randomizer_BuildSpeciesPool(species[i], 5, FALSE, pool, 200);
        species[i] = Randomizer_SelectFromPool(pool, size, gf_rand());
        // forms[i] = Randomizer_GetRandomFormForSpecies(species[i], seed ^ 0xF0F0F0F0);
    }
}

void LONG_CALL Randomizer_SyncStarterCries(u8 *work)
{
    struct PartyPokemon **choices = (struct PartyPokemon **)(work + 0x578);
    u32 *sSpeciesCries = sStarterSpecies;

    for (int i = 0; i < 3; i++) {
        u16 species = GetMonData(choices[i], MON_DATA_SPECIES, NULL);

        if (species != SPECIES_NONE) {
            sSpeciesCries[i] = species;
            sStarterChoiceSpecies[i] = species;
        }
    }
}

// printMsgOnWinEx
u8 LONG_CALL StarterChoice_PrintMsgOnWinEx(void *window, u32 heapID, BOOL makeFrame, s32 msgBank, int msgno, u32 color, u32 speed, String **out)
{
    MsgData *msgData;
    MessageFormat *msgFmt = NULL;
    u8 ret;
    GF_ASSERT(*out == NULL);
    msgData = NewMsgDataFromNarc(MSGDATA_LOAD_DIRECT, ARC_MSG_DATA, msgBank, heapID);
    GF_ASSERT(msgData != NULL);

    // buffer species name into the starter choice menu messages
    if (msgBank == STARTER_CHOICE_MSG_BANK && msgno >= STARTER_CHOICE_DYNAMIC_MSG_FIRST && msgno <= STARTER_CHOICE_DYNAMIC_MSG_LAST) {
        u32 slot = (u32)(msgno - STARTER_CHOICE_DYNAMIC_MSG_FIRST) % 3;

        if (sStarterChoiceSpecies[slot] != SPECIES_NONE) {
            msgFmt = MessageFormat_New(heapID);

            if (msgFmt != NULL) {
                BufferSpeciesName(msgFmt, 0, sStarterChoiceSpecies[slot]);
                *out = ReadMsgData_ExpandPlaceholders(msgFmt, msgData, msgno, heapID);
                MessageFormat_Delete(msgFmt);
            }
        }
    }

    if (*out == NULL) {
        *out = NewString_ReadMsgData(msgData, msgno);
    }

    FillWindowPixelBuffer(window, color);
    ret = AddTextPrinterParameterizedWithColor(window, 1, *out, 0, 0, speed, color, NULL);
    if (makeFrame) {
        DrawFrameAndWindow2(window, FALSE, 0x200, 0);
    } else {
        CopyWindowToVram(window);
    }
    DestroyMsgData(msgData);
    return ret;
}
