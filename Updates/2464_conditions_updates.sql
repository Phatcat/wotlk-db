-- Convert CONDITION_NO_AURA to CONDITION_AURA + FLAG_REVERSE_RESULT.
UPDATE `conditions` SET `type`=1, `flags`=1 WHERE `type`=11;

-- Convert CONDITION_NOITEM to CONDITION_ITEM + FLAG_REVERSE_RESULT.
UPDATE `conditions` SET `type`=2, `flags`=1 WHERE `type`=16;

-- Convert CONDITION_NOITEM_WITH_BANK to CONDITION_ITEM_WITH_BANK + FLAG_REVERSE_RESULT.
UPDATE `conditions` SET `type`=23, `flags`=1 WHERE `type`=24;

-- Convert CONDITION_NOT_ACTIVE_GAME_EVENT to CONDITION_ACTIVE_GAME_EVENT + FLAG_REVERSE_RESULT.
UPDATE `conditions` SET `type`=12, `flags`=1 WHERE `type`=25;

-- Convert CONDITION_NOT_ACTIVE_HOLIDAY to CONDITION_ACTIVE_HOLIDAY + FLAG_REVERSE_RESULT.
UPDATE `conditions` SET `type`=26, `flags`=1 WHERE `type`=27;

-- Convert CONDITION_SOURCE_AURA to CONDITION_AURA + FLAG_SWAP_TARGETS
UPDATE `conditions` SET `type`=1, `flags`=2 WHERE `type`=32;

-- Convert CONDITION_GENDER_NPC to CONDITION_GENDER + FLAG_SWAP_TARGETS
UPDATE `conditions` SET `type`=35, `flags`=2 WHERE `type`=41;
   