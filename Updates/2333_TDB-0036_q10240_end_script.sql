-- Invis KV Defender 19842
UPDATE `creature_template` SET `UnitFlags`=33555200, `SpeedWalk`=(2.5/2.5) WHERE `Entry`=19842;
-- 34627 Nuke Mana Creature II

DELETE FROM `spell_script_target` WHERE `entry`=34627;
INSERT INTO `spell_script_target` (`entry`, `type`, `targetEntry`, `inverseEffectMask`) VALUES
(34627, 1, 20618, 0);

-- Invis KV Shield Generator 19870
UPDATE `creature_template` SET `UnitFlags`=33555200 WHERE `Entry`=19870;

-- Mana Invader 20618
UPDATE `creature_template` SET `UnitFlags`=33587968, `SpeedWalk`=(2.5/2.5), `MovementType`=2, `InhabitType`=7 WHERE `Entry`=20618;

-- Kirin'Var Ward 183955
UPDATE `gameobject_template` SET `flags`=32, `size`=4.7 WHERE `entry`=183955;

DELETE FROM `gameobject` WHERE `guid`=101391;
INSERT INTO `gameobject` (guid, id, `map`, spawnMask, position_x, position_y, position_z, orientation, rotation0, rotation1, rotation2, rotation3, spawntimesecsmin, spawntimesecsmax, animprogress, `state`) VALUES
(101391, 183955, 530, 1, 2173.88, 2302.671, 106.8105, 5.759588, 0, 0, -0.2588186, 0.9659259, -60, -60, 100, 1);

UPDATE `quest_template` SET `CompleteScript`=10240 WHERE `entry`=10240;
DELETE FROM `dbscripts_on_quest_end` WHERE `id`=10240;
INSERT INTO `dbscripts_on_quest_end` (`id`, `delay`, `priority`, `command`, `datalong`, `datalong2`, `datalong3`, `buddy_entry`, `search_radius`, `data_flags`, `dataint`, `dataint2`, `dataint3`, `dataint4`, `x`, `y`, `z`, `o`, `comments`) VALUES
-- 12:21:16.373 - SMSG_QUEST_GIVER_QUEST_COMPLETE QuestId: 10240
-- 12:21:17.014
(10240, 1000, 0, 10, 19842, 43000, 0, 0, 0, 0, 0, 0, 0, 0, 2314.31, 2208.68, 99.2333, 2.61799, 'Invis KV Defender'),
(10240, 1000, 0, 10, 19842, 43000, 0, 0, 0, 0, 0, 0, 0, 0, 2319.45, 2247.42, 100.931, 2.09439, 'Invis KV Defender'),
(10240, 1000, 0, 10, 19842, 43000, 0, 0, 0, 0, 0, 0, 0, 0, 2321.79, 2280.23, 102.159, 3.38594, 'Invis KV Defender'),
(10240, 1000, 0, 10, 19842, 43000, 0, 0, 0, 0, 0, 0, 0, 0, 2285.11, 2351.05, 113.36, 4.04916, 'Invis KV Defender'),
(10240, 1000, 0, 10, 19842, 43000, 0, 0, 0, 0, 0, 0, 0, 0, 2287.69, 2199.4, 94.2328, 3.90954, 'Invis KV Defender'),
(10240, 1000, 0, 10, 19842, 43000, 0, 0, 0, 0, 0, 0, 0, 0, 2289.06, 2316.21, 105.876, 1.98968, 'Invis KV Defender'),
-- Defender positions possibly randomized between executions of script
-- (10240, 1000, 0, 10, 19842, 43000, 0, 0, 0, 0, 0, 0, 0, 0, 2222.54, 2431.98, 113.049, 1.27409, 'Invis KV Defender'),
-- (10240, 1000, 0, 10, 19842, 43000, 0, 0, 0, 0, 0, 0, 0, 0, 2260.77, 2398.05, 117.975, 3.94444, 'Invis KV Defender'),
-- (10240, 1000, 0, 10, 19842, 43000, 0, 0, 0, 0, 0, 0, 0, 0, 2245.93, 2419.7, 117.839, 4.55531, 'Invis KV Defender'),
-- (10240, 1000, 0, 10, 19842, 43000, 0, 0, 0, 0, 0, 0, 0, 0, 2198.8, 2448.51, 110.547, 3.49066, 'Invis KV Defender'),
(10240, 1000, 0, 9, 101391, 60, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'respawn gameobject Kirin''Var Ward 183955'),
-- 12:21:17.436
(10240, 1500, 0, 10, 20618, 20000, 1, 0, 0, 0, 1, 0, 0, 0, 2349.556, 2276.039, 104.7442, 2.99193, 'Mana Invader'),
(10240, 1500, 0, 10, 20618, 20000, 2, 0, 0, 0, 1, 0, 0, 0, 2341.932, 2327.533, 106.0814, 2.99193, 'Mana Invader'),
(10240, 1500, 0, 10, 19842, 43000, 0, 0, 0, 0, 0, 0, 0, 0, 2275.86, 2371.76, 115.388, 0.610865, 'Invis KV Defender'),
-- 12:21:18.623
(10240, 2500, 0, 10, 20618, 20000, 3, 0, 0, 0, 1, 0, 0, 0, 2348.756, 2242.13, 100.2601, 2.99193, 'Mana Invader'),
-- 12:21:21.061
(10240, 5000, 0, 10, 20618, 20000, 4, 0, 0, 0, 1, 0, 0, 0, 2346.622, 2344.688, 113.5465, 2.99193, 'Mana Invader'),
-- 12:21:23.483
(10240, 7500, 0, 10, 20618, 20000, 5, 0, 0, 0, 1, 0, 0, 0, 2372.703, 2248.804, 120.5678, 2.99193, 'Mana Invader'),
(10240, 7500, 0, 10, 20618, 20000, 6, 0, 0, 0, 1, 0, 0, 0, 2346.931, 2366.628, 119.0465, 2.99193, 'Mana Invader'),
(10240, 7500, 0, 10, 20618, 20000, 7, 0, 0, 0, 1, 0, 0, 0, 2382.531, 2306.004, 119.7753, 2.99193, 'Mana Invader'),
(10240, 7500, 0, 10, 20618, 20000, 8, 0, 0, 0, 1, 0, 0, 0, 2381.858, 2271.859, 132.7906, 2.99193, 'Mana Invader'),
-- 12:21:24.701
(10240, 8500, 0, 10, 20618, 20000, 9, 0, 0, 0, 1, 0, 0, 0, 2377.704, 2210.01, 92.98299, 2.99193, 'Mana Invader'),
(10240, 8500, 0, 10, 20618, 20000, 10, 0, 0, 0, 1, 0, 0, 0, 2388.935, 2339.117, 109.0553, 2.99193, 'Mana Invader'),
-- 12:21:25.936
(10240, 9500, 0, 10, 20618, 20000, 11, 0, 0, 0, 1, 0, 0, 0, 2394.022, 2179.261, 87.07649, 2.99193, 'Mana Invader'),
(10240, 9500, 0, 10, 20618, 20000, 12, 0, 0, 0, 1, 0, 0, 0, 2392.072, 2295.18, 130.9156, 2.99193, 'Mana Invader'),
-- 12:21:27.154
(10240, 10500, 0, 10, 20618, 20000, 13, 0, 0, 0, 1, 0, 0, 0, 2379.913, 2366.843, 133.4303, 2.99193, 'Mana Invader'),
-- 12:21:29.561
(10240, 13000, 0, 10, 20618, 20000, 14, 0, 0, 0, 1, 0, 0, 0, 2394.534, 2377.391, 145.6293, 2.99193, 'Mana Invader'),
-- 12:21:36.873
(10240, 20000, 0, 10, 20618, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 2288.425, 2375.898, 107.9934, 3.458402, 'Mana Invader'), -- ? no movement
(10240, 20000, 0, 10, 20618, 20000, 15, 0, 0, 0, 1, 0, 0, 0, 2348.756, 2242.13, 100.2601, 2.99193, 'Mana Invader'),
(10240, 20000, 0, 10, 20618, 20000, 16, 0, 0, 0, 1, 0, 0, 0, 2349.556, 2276.039, 104.7442, 2.99193, 'Mana Invader'),
(10240, 20000, 0, 10, 20618, 20000, 2, 0, 0, 0, 1, 0, 0, 0, 2341.932, 2327.533, 106.0814, 2.99193, 'Mana Invader'), -- repeat
(10240, 20000, 0, 10, 20618, 20000, 4, 0, 0, 0, 1, 0, 0, 0, 2346.622, 2344.688, 113.5465, 2.99193, 'Mana Invader'), -- repeat
-- 12:21:38.076
(10240, 21000, 0, 10, 20618, 20000, 0, 0, 0, 0, 0, 0, 0, 0, 2286.954, 2380.31, 105.9464, 3.796812, 'Mana Invader'), -- ? no movement
-- 12:21:39.295
(10240, 22000, 0, 10, 20618, 20000, 5, 0, 0, 0, 1, 0, 0, 0, 2372.703, 2248.804, 120.5678, 2.99193, 'Mana Invader'), -- repeat
(10240, 22000, 0, 10, 20618, 20000, 6, 0, 0, 0, 1, 0, 0, 0, 2346.931, 2366.628, 119.0465, 2.99193, 'Mana Invader'), -- repeat
(10240, 22000, 0, 10, 20618, 20000, 7, 0, 0, 0, 1, 0, 0, 0, 2382.531, 2306.004, 119.7753, 2.99193, 'Mana Invader'), -- repeat
(10240, 22000, 0, 10, 20618, 20000, 8, 0, 0, 0, 1, 0, 0, 0, 2381.858, 2271.859, 132.7906, 2.99193, 'Mana Invader'), -- repeat
-- 12:21:40.514
(10240, 23000, 0, 10, 20618, 20000, 10, 0, 0, 0, 1, 0, 0, 0, 2388.935, 2339.117, 109.0553, 2.99193, 'Mana Invader'), -- repeat
(10240, 23000, 0, 10, 20618, 20000, 12, 0, 0, 0, 1, 0, 0, 0, 2392.072, 2295.18, 130.9156, 2.99193, 'Mana Invader'), -- repeat
-- 12:21:41.701
(10240, 24000, 0, 10, 20618, 20000, 17, 0, 0, 0, 1, 0, 0, 0, 2350.455, 2396.234, 121.9635, 2.99193, 'Mana Invader'),
(10240, 24000, 0, 10, 20618, 20000, 13, 0, 0, 0, 1, 0, 0, 0, 2379.913, 2366.843, 133.4303, 2.99193, 'Mana Invader'), -- repeat
-- 12:21:43.764 - some of 20618 destroyed/despawned
-- 12:21:44.186
(10240, 26500, 0, 10, 20618, 20000, 14, 0, 0, 0, 1, 0, 0, 0, 2394.534, 2377.391, 145.6293, 2.99193, 'Mana Invader'), -- repeat
-- 12:21:45.389
(10240, 27500, 0, 10, 20618, 20000, 9, 0, 0, 0, 1, 0, 0, 0, 2377.704, 2210.01, 92.98299, 2.99193, 'Mana Invader'), -- repeat
-- 12:21:46.608
(10240, 28500, 0, 10, 20618, 20000, 18, 0, 0, 0, 1, 0, 0, 0, 2325.373, 2427.574, 111.5927, 2.99193, 'Mana Invader'),
(10240, 28500, 0, 10, 20618, 20000, 19, 0, 0, 0, 1, 0, 0, 0, 2348.138, 2427.328, 137.0282, 2.99193, 'Mana Invader'),
(10240, 28500, 0, 10, 20618, 20000, 20, 0, 0, 0, 1, 0, 0, 0, 2322.732, 2454.401, 107.2447, 2.99193, 'Mana Invader'),
-- 12:21:53.467
(10240, 35500, 0, 10, 20618, 20000, 10, 0, 0, 0, 1, 0, 0, 0, 2388.935, 2339.117, 109.0553, 2.99193, 'Mana Invader'), -- repeat
(10240, 35500, 0, 10, 20618, 20000, 15, 0, 0, 0, 1, 0, 0, 0, 2348.756, 2242.13, 100.2601, 2.99193, 'Mana Invader'), -- repeat
(10240, 35500, 0, 10, 20618, 20000, 16, 0, 0, 0, 1, 0, 0, 0, 2349.556, 2276.039, 104.7442, 2.99193, 'Mana Invader'), -- repeat
(10240, 35500, 0, 10, 20618, 20000, 2, 0, 0, 0, 1, 0, 0, 0, 2341.932, 2327.533, 106.0814, 2.99193, 'Mana Invader'), -- repeat
(10240, 35500, 0, 10, 20618, 20000, 4, 0, 0, 0, 1, 0, 0, 0, 2346.622, 2344.688, 113.5465, 2.99193, 'Mana Invader'), -- repeat
(10240, 35500, 0, 10, 20618, 20000, 6, 0, 0, 0, 1, 0, 0, 0, 2346.931, 2366.628, 119.0465, 2.99193, 'Mana Invader'), -- repeat
(10240, 35500, 0, 10, 20618, 20000, 7, 0, 0, 0, 1, 0, 0, 0, 2382.531, 2306.004, 119.7753, 2.99193, 'Mana Invader'), -- repeat
(10240, 35500, 0, 10, 20618, 20000, 12, 0, 0, 0, 1, 0, 0, 0, 2392.072, 2295.18, 130.9156, 2.99193, 'Mana Invader'), -- repeat
(10240, 35500, 0, 10, 20618, 20000, 8, 0, 0, 0, 1, 0, 0, 0, 2381.858, 2271.859, 132.7906, 2.99193, 'Mana Invader'), -- repeat
(10240, 35500, 0, 10, 20618, 20000, 17, 0, 0, 0, 1, 0, 0, 0, 2350.455, 2396.234, 121.9635, 2.99193, 'Mana Invader'), -- repeat
(10240, 35500, 0, 10, 20618, 20000, 13, 0, 0, 0, 1, 0, 0, 0, 2379.913, 2366.843, 133.4303, 2.99193, 'Mana Invader'), -- repeat
-- 12:21:53.858
(10240, 36000, 0, 10, 20618, 20000, 5, 0, 0, 0, 1, 0, 0, 0, 2372.703, 2248.804, 120.5678, 2.99193, 'Mana Invader'), -- repeat
-- 12:21:57.514
(10240, 40000, 0, 10, 20618, 20000, 18, 0, 0, 0, 1, 0, 0, 0, 2325.373, 2427.574, 111.5927, 2.99193, 'Mana Invader'), -- repeat
-- 12:21:58.701
(10240, 41000, 0, 10, 20618, 20000, 19, 0, 0, 0, 1, 0, 0, 0, 2348.138, 2427.328, 137.0282, 2.99193, 'Mana Invader'), -- repeat
-- 12:21:59.936
(10240, 42000, 0, 10, 20618, 20000, 20, 0, 0, 0, 1, 0, 0, 0, 2322.732, 2454.401, 107.2447, 2.99193, 'Mana Invader'); -- repeat
-- 12:22:17.358 - SMSG_GAME_OBJECT_DESPAWN 183955

DELETE FROM `creature_movement_template` WHERE `entry`=20618;
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,1,1,2349.556,2276.039,104.7442,0,0,100),
(20618,1,2,2348.566,2276.188,105.7442,0,0,100),
(20618,1,3,2347.577,2276.338,106.7442,0,0,100),
(20618,1,4,2346.588,2276.487,107.6192,0,0,100),
(20618,1,5,2345.599,2276.637,108.3692,0,0,100),
(20618,1,6,2344.609,2276.786,108.9942,0,0,100),
(20618,1,7,2342.631,2277.085,108.3692,0,0,100),
(20618,1,8,2339.663,2277.533,107.6192,0,0,100),
(20618,1,9,2336.695,2277.981,106.8692,0,0,100),
(20618,1,10,2334.717,2278.28,106.2442,0,0,100),
(20618,1,11,2332.738,2278.579,105.6573,0,0,100),
(20618,1,12,2330.76,2278.878,105.0323,0,0,100),
(20618,1,13,2328.781,2279.177,104.4073,0,0,100),
(20618,1,14,2326.803,2279.476,103.6573,0,0,100),
(20618,1,15,2324.824,2279.774,103.0323,0,0,100),
(20618,1,16,2322.846,2280.073,102.2823,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,2,1,2341.932,2327.533,106.0814,0,0,100),
(20618,2,2,2336.058,2313.734,105.5569,0,0,100),
(20618,2,3,2330.184,2299.936,105.0323,0,0,100),
(20618,2,4,2327.834,2294.416,104.2823,0,0,100),
(20618,2,5,2325.876,2289.816,103.5323,0,0,100),
(20618,2,6,2323.918,2285.217,102.6573,0,0,100),
(20618,2,7,2322.186,2281.146,102.282,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,3,1,2348.756,2242.13,100.2601,0,0,100),
(20618,3,2,2347.771,2242.308,102.8851,0,0,100),
(20618,3,3,2346.787,2242.485,105.5101,0,0,100),
(20618,3,4,2345.803,2242.663,106.7601,0,0,100),
(20618,3,5,2344.818,2242.841,107.3851,0,0,100),
(20618,3,6,2336.943,2244.263,106.7601,0,0,100),
(20618,3,7,2334.975,2244.618,106.1351,0,0,100),
(20618,3,8,2333.006,2244.974,105.4595,0,0,100),
(20618,3,9,2331.037,2245.329,104.8345,0,0,100),
(20618,3,10,2329.068,2245.685,104.0845,0,0,100),
(20618,3,11,2326.115,2246.218,103.3345,0,0,100),
(20618,3,12,2324.146,2246.573,102.5845,0,0,100),
(20618,3,13,2322.178,2246.929,101.9595,0,0,100),
(20618,3,14,2320.373,2247.255,101.272,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,4,1,2346.622,2344.688,113.5465,0,0,100),
(20618,4,2,2341.646,2345.201,112.7965,0,0,100),
(20618,4,3,2336.671,2345.714,112.0465,0,0,100),
(20618,4,4,2333.686,2346.021,111.4215,0,0,100),
(20618,4,5,2329.705,2346.432,110.8887,0,0,100),
(20618,4,6,2313.783,2348.072,109.6387,0,0,100),
(20618,4,7,2312.788,2348.175,108.6387,0,0,100),
(20618,4,8,2311.793,2348.277,107.6387,0,0,100),
(20618,4,9,2310.798,2348.38,106.7637,0,0,100),
(20618,4,10,2309.803,2348.482,105.7637,0,0,100),
(20618,4,11,2308.808,2348.585,104.8887,0,0,100),
(20618,4,12,2307.813,2348.688,104.0137,0,0,100),
(20618,4,13,2306.817,2348.79,103.3887,0,0,100),
(20618,4,14,2305.822,2348.893,102.7637,0,0,100),
(20618,4,15,2304.827,2348.995,102.0137,0,0,100),
(20618,4,16,2299.852,2349.508,103.3887,0,0,100),
(20618,4,17,2298.856,2349.61,104.7637,0,0,100),
(20618,4,18,2297.861,2349.713,106.1387,0,0,100),
(20618,4,19,2296.866,2349.815,107.6387,0,0,100),
(20618,4,20,2294.876,2350.021,109.0137,0,0,100),
(20618,4,21,2293.881,2350.123,110.6387,0,0,100),
(20618,4,22,2292.886,2350.226,112.2637,0,0,100),
(20618,4,23,2291.891,2350.328,113.7637,0,0,100),
(20618,4,24,2290.896,2350.431,114.6387,0,0,100),
(20618,4,25,2286.915,2350.841,114.0137,0,0,100),
(20618,4,26,2286.049,2350.939,113.6909,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,5,1,2372.703,2248.804,120.5678,0,0,100),
(20618,5,2,2371.703,2248.777,119.9428,0,0,100),
(20618,5,3,2370.703,2248.751,119.3178,0,0,100),
(20618,5,4,2369.703,2248.725,118.5678,0,0,100),
(20618,5,5,2367.703,2248.672,117.3178,0,0,100),
(20618,5,6,2365.703,2248.619,116.3851,0,0,100),
(20618,5,7,2364.703,2248.593,115.2601,0,0,100),
(20618,5,8,2363.703,2248.566,114.1351,0,0,100),
(20618,5,9,2362.703,2248.54,112.2601,0,0,100),
(20618,5,10,2361.703,2248.514,110.5101,0,0,100),
(20618,5,11,2360.703,2248.487,108.8851,0,0,100),
(20618,5,12,2359.703,2248.461,107.1351,0,0,100),
(20618,5,13,2358.703,2248.435,105.0101,0,0,100),
(20618,5,14,2357.703,2248.408,103.3851,0,0,100),
(20618,5,15,2356.703,2248.382,102.2601,0,0,100),
(20618,5,16,2355.703,2248.355,101.0101,0,0,100),
(20618,5,17,2354.703,2248.329,100.2601,0,0,100),
(20618,5,18,2350.703,2248.224,100.8851,0,0,100),
(20618,5,19,2349.703,2248.197,102.1351,0,0,100),
(20618,5,20,2348.703,2248.171,104.1351,0,0,100),
(20618,5,21,2347.703,2248.145,105.7601,0,0,100),
(20618,5,22,2346.703,2248.118,108.1351,0,0,100),
(20618,5,23,2345.703,2248.092,109.1351,0,0,100),
(20618,5,24,2342.703,2248.013,108.3851,0,0,100),
(20618,5,25,2338.703,2247.907,107.5101,0,0,100),
(20618,5,26,2336.703,2247.854,106.8851,0,0,100),
(20618,5,27,2334.703,2247.802,106.2601,0,0,100),
(20618,5,28,2332.703,2247.749,105.4595,0,0,100),
(20618,5,29,2330.703,2247.696,104.8345,0,0,100),
(20618,5,30,2328.703,2247.644,104.0845,0,0,100),
(20618,5,31,2326.703,2247.591,103.3345,0,0,100),
(20618,5,32,2324.703,2247.538,102.5845,0,0,100),
(20618,5,33,2322.703,2247.485,101.9595,0,0,100),
(20618,5,34,2320.703,2247.433,101.2095,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,6,1,2346.931,2366.628,119.0465,0,0,100),
(20618,6,2,2344.991,2366.14,118.0465,0,0,100),
(20618,6,3,2343.052,2365.651,117.0465,0,0,100),
(20618,6,4,2341.112,2365.163,116.1715,0,0,100),
(20618,6,5,2338.203,2364.431,115.4215,0,0,100),
(20618,6,6,2334.324,2363.454,114.7965,0,0,100),
(20618,6,7,2322.688,2360.524,115.3887,0,0,100),
(20618,6,8,2315.899,2358.815,114.1387,0,0,100),
(20618,6,9,2314.93,2358.571,112.3887,0,0,100),
(20618,6,10,2313.96,2358.327,110.5137,0,0,100),
(20618,6,11,2312.99,2358.083,108.7637,0,0,100),
(20618,6,12,2312.021,2357.839,107.3887,0,0,100),
(20618,6,13,2311.051,2357.595,106.1387,0,0,100),
(20618,6,14,2310.081,2357.351,104.8887,0,0,100),
(20618,6,15,2308.142,2356.862,103.0137,0,0,100),
(20618,6,16,2304.263,2355.886,101.5137,0,0,100),
(20618,6,17,2299.414,2354.665,102.1387,0,0,100),
(20618,6,18,2298.444,2354.421,103.2637,0,0,100),
(20618,6,19,2297.475,2354.177,104.3887,0,0,100),
(20618,6,20,2296.505,2353.933,105.7637,0,0,100),
(20618,6,21,2295.535,2353.688,107.5137,0,0,100),
(20618,6,22,2294.565,2353.444,109.5137,0,0,100),
(20618,6,23,2293.596,2353.2,111.3887,0,0,100),
(20618,6,24,2292.626,2352.956,113.5137,0,0,100),
(20618,6,25,2286.039,2351.298,113.6753,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,7,1,2382.531,2306.004,119.7753,0,0,100),
(20618,7,2,2377.927,2304.051,119.0253,0,0,100),
(20618,7,3,2373.322,2302.098,118.2753,0,0,100),
(20618,7,4,2370.56,2300.926,117.1503,0,0,100),
(20618,7,5,2369.639,2300.535,114.9003,0,0,100),
(20618,7,6,2368.718,2300.145,112.7753,0,0,100),
(20618,7,7,2366.876,2299.363,110.2906,0,0,100),
(20618,7,8,2365.955,2298.973,108.7442,0,0,100),
(20618,7,9,2365.034,2298.582,107.2442,0,0,100),
(20618,7,10,2364.113,2298.191,106.2442,0,0,100),
(20618,7,11,2363.192,2297.801,105.4942,0,0,100),
(20618,7,12,2361.351,2297.02,104.8692,0,0,100),
(20618,7,13,2357.667,2295.457,106.1192,0,0,100),
(20618,7,14,2356.746,2295.066,107.3692,0,0,100),
(20618,7,15,2355.825,2294.676,108.2442,0,0,100),
(20618,7,16,2354.904,2294.285,109.1192,0,0,100),
(20618,7,17,2353.983,2293.895,110.2442,0,0,100),
(20618,7,18,2353.063,2293.504,111.1192,0,0,100),
(20618,7,19,2350.3,2292.332,110.1192,0,0,100),
(20618,7,20,2340.17,2288.035,109.2442,0,0,100),
(20618,7,21,2338.328,2287.254,108.1192,0,0,100),
(20618,7,22,2335.565,2286.082,107.1192,0,0,100),
(20618,7,23,2333.724,2285.301,106.2442,0,0,100),
(20618,7,24,2331.882,2284.52,105.4073,0,0,100),
(20618,7,25,2330.04,2283.738,104.7823,0,0,100),
(20618,7,26,2327.277,2282.566,104.0323,0,0,100),
(20618,7,27,2325.436,2281.785,103.4073,0,0,100),
(20618,7,28,2323.594,2281.004,102.6573,0,0,100),
(20618,7,29,2322.693,2280.614,102.3893,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,8,1,2381.858,2271.859,132.7906,0,0,100),
(20618,8,2,2376.907,2272.548,132.1656,0,0,100),
(20618,8,3,2371.956,2273.236,131.5406,0,0,100),
(20618,8,4,2369.976,2273.512,130.6656,0,0,100),
(20618,8,5,2367.995,2273.787,128.7906,0,0,100),
(20618,8,6,2367.005,2273.925,127.5406,0,0,100),
(20618,8,7,2365.024,2274.2,125.3692,0,0,100),
(20618,8,8,2364.034,2274.338,123.9942,0,0,100),
(20618,8,9,2363.044,2274.476,122.6192,0,0,100),
(20618,8,10,2362.054,2274.613,120.6192,0,0,100),
(20618,8,11,2361.063,2274.751,117.8692,0,0,100),
(20618,8,12,2360.073,2274.889,115.1192,0,0,100),
(20618,8,13,2359.083,2275.026,112.8692,0,0,100),
(20618,8,14,2358.093,2275.164,110.6192,0,0,100),
(20618,8,15,2357.103,2275.302,109.3692,0,0,100),
(20618,8,16,2356.112,2275.439,108.2442,0,0,100),
(20618,8,17,2355.122,2275.577,106.9942,0,0,100),
(20618,8,18,2350.171,2276.266,105.1192,0,0,100),
(20618,8,19,2348.19,2276.541,105.7442,0,0,100),
(20618,8,20,2346.21,2276.816,107.6192,0,0,100),
(20618,8,21,2340.269,2277.643,107.6192,0,0,100),
(20618,8,22,2337.298,2278.056,106.8692,0,0,100),
(20618,8,23,2335.317,2278.331,106.2442,0,0,100),
(20618,8,24,2332.347,2278.744,105.6573,0,0,100),
(20618,8,25,2330.366,2279.02,105.0323,0,0,100),
(20618,8,26,2328.386,2279.295,104.4073,0,0,100),
(20618,8,27,2326.405,2279.57,103.6573,0,0,100),
(20618,8,28,2324.425,2279.846,103.0323,0,0,100),
(20618,8,29,2322.754,2280.078,102.4112,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,9,1,2377.704,2210.01,92.98299,0,0,100),
(20618,9,2,2374.771,2212.315,93.59126,0,0,100),
(20618,9,3,2371.838,2214.621,94.19954,0,0,100),
(20618,9,4,2370.833,2215.625,93.94954,0,0,100),
(20618,9,5,2369.791,2216.667,94.19954,0,0,100),
(20618,9,6,2366.667,2217.709,93.44954,0,0,100),
(20618,9,7,2364.667,2217.709,92.44954,0,0,100),
(20618,9,8,2364.583,2217.709,91.19954,0,0,100),
(20618,9,9,2362.583,2217.709,90.19954,0,0,100),
(20618,9,10,2360.5,2217.709,90.69954,0,0,100),
(20618,9,11,2358.5,2217.709,92.07454,0,0,100),
(20618,9,12,2357.626,2217.002,92.32454,0,0,100),
(20618,9,13,2357.291,2216.667,93.07454,0,0,100),
(20618,9,14,2354.795,2215.003,95.57454,0,0,100),
(20618,9,15,2354.167,2214.584,96.69954,0,0,100),
(20618,9,16,2351.167,2214.584,97.57454,0,0,100),
(20618,9,17,2350,2214.584,98.44954,0,0,100),
(20618,9,18,2347.091,2215.311,99.57454,0,0,100),
(20618,9,19,2345.833,2215.625,100.9495,0,0,100),
(20618,9,20,2343.75,2215.625,102.3245,0,0,100),
(20618,9,21,2341.75,2215.625,103.5745,0,0,100),
(20618,9,22,2339.667,2215.625,105.1995,0,0,100),
(20618,9,23,2337.5,2215.625,106.3245,0,0,100),
(20618,9,24,2333.333,2214.584,106.6868,0,0,100),
(20618,9,25,2330.333,2214.584,105.9368,0,0,100),
(20618,9,26,2328.333,2214.584,105.1868,0,0,100),
(20618,9,27,2326.333,2214.584,104.3118,0,0,100),
(20618,9,28,2325,2214.584,103.4368,0,0,100),
(20618,9,29,2322.132,2213.705,102.5618,0,0,100),
(20618,9,30,2320.091,2213.077,102.5192,0,0,100),
(20618,9,31,2319.396,2209.171,101.8447,0,0,100),
(20618,9,32,2314.618,2208.706,100.1829,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,10,1,2388.935,2339.117,109.0553,0,0,100),
(20618,10,2,2387.431,2337.799,108.4303,0,0,100),
(20618,10,3,2385.927,2336.48,107.8053,0,0,100),
(20618,10,4,2383.671,2334.503,107.1803,0,0,100),
(20618,10,5,2380.663,2331.866,106.5253,0,0,100),
(20618,10,6,2364.12,2317.364,105.9319,0,0,100),
(20618,10,7,2358.104,2312.091,105.3069,0,0,100),
(20618,10,8,2355.849,2310.113,105.9319,0,0,100),
(20618,10,9,2353.593,2308.136,108.6819,0,0,100),
(20618,10,10,2352.089,2306.817,109.8069,0,0,100),
(20618,10,11,2348.329,2303.521,110.4319,0,0,100),
(20618,10,12,2346.073,2301.544,111.1819,0,0,100),
(20618,10,13,2343.065,2298.907,110.4942,0,0,100),
(20618,10,14,2340.058,2296.271,109.1192,0,0,100),
(20618,10,15,2337.802,2294.293,108.1192,0,0,100),
(20618,10,16,2336.298,2292.975,107.3692,0,0,100),
(20618,10,17,2334.042,2290.997,106.4942,0,0,100),
(20618,10,18,2331.786,2289.02,105.6573,0,0,100),
(20618,10,19,2329.53,2287.042,104.7823,0,0,100),
(20618,10,20,2328.026,2285.724,104.1573,0,0,100),
(20618,10,21,2325.771,2283.746,103.4073,0,0,100),
(20618,10,22,2323.515,2281.769,102.6573,0,0,100),
(20618,10,23,2322.529,2280.884,102.3329,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,11,1,2394.022,2179.261,87.07649,0,0,100),
(20618,11,2,2365.24,2181.818,88.67468,0,0,100),
(20618,11,3,2336.459,2184.375,90.27287,0,0,100),
(20618,11,4,2335.417,2184.375,90.39787,0,0,100),
(20618,11,5,2333.333,2184.375,90.54768,0,0,100),
(20618,11,6,2331.815,2185.676,91.17268,0,0,100),
(20618,11,7,2330.298,2186.977,91.92268,0,0,100),
(20618,11,8,2329.688,2187.5,92.17268,0,0,100),
(20618,11,9,2327.846,2189.229,93.54987,0,0,100),
(20618,11,10,2326.563,2190.104,93.42268,0,0,100),
(20618,11,11,2325.542,2191.403,93.89793,0,0,100),
(20618,11,12,2323.438,2192.188,94.04768,0,0,100),
(20618,11,13,2323.01,2192.849,94.93163,0,0,100),
(20618,11,14,2322.331,2194.083,96.08656,0,0,100),
(20618,11,15,2321.354,2195.313,96.29768,0,0,100),
(20618,11,16,2320.013,2195.812,97.34561,0,0,100),
(20618,11,17,2319.691,2196.202,97.60069,0,0,100),
(20618,11,18,2317.755,2198.659,98.46907,0,0,100),
(20618,11,19,2318.229,2201.563,98.68675,0,0,100),
(20618,11,20,2317.744,2204.024,99.43675,0,0,100),
(20618,11,21,2318.229,2206.25,99.93675,0,0,100),
(20618,11,22,2318.231,2208.203,101.2937,0,0,100),
(20618,11,23,2314.635,2208.636,100.1767,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,12,1,2392.072,2295.18,130.9156,0,0,100),
(20618,12,2,2391.094,2294.972,132.0406,0,0,100),
(20618,12,3,2390.115,2294.764,133.1656,0,0,100),
(20618,12,4,2387.18,2294.14,131.9156,0,0,100),
(20618,12,5,2386.201,2293.932,130.7906,0,0,100),
(20618,12,6,2382.287,2293.1,130.1656,0,0,100),
(20618,12,7,2380.33,2292.684,132.2906,0,0,100),
(20618,12,8,2373.48,2291.228,129.9156,0,0,100),
(20618,12,9,2372.502,2291.02,127.9156,0,0,100),
(20618,12,10,2371.523,2290.812,125.7906,0,0,100),
(20618,12,11,2370.545,2290.604,124.4156,0,0,100),
(20618,12,12,2369.566,2290.396,121.4156,0,0,100),
(20618,12,13,2368.588,2290.188,118.0406,0,0,100),
(20618,12,14,2367.609,2289.979,115.1656,0,0,100),
(20618,12,15,2366.631,2289.771,113.1192,0,0,100),
(20618,12,16,2365.652,2289.563,115.4942,0,0,100),
(20618,12,17,2364.674,2289.355,114.1192,0,0,100),
(20618,12,18,2363.695,2289.147,112.8692,0,0,100),
(20618,12,19,2362.717,2288.939,112.2442,0,0,100),
(20618,12,20,2361.738,2288.731,111.6192,0,0,100),
(20618,12,21,2360.76,2288.523,112.9942,0,0,100),
(20618,12,22,2359.781,2288.315,112.3692,0,0,100),
(20618,12,23,2358.803,2288.107,111.7442,0,0,100),
(20618,12,24,2356.846,2287.691,110.4942,0,0,100),
(20618,12,25,2354.889,2287.275,109.7442,0,0,100),
(20618,12,26,2353.91,2287.067,108.3692,0,0,100),
(20618,12,27,2351.953,2286.651,107.6192,0,0,100),
(20618,12,28,2350.975,2286.443,106.8692,0,0,100),
(20618,12,29,2348.039,2285.819,105.9942,0,0,100),
(20618,12,30,2344.125,2284.987,106.8692,0,0,100),
(20618,12,31,2343.146,2284.779,107.9942,0,0,100),
(20618,12,32,2342.168,2284.571,108.9942,0,0,100),
(20618,12,33,2339.232,2283.947,108.2442,0,0,100),
(20618,12,34,2337.275,2283.531,107.3692,0,0,100),
(20618,12,35,2335.318,2283.115,106.4942,0,0,100),
(20618,12,36,2332.383,2282.491,105.7823,0,0,100),
(20618,12,37,2330.426,2282.075,105.0323,0,0,100),
(20618,12,38,2328.469,2281.659,104.4073,0,0,100),
(20618,12,39,2326.512,2281.243,103.6573,0,0,100),
(20618,12,40,2324.555,2280.827,103.0323,0,0,100),
(20618,12,41,2322.753,2280.444,102.4112,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,13,1,2379.913,2366.843,133.4303,0,0,100),
(20618,13,2,2377.94,2366.515,131.9303,0,0,100),
(20618,13,3,2375.968,2366.187,130.4303,0,0,100),
(20618,13,4,2373.009,2365.694,129.4303,0,0,100),
(20618,13,5,2372.022,2365.53,128.1803,0,0,100),
(20618,13,6,2370.05,2365.202,127.5553,0,0,100),
(20618,13,7,2368.077,2364.874,126.9303,0,0,100),
(20618,13,8,2365.118,2364.382,126.4215,0,0,100),
(20618,13,9,2357.228,2363.069,125.7965,0,0,100),
(20618,13,10,2354.269,2362.577,125.1715,0,0,100),
(20618,13,11,2352.296,2362.249,123.4215,0,0,100),
(20618,13,12,2351.31,2362.085,122.2965,0,0,100),
(20618,13,13,2350.323,2361.921,121.1715,0,0,100),
(20618,13,14,2349.337,2361.757,120.0465,0,0,100),
(20618,13,15,2347.364,2361.429,118.2965,0,0,100),
(20618,13,16,2345.392,2361.101,116.9215,0,0,100),
(20618,13,17,2343.419,2360.772,116.2965,0,0,100),
(20618,13,18,2341.446,2360.444,115.6715,0,0,100),
(20618,13,19,2339.474,2360.116,114.9215,0,0,100),
(20618,13,20,2334.542,2359.296,114.0465,0,0,100),
(20618,13,21,2315.802,2356.179,113.0137,0,0,100),
(20618,13,22,2314.815,2356.015,111.3887,0,0,100),
(20618,13,23,2313.829,2355.851,110.1387,0,0,100),
(20618,13,24,2312.843,2355.687,108.6387,0,0,100),
(20618,13,25,2311.856,2355.522,107.2637,0,0,100),
(20618,13,26,2310.87,2355.358,106.0137,0,0,100),
(20618,13,27,2308.897,2355.03,104.0137,0,0,100),
(20618,13,28,2305.938,2354.538,102.1387,0,0,100),
(20618,13,29,2299.034,2353.39,102.5137,0,0,100),
(20618,13,30,2297.062,2353.062,104.7637,0,0,100),
(20618,13,31,2296.075,2352.897,106.2637,0,0,100),
(20618,13,32,2295.089,2352.733,108.0137,0,0,100),
(20618,13,33,2294.103,2352.569,110.2637,0,0,100),
(20618,13,34,2293.116,2352.405,112.1387,0,0,100),
(20618,13,35,2292.13,2352.241,113.5137,0,0,100),
(20618,13,36,2286.212,2351.257,113.6387,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,14,1,2394.534,2377.391,145.6293,0,0,100),
(20618,14,2,2391.616,2376.688,144.7543,0,0,100),
(20618,14,3,2388.698,2375.984,143.8793,0,0,100),
(20618,14,4,2386.753,2375.516,142.6293,0,0,100),
(20618,14,5,2385.78,2375.281,141.8793,0,0,100),
(20618,14,6,2384.808,2375.047,141.1293,0,0,100),
(20618,14,7,2383.835,2374.813,140.3793,0,0,100),
(20618,14,8,2382.862,2374.578,139.5043,0,0,100),
(20618,14,9,2381.89,2374.344,138.7543,0,0,100),
(20618,14,10,2380.917,2374.109,138.0043,0,0,100),
(20618,14,11,2379.944,2373.875,137.0043,0,0,100),
(20618,14,12,2378.972,2373.641,136.2543,0,0,100),
(20618,14,13,2377.999,2373.406,135.6293,0,0,100),
(20618,14,14,2377.026,2373.172,135.0043,0,0,100),
(20618,14,15,2375.081,2372.703,134.0043,0,0,100),
(20618,14,16,2374.108,2372.469,133.3793,0,0,100),
(20618,14,17,2373.136,2372.234,132.7543,0,0,100),
(20618,14,18,2372.163,2372,132.0043,0,0,100),
(20618,14,19,2371.19,2371.766,131.1293,0,0,100),
(20618,14,20,2370.218,2371.531,130.3793,0,0,100),
(20618,14,21,2369.245,2371.297,129.7543,0,0,100),
(20618,14,22,2368.272,2371.063,129.1293,0,0,100),
(20618,14,23,2367.3,2370.828,128.2543,0,0,100),
(20618,14,24,2365.354,2370.359,127.5885,0,0,100),
(20618,14,25,2363.409,2369.891,126.7135,0,0,100),
(20618,14,26,2359.519,2368.953,125.9635,0,0,100),
(20618,14,27,2356.601,2368.25,124.9635,0,0,100),
(20618,14,28,2354.655,2367.781,123.9635,0,0,100),
(20618,14,29,2352.71,2367.313,122.5885,0,0,100),
(20618,14,30,2351.737,2367.078,121.7135,0,0,100),
(20618,14,31,2350.765,2366.844,120.7135,0,0,100),
(20618,14,32,2349.792,2366.609,119.9215,0,0,100),
(20618,14,33,2347.847,2366.141,119.0465,0,0,100),
(20618,14,34,2344.929,2365.438,117.7965,0,0,100),
(20618,14,35,2342.983,2364.969,116.9215,0,0,100),
(20618,14,36,2341.038,2364.5,116.0465,0,0,100),
(20618,14,37,2338.12,2363.797,115.4215,0,0,100),
(20618,14,38,2334.229,2362.859,114.7965,0,0,100),
(20618,14,39,2320.612,2359.578,115.3887,0,0,100),
(20618,14,40,2315.749,2358.406,114.1387,0,0,100),
(20618,14,41,2314.776,2358.172,112.1387,0,0,100),
(20618,14,42,2313.804,2357.938,110.5137,0,0,100),
(20618,14,43,2312.831,2357.703,108.7637,0,0,100),
(20618,14,44,2311.858,2357.469,107.3887,0,0,100),
(20618,14,45,2310.886,2357.234,106.0137,0,0,100),
(20618,14,46,2309.913,2357,104.7637,0,0,100),
(20618,14,47,2308.94,2356.766,103.8887,0,0,100),
(20618,14,48,2307.968,2356.531,103.0137,0,0,100),
(20618,14,49,2306.995,2356.297,102.1387,0,0,100),
(20618,14,50,2305.05,2355.828,101.5137,0,0,100),
(20618,14,51,2299.214,2354.422,102.1387,0,0,100),
(20618,14,52,2298.241,2354.188,103.2637,0,0,100),
(20618,14,53,2297.269,2353.953,104.6387,0,0,100),
(20618,14,54,2296.296,2353.719,105.7637,0,0,100),
(20618,14,55,2295.323,2353.484,107.5137,0,0,100),
(20618,14,56,2294.351,2353.25,109.5137,0,0,100),
(20618,14,57,2293.378,2353.016,112.1387,0,0,100),
(20618,14,58,2292.405,2352.781,113.5137,0,0,100),
(20618,14,59,2291.433,2352.547,114.2637,0,0,100),
(20618,14,60,2286.036,2351.246,113.6857,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,15,1,2348.756,2242.13,100.2601,0,0,100),
(20618,15,2,2347.771,2242.308,102.8851,0,0,100),
(20618,15,3,2346.787,2242.485,105.5101,0,0,100),
(20618,15,4,2345.803,2242.663,106.7601,0,0,100),
(20618,15,5,2344.818,2242.841,107.3851,0,0,100),
(20618,15,6,2336.943,2244.263,106.7601,0,0,100),
(20618,15,7,2334.975,2244.618,106.1351,0,0,100),
(20618,15,8,2333.006,2244.974,105.4595,0,0,100),
(20618,15,9,2331.037,2245.329,104.8345,0,0,100),
(20618,15,10,2329.068,2245.685,104.0845,0,0,100),
(20618,15,11,2326.115,2246.218,103.3345,0,0,100),
(20618,15,12,2324.146,2246.573,102.5845,0,0,100),
(20618,15,13,2322.178,2246.929,101.9595,0,0,100),
(20618,15,14,2320.373,2247.255,101.272,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,16,1,2349.556,2276.039,104.7442,0,0,100),
(20618,16,2,2348.566,2276.188,105.7442,0,0,100),
(20618,16,3,2347.577,2276.338,106.7442,0,0,100),
(20618,16,4,2346.588,2276.487,107.6192,0,0,100),
(20618,16,5,2345.599,2276.637,108.3692,0,0,100),
(20618,16,6,2344.609,2276.786,108.9942,0,0,100),
(20618,16,7,2342.631,2277.085,108.3692,0,0,100),
(20618,16,8,2339.663,2277.533,107.6192,0,0,100),
(20618,16,9,2336.695,2277.981,106.8692,0,0,100),
(20618,16,10,2334.717,2278.28,106.2442,0,0,100),
(20618,16,11,2332.738,2278.579,105.6573,0,0,100),
(20618,16,12,2330.76,2278.878,105.0323,0,0,100),
(20618,16,13,2328.781,2279.177,104.4073,0,0,100),
(20618,16,14,2326.803,2279.476,103.6573,0,0,100),
(20618,16,15,2324.824,2279.774,103.0323,0,0,100),
(20618,16,16,2322.846,2280.073,102.2823,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,17,1,2350.455,2396.234,121.9635,0,0,100),
(20618,17,2,2347.604,2395.3,120.7135,0,0,100),
(20618,17,3,2344.754,2394.365,119.4635,0,0,100),
(20618,17,4,2340.953,2393.119,118.8385,0,0,100),
(20618,17,5,2338.103,2392.185,118.0885,0,0,100),
(20618,17,6,2334.302,2390.938,117.4635,0,0,100),
(20618,17,7,2327.65,2388.758,116.8802,0,0,100),
(20618,17,8,2324.8,2387.823,116.1302,0,0,100),
(20618,17,9,2308.646,2382.527,115.3802,0,0,100),
(20618,17,10,2307.696,2382.216,113.8802,0,0,100),
(20618,17,11,2306.746,2381.904,112.3802,0,0,100),
(20618,17,12,2305.796,2381.593,111.1302,0,0,100),
(20618,17,13,2304.846,2381.281,109.0052,0,0,100),
(20618,17,14,2303.896,2380.97,105.7552,0,0,100),
(20618,17,15,2302.945,2380.658,104.1302,0,0,100),
(20618,17,16,2301.045,2380.035,102.3802,0,0,100),
(20618,17,17,2299.145,2379.412,100.4467,0,0,100),
(20618,17,18,2294.394,2377.854,101.0717,0,0,100),
(20618,17,19,2292.493,2377.231,102.5717,0,0,100),
(20618,17,20,2291.543,2376.92,104.0717,0,0,100),
(20618,17,21,2290.593,2376.608,105.5717,0,0,100),
(20618,17,22,2288.692,2375.985,107.5717,0,0,100),
(20618,17,23,2287.742,2375.674,109.0717,0,0,100),
(20618,17,24,2286.792,2375.362,110.4467,0,0,100),
(20618,17,25,2285.842,2375.051,111.8217,0,0,100),
(20618,17,26,2284.892,2374.739,114.1967,0,0,100),
(20618,17,27,2283.941,2374.428,115.6967,0,0,100),
(20618,17,28,2282.041,2373.805,116.9467,0,0,100),
(20618,17,29,2277.29,2372.247,116.0717,0,0,100),
(20618,17,30,2276.729,2372.054,115.795,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,18,1,2325.373,2427.574,111.5927,0,0,100),
(20618,18,2,2318.1,2424.246,110.9677,0,0,100),
(20618,18,3,2310.826,2420.918,110.3427,0,0,100),
(20618,18,4,2307.189,2419.254,109.7177,0,0,100),
(20618,18,5,2303.553,2417.59,108.9677,0,0,100),
(20618,18,6,2300.825,2416.342,108.3427,0,0,100),
(20618,18,7,2289.915,2411.35,107.4523,0,0,100),
(20618,18,8,2288.097,2410.518,106.5773,0,0,100),
(20618,18,9,2287.188,2410.102,104.9523,0,0,100),
(20618,18,10,2285.369,2409.27,103.0773,0,0,100),
(20618,18,11,2282.642,2408.021,102.0773,0,0,100),
(20618,18,12,2279.914,2406.773,102.7023,0,0,100),
(20618,18,13,2278.096,2405.941,104.2023,0,0,100),
(20618,18,14,2276.277,2405.109,105.7023,0,0,100),
(20618,18,15,2274.459,2404.277,107.8273,0,0,100),
(20618,18,16,2273.55,2403.861,110.2023,0,0,100),
(20618,18,17,2272.641,2403.445,111.7023,0,0,100),
(20618,18,18,2271.731,2403.029,114.0773,0,0,100),
(20618,18,19,2270.822,2402.613,115.5773,0,0,100),
(20618,18,20,2269.004,2401.781,117.7023,0,0,100),
(20618,18,21,2267.186,2400.949,118.9523,0,0,100),
(20618,18,22,2262.64,2398.869,118.2836,0,0,100),
(20618,18,23,2261.682,2398.45,118.2155,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,19,1,2348.138,2427.328,137.0282,0,0,100),
(20618,19,2,2347.345,2426.719,135.9032,0,0,100),
(20618,19,3,2346.552,2426.109,134.7782,0,0,100),
(20618,19,4,2345.759,2425.5,133.0282,0,0,100),
(20618,19,5,2344.173,2424.281,131.4032,0,0,100),
(20618,19,6,2343.38,2423.672,130.1532,0,0,100),
(20618,19,7,2342.587,2423.063,128.7782,0,0,100),
(20618,19,8,2341.001,2421.844,126.6532,0,0,100),
(20618,19,9,2340.208,2421.234,125.5282,0,0,100),
(20618,19,10,2339.415,2420.625,124.0282,0,0,100),
(20618,19,11,2337.829,2419.406,122.5282,0,0,100),
(20618,19,12,2337.036,2418.797,121.5282,0,0,100),
(20618,19,13,2336.243,2418.188,120.1532,0,0,100),
(20618,19,14,2334.657,2416.969,118.9032,0,0,100),
(20618,19,15,2333.864,2416.359,117.7782,0,0,100),
(20618,19,16,2333.071,2415.75,117.0927,0,0,100),
(20618,19,17,2332.278,2415.141,116.3427,0,0,100),
(20618,19,18,2329.899,2413.313,115.3427,0,0,100),
(20618,19,19,2319.591,2405.391,114.5927,0,0,100),
(20618,19,20,2316.419,2402.953,113.8427,0,0,100),
(20618,19,21,2314.04,2401.125,113.0927,0,0,100),
(20618,19,22,2303.731,2393.203,112.2552,0,0,100),
(20618,19,23,2302.938,2392.594,111.2552,0,0,100),
(20618,19,24,2301.353,2391.375,109.5052,0,0,100),
(20618,19,25,2300.56,2390.766,108.5052,0,0,100),
(20618,19,26,2299.767,2390.156,106.1967,0,0,100),
(20618,19,27,2298.974,2389.547,105.1967,0,0,100),
(20618,19,28,2298.181,2388.938,103.6967,0,0,100),
(20618,19,29,2297.388,2388.328,101.9467,0,0,100),
(20618,19,30,2296.595,2387.719,100.8217,0,0,100),
(20618,19,31,2295.802,2387.109,99.69669,0,0,100),
(20618,19,32,2291.837,2384.063,100.3217,0,0,100),
(20618,19,33,2290.251,2382.844,101.9467,0,0,100),
(20618,19,34,2289.458,2382.234,103.1967,0,0,100),
(20618,19,35,2287.872,2381.016,104.6967,0,0,100),
(20618,19,36,2287.079,2380.406,105.5717,0,0,100),
(20618,19,37,2286.286,2379.797,107.9467,0,0,100),
(20618,19,38,2284.7,2378.578,110.5717,0,0,100),
(20618,19,39,2283.907,2377.969,112.9467,0,0,100),
(20618,19,40,2283.114,2377.359,114.1967,0,0,100),
(20618,19,41,2282.321,2376.75,115.1967,0,0,100),
(20618,19,42,2281.528,2376.141,116.3217,0,0,100),
(20618,19,43,2279.942,2374.922,117.3217,0,0,100),
(20618,19,44,2278.356,2373.703,116.6967,0,0,100),
(20618,19,45,2276.771,2372.484,115.6967,0,0,100),
(20618,19,46,2276.771,2372.484,115.6967,0,0,100);
INSERT INTO `creature_movement_template` (`entry`,`pathId`,`point`,`position_x`,`position_y`,`position_z`,`waittime`,`script_id`,`orientation`) VALUES
(20618,20,1,2322.732,2454.401,107.2447,0,0,100),
(20618,20,2,2318.291,2450.364,107.9947,0,0,100),
(20618,20,3,2313.85,2446.327,108.7447,0,0,100),
(20618,20,4,2310.889,2443.636,107.8697,0,0,100),
(20618,20,5,2310.148,2442.963,106.8697,0,0,100),
(20618,20,6,2308.668,2441.617,106.2447,0,0,100),
(20618,20,7,2307.928,2440.944,105.4947,0,0,100),
(20618,20,8,2305.707,2438.926,106.7447,0,0,100),
(20618,20,9,2304.967,2438.253,107.8697,0,0,100),
(20618,20,10,2300.525,2434.216,107.2447,0,0,100),
(20618,20,11,2298.305,2432.197,106.4523,0,0,100),
(20618,20,12,2296.824,2430.852,105.7023,0,0,100),
(20618,20,13,2287.941,2422.777,106.4523,0,0,100),
(20618,20,14,2282.02,2417.395,105.2023,0,0,100),
(20618,20,15,2280.539,2416.049,104.0773,0,0,100),
(20618,20,16,2279.799,2415.376,103.2023,0,0,100),
(20618,20,17,2275.357,2411.339,103.9523,0,0,100),
(20618,20,18,2274.617,2410.666,104.5773,0,0,100),
(20618,20,19,2273.877,2409.993,105.7023,0,0,100),
(20618,20,20,2273.137,2409.32,106.4523,0,0,100),
(20618,20,21,2272.396,2408.647,107.7023,0,0,100),
(20618,20,22,2271.656,2407.975,109.4523,0,0,100),
(20618,20,23,2270.176,2406.629,111.9523,0,0,100),
(20618,20,24,2269.436,2405.956,114.4523,0,0,100),
(20618,20,25,2268.695,2405.283,115.5773,0,0,100),
(20618,20,26,2267.215,2403.938,118.0773,0,0,100),
(20618,20,27,2265.734,2402.592,118.6977,0,0,100),
(20618,20,28,2261.494,2398.738,118.2392,0,0,100),
(20618,20,29,2261.494,2398.738,118.2392,0,0,100);


