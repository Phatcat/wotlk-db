-- Drak'Tharon Keep entrance - event

-- Pacer Bunny - Drak Theron Exterior 26591
UPDATE creature SET spawndist = 0, MovementType = 2 WHERE guid IN (514924);
DELETE FROM creature_movement WHERE id IN (514924);
INSERT INTO creature_movement (id,point,position_x,position_y,position_z,orientation,waittime,script_id) VALUES
(514924,1,4567.75,-2044.33,184.255,5.21853,100,12),
(514924,2,4567.75,-2044.33,184.255,5.21853,1000,3);
DELETE FROM dbscript_random_templates WHERE id = 20223;
INSERT INTO dbscript_random_templates (id, type, target_id, chance, comments) VALUES
(20223,1,20538,0,'26591 - Random Script 1'),
(20223,1,20539,0,'26591 - Random Script 2'),
(20223,1,20540,0,'26591 - Random Script 3'),
(20223,1,20541,0,'26591 - Random Script 4'),
(20223,1,20542,0,'26591 - Random Script 5'),
(20223,1,20543,0,'26591 - Random Script 6'),
(20223,1,20544,0,'26591 - Random Script 7'),
(20223,1,20545,0,'26591 - Random Script 8'),
(20223,1,20546,0,'26591 - Random Script 9'),
(20223,1,20547,0,'26591 - Random Script 10'),
(20223,1,20548,0,'26591 - Random Script 11'),
(20223,1,20549,0,'26591 - Random Script 12');
DELETE FROM dbscripts_on_relay WHERE id BETWEEN 20538 AND 20549;
INSERT INTO dbscripts_on_relay (id, delay, command, datalong, datalong2, datalong3, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(20538,0,10,26582,180000,1,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26582 - path 1'),
(20539,0,10,26582,180000,2,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26582 - path 2'),
(20540,0,10,26582,180000,3,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26582 - path 3'),
(20541,0,10,26582,180000,4,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26582 - path 4'),
(20542,0,10,26582,180000,5,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26582 - path 5'),
(20543,0,10,26582,180000,6,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26582 - path 6'),
(20544,0,10,26583,180000,1,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26583 - path 1'),
(20545,0,10,26583,180000,2,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26583 - path 2'),
(20546,0,10,26583,180000,3,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26583 - path 3'),
(20547,0,10,26583,180000,4,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26583 - path 4'),
(20548,0,10,26583,180000,5,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26583 - path 5'),
(20549,0,10,26583,180000,6,0,0,0x08,1,0,0,0,4680.76,-2045.16,189.722,3.13925,'Part of Pacer Bunny - Drak Theron Exterior EAI: summon 26583 - path 6');

-- Horrified Drakkari Warrior 26582
-- Horrified Drakkari Shaman 26583
-- shouldnt be static
DELETE FROM creature_addon WHERE guid IN (SELECT guid FROM creature WHERE id IN (26582,26583));
DELETE FROM creature_movement WHERE id IN (SELECT guid FROM creature WHERE id IN (26582,26583));
DELETE FROM game_event_creature WHERE guid IN (SELECT guid FROM creature WHERE id IN (26582,26583));
DELETE FROM game_event_creature_data WHERE guid IN (SELECT guid FROM creature WHERE id IN (26582,26583));
DELETE FROM creature_battleground WHERE guid IN (SELECT guid FROM creature WHERE id IN (26582,26583));
DELETE FROM creature_linking WHERE guid IN (SELECT guid FROM creature WHERE id IN (26582,26583))
OR master_guid IN (SELECT guid FROM creature WHERE id IN (26582,26583));
DELETE FROM creature WHERE id IN (26582,26583);
-- waypoints
UPDATE creature_template SET MovementType = 2 WHERE entry IN (26582,26583);
DELETE FROM creature_movement_template WHERE entry IN (26582,26583);
INSERT INTO creature_movement_template (entry, pathId, point, position_x, position_y, position_z, orientation, waittime, script_id) VALUES
-- 1st
(26582,1,1,4691.6,-2046.95,195.139,100,0,0),
(26582,1,2,4674.26,-2047.4,186.84,100,0,0),
(26582,1,3,4669.41,-2047.44,184.192,100,0,0),
(26582,1,4,4656.64,-2050.07,184.213,100,0,0),
(26582,1,5,4644.58,-2060.09,184.18,100,0,0),
(26582,1,6,4627.95,-2062.7,184.182,100,0,0),
(26582,1,7,4611.42,-2062.83,184.184,100,0,0),
(26582,1,8,4598.45,-2062.36,184.187,100,0,0),
(26582,1,9,4582.29,-2062.45,184.187,100,0,0),
(26582,1,10,4570.54,-2062.86,184.16,100,0,0),
(26582,1,11,4562.26,-2063.6,184.166,100,0,0),
(26582,1,12,4548.27,-2064.09,176.275,100,0,0),
(26582,1,13,4533.51,-2064.27,167.876,100,0,0),
(26582,1,14,4521.95,-2063.93,161.29,100,0,0),
(26582,1,15,4506.95,-2063.87,160.823,100,0,0),
(26582,1,16,4495.83,-2065.19,160.823,100,0,0),
(26582,1,17,4487.82,-2076.43,160.823,100,0,0),
(26582,1,18,4486.77,-2087.48,160.823,100,0,0),
(26582,1,19,4492.43,-2098.76,160.824,100,0,0),
(26582,1,20,4506.2,-2109.47,160.825,100,0,0),
(26582,1,21,4522.34,-2119.37,160.831,100,0,0),
(26582,1,22,4533.45,-2128.02,160.863,100,0,0),
(26582,1,23,4541.23,-2141.36,160.843,100,0,0),
(26582,1,24,4549.95,-2154.7,160.843,100,0,0),
(26582,1,25,4550.54,-2174.73,160.844,100,0,0),
(26582,1,26,4550.98,-2193.93,164.225,100,0,0),
(26582,1,27,4546.76,-2206.98,167.204,100,0,0),
(26582,1,28,4531.46,-2216.79,169.58,100,0,0),
(26582,1,29,4522.15,-2228.33,172.646,100,100,1),
-- 2nd
(26582,2,1,4669.35,-2047.2,184.192,100,0,0),
(26582,2,2,4651.56,-2051.42,184.368,100,0,0),
(26582,2,3,4643.48,-2058.4,184.183,100,0,0),
(26582,2,4,4630.66,-2060.41,183.864,100,0,0),
(26582,2,5,4615.46,-2060.64,184.182,100,0,0),
(26582,2,6,4601.36,-2060.73,184.44,100,0,0),
(26582,2,7,4590.86,-2060.77,184.187,100,0,0),
(26582,2,8,4576.06,-2061.01,184.179,100,0,0),
(26582,2,9,4562.61,-2061.07,184.166,100,0,0),
(26582,2,10,4551.13,-2061.26,177.886,100,0,0),
(26582,2,11,4538.89,-2061.42,170.924,100,0,0),
(26582,2,12,4522.37,-2061.29,161.519,100,0,0),
(26582,2,13,4506.34,-2061.99,160.823,100,0,0),
(26582,2,14,4495.5,-2063.89,160.823,100,0,0),
(26582,2,15,4489.86,-2077.39,160.823,100,0,0),
(26582,2,16,4488.48,-2090.83,160.823,100,0,0),
(26582,2,17,4501.43,-2105.16,160.827,100,0,0),
(26582,2,18,4509.77,-2116.35,160.829,100,0,0),
(26582,2,19,4508.52,-2133.01,163.224,100,0,0),
(26582,2,20,4502.23,-2143.87,165.435,100,0,0),
(26582,2,21,4485.13,-2153.15,168.45,100,0,0),
(26582,2,22,4468.39,-2158.99,173.914,100,0,0),
(26582,2,23,4456.74,-2161.08,176.661,100,0,0),
(26582,2,24,4434.54,-2161.72,182.601,100,100,1),
-- 3rd
(26582,3,1,4669.89,-2045.38,184.315,100,0,0),
(26582,3,2,4657.33,-2049.33,184.368,100,0,0),
(26582,3,3,4645.39,-2059.51,184.181,100,0,0),
(26582,3,4,4629.27,-2061.32,183.863,100,0,0),
(26582,3,5,4615.91,-2061.15,184.182,100,0,0),
(26582,3,6,4596.93,-2059.86,184.187,100,0,0),
(26582,3,7,4581.16,-2059.7,184.187,100,0,0),
(26582,3,8,4563.06,-2060.07,184.166,100,0,0),
(26582,3,9,4547.67,-2060.61,175.917,100,0,0),
(26582,3,10,4522.19,-2060.17,161.411,100,0,0),
(26582,3,11,4499.5,-2062.45,160.823,100,0,0),
(26582,3,12,4483.27,-2069.79,160.823,100,0,0),
(26582,3,13,4467.7,-2076.28,163.124,100,0,0),
(26582,3,14,4452.8,-2080.13,164.347,100,0,0),
(26582,3,15,4429.04,-2085.91,167.602,100,0,0),
(26582,3,16,4415.67,-2090.91,170.746,100,100,1),
-- 4th
(26582,4,1,4669.33,-2043.6,184.193,100,0,0),
(26582,4,2,4658.68,-2041.4,183.771,100,0,0),
(26582,4,3,4647.83,-2034.7,184.184,100,0,0),
(26582,4,4,4639.85,-2031.59,184.184,100,0,0),
(26582,4,5,4628.02,-2030.18,184.183,100,0,0),
(26582,4,6,4610.67,-2029.56,184.186,100,0,0),
(26582,4,7,4594.34,-2029.11,184.012,100,0,0),
(26582,4,8,4580.36,-2028.48,184.186,100,0,0),
(26582,4,9,4563.11,-2027.98,184.166,100,0,0),
(26582,4,10,4548.47,-2027.36,176.203,100,0,0),
(26582,4,11,4534.09,-2027.08,168.016,100,0,0),
(26582,4,12,4522.41,-2026.87,161.37,100,0,0),
(26582,4,13,4507.95,-2026.31,160.829,100,0,0),
(26582,4,14,4495.84,-2022.33,160.823,100,0,0),
(26582,4,15,4493.14,-2008.55,160.823,100,0,0),
(26582,4,16,4492.95,-1993.52,160.823,100,0,0),
(26582,4,17,4502.66,-1975.68,160.823,100,0,0),
(26582,4,18,4518.95,-1958.73,160.823,100,0,0),
(26582,4,19,4532.44,-1943.64,160.823,100,0,0),
(26582,4,20,4539.1,-1926.84,161.35,100,0,0),
(26582,4,21,4543.54,-1909.03,163.359,100,0,0),
(26582,4,22,4544.35,-1892.52,165.7,100,0,0),
(26582,4,23,4545.07,-1878.16,165.435,100,100,1),
-- 5th
(26582,5,1,4670.35,-2042.83,184.532,100,0,0),
(26582,5,2,4659.21,-2040.21,184.371,100,0,0),
(26582,5,3,4646.73,-2032.58,184.184,100,0,0),
(26582,5,4,4639.03,-2029.31,184.182,100,0,0),
(26582,5,5,4621.75,-2028.03,184.183,100,0,0),
(26582,5,6,4606.18,-2027.64,184.186,100,0,0),
(26582,5,7,4590.5,-2027.51,184.187,100,0,0),
(26582,5,8,4575.59,-2026.86,184.186,100,0,0),
(26582,5,9,4562.63,-2026.43,184.166,100,0,0),
(26582,5,10,4547.24,-2025.69,175.498,100,0,0),
(26582,5,11,4532.97,-2025.22,167.372,100,0,0),
(26582,5,12,4523.07,-2025.03,161.738,100,0,0),
(26582,5,13,4506.94,-2024.56,160.823,100,0,0),
(26582,5,14,4493.84,-2018.39,160.823,100,0,0),
(26582,5,15,4488.98,-2001.06,160.823,100,0,0),
(26582,5,16,4486.97,-1964.18,161.847,100,0,0),
(26582,5,17,4479.07,-1942.91,161.68,100,0,0),
(26582,5,18,4468.99,-1923.26,161.972,100,0,0),
(26582,5,19,4457.01,-1903.59,162.548,100,100,1),
-- 6th
(26582,6,1,4668.83,-2044.18,184.193,100,0,0),
(26582,6,2,4655.9,-2042.19,183.773,100,0,0),
(26582,6,3,4647.84,-2033.52,184.184,100,0,0),
(26582,6,4,4635.95,-2029.73,184.182,100,0,0),
(26582,6,5,4621.99,-2029.17,184.183,100,0,0),
(26582,6,6,4604.44,-2029.25,184.187,100,0,0),
(26582,6,7,4587.26,-2029.01,184.187,100,0,0),
(26582,6,8,4572.98,-2028.93,184.184,100,0,0),
(26582,6,9,4563.18,-2028.84,184.166,100,0,0),
(26582,6,10,4542.46,-2028.43,172.789,100,0,0),
(26582,6,11,4523.14,-2027.83,161.791,100,0,0),
(26582,6,12,4499.16,-2025.88,160.823,100,0,0),
(26582,6,13,4480.53,-2020.81,160.875,100,0,0),
(26582,6,14,4458.27,-2017.5,162.309,100,0,0),
(26582,6,15,4423.92,-2019.88,160.78,100,100,1),
-- 1st
(26583,1,1,4691.6,-2046.95,195.139,100,0,0),
(26583,1,2,4674.26,-2047.4,186.84,100,0,0),
(26583,1,3,4669.41,-2047.44,184.192,100,0,0),
(26583,1,4,4656.64,-2050.07,184.213,100,0,0),
(26583,1,5,4644.58,-2060.09,184.18,100,0,0),
(26583,1,6,4627.95,-2062.7,184.182,100,0,0),
(26583,1,7,4611.42,-2062.83,184.184,100,0,0),
(26583,1,8,4598.45,-2062.36,184.187,100,0,0),
(26583,1,9,4582.29,-2062.45,184.187,100,0,0),
(26583,1,10,4570.54,-2062.86,184.16,100,0,0),
(26583,1,11,4562.26,-2063.6,184.166,100,0,0),
(26583,1,12,4548.27,-2064.09,176.275,100,0,0),
(26583,1,13,4533.51,-2064.27,167.876,100,0,0),
(26583,1,14,4521.95,-2063.93,161.29,100,0,0),
(26583,1,15,4506.95,-2063.87,160.823,100,0,0),
(26583,1,16,4495.83,-2065.19,160.823,100,0,0),
(26583,1,17,4487.82,-2076.43,160.823,100,0,0),
(26583,1,18,4486.77,-2087.48,160.823,100,0,0),
(26583,1,19,4492.43,-2098.76,160.824,100,0,0),
(26583,1,20,4506.2,-2109.47,160.825,100,0,0),
(26583,1,21,4522.34,-2119.37,160.831,100,0,0),
(26583,1,22,4533.45,-2128.02,160.863,100,0,0),
(26583,1,23,4541.23,-2141.36,160.843,100,0,0),
(26583,1,24,4549.95,-2154.7,160.843,100,0,0),
(26583,1,25,4550.54,-2174.73,160.844,100,0,0),
(26583,1,26,4550.98,-2193.93,164.225,100,0,0),
(26583,1,27,4546.76,-2206.98,167.204,100,0,0),
(26583,1,28,4531.46,-2216.79,169.58,100,0,0),
(26583,1,29,4522.15,-2228.33,172.646,100,100,1),
-- 2nd
(26583,2,1,4669.35,-2047.2,184.192,100,0,0),
(26583,2,2,4651.56,-2051.42,184.368,100,0,0),
(26583,2,3,4643.48,-2058.4,184.183,100,0,0),
(26583,2,4,4630.66,-2060.41,183.864,100,0,0),
(26583,2,5,4615.46,-2060.64,184.182,100,0,0),
(26583,2,6,4601.36,-2060.73,184.44,100,0,0),
(26583,2,7,4590.86,-2060.77,184.187,100,0,0),
(26583,2,8,4576.06,-2061.01,184.179,100,0,0),
(26583,2,9,4562.61,-2061.07,184.166,100,0,0),
(26583,2,10,4551.13,-2061.26,177.886,100,0,0),
(26583,2,11,4538.89,-2061.42,170.924,100,0,0),
(26583,2,12,4522.37,-2061.29,161.519,100,0,0),
(26583,2,13,4506.34,-2061.99,160.823,100,0,0),
(26583,2,14,4495.5,-2063.89,160.823,100,0,0),
(26583,2,15,4489.86,-2077.39,160.823,100,0,0),
(26583,2,16,4488.48,-2090.83,160.823,100,0,0),
(26583,2,17,4501.43,-2105.16,160.827,100,0,0),
(26583,2,18,4509.77,-2116.35,160.829,100,0,0),
(26583,2,19,4508.52,-2133.01,163.224,100,0,0),
(26583,2,20,4502.23,-2143.87,165.435,100,0,0),
(26583,2,21,4485.13,-2153.15,168.45,100,0,0),
(26583,2,22,4468.39,-2158.99,173.914,100,0,0),
(26583,2,23,4456.74,-2161.08,176.661,100,0,0),
(26583,2,24,4434.54,-2161.72,182.601,100,100,1),
-- 3rd
(26583,3,1,4669.89,-2045.38,184.315,100,0,0),
(26583,3,2,4657.33,-2049.33,184.368,100,0,0),
(26583,3,3,4645.39,-2059.51,184.181,100,0,0),
(26583,3,4,4629.27,-2061.32,183.863,100,0,0),
(26583,3,5,4615.91,-2061.15,184.182,100,0,0),
(26583,3,6,4596.93,-2059.86,184.187,100,0,0),
(26583,3,7,4581.16,-2059.7,184.187,100,0,0),
(26583,3,8,4563.06,-2060.07,184.166,100,0,0),
(26583,3,9,4547.67,-2060.61,175.917,100,0,0),
(26583,3,10,4522.19,-2060.17,161.411,100,0,0),
(26583,3,11,4499.5,-2062.45,160.823,100,0,0),
(26583,3,12,4483.27,-2069.79,160.823,100,0,0),
(26583,3,13,4467.7,-2076.28,163.124,100,0,0),
(26583,3,14,4452.8,-2080.13,164.347,100,0,0),
(26583,3,15,4429.04,-2085.91,167.602,100,0,0),
(26583,3,16,4415.67,-2090.91,170.746,100,100,1),
-- 4th
(26583,4,1,4669.33,-2043.6,184.193,100,0,0),
(26583,4,2,4658.68,-2041.4,183.771,100,0,0),
(26583,4,3,4647.83,-2034.7,184.184,100,0,0),
(26583,4,4,4639.85,-2031.59,184.184,100,0,0),
(26583,4,5,4628.02,-2030.18,184.183,100,0,0),
(26583,4,6,4610.67,-2029.56,184.186,100,0,0),
(26583,4,7,4594.34,-2029.11,184.012,100,0,0),
(26583,4,8,4580.36,-2028.48,184.186,100,0,0),
(26583,4,9,4563.11,-2027.98,184.166,100,0,0),
(26583,4,10,4548.47,-2027.36,176.203,100,0,0),
(26583,4,11,4534.09,-2027.08,168.016,100,0,0),
(26583,4,12,4522.41,-2026.87,161.37,100,0,0),
(26583,4,13,4507.95,-2026.31,160.829,100,0,0),
(26583,4,14,4495.84,-2022.33,160.823,100,0,0),
(26583,4,15,4493.14,-2008.55,160.823,100,0,0),
(26583,4,16,4492.95,-1993.52,160.823,100,0,0),
(26583,4,17,4502.66,-1975.68,160.823,100,0,0),
(26583,4,18,4518.95,-1958.73,160.823,100,0,0),
(26583,4,19,4532.44,-1943.64,160.823,100,0,0),
(26583,4,20,4539.1,-1926.84,161.35,100,0,0),
(26583,4,21,4543.54,-1909.03,163.359,100,0,0),
(26583,4,22,4544.35,-1892.52,165.7,100,0,0),
(26583,4,23,4545.07,-1878.16,165.435,100,100,1),
-- 5th
(26583,5,1,4670.35,-2042.83,184.532,100,0,0),
(26583,5,2,4659.21,-2040.21,184.371,100,0,0),
(26583,5,3,4646.73,-2032.58,184.184,100,0,0),
(26583,5,4,4639.03,-2029.31,184.182,100,0,0),
(26583,5,5,4621.75,-2028.03,184.183,100,0,0),
(26583,5,6,4606.18,-2027.64,184.186,100,0,0),
(26583,5,7,4590.5,-2027.51,184.187,100,0,0),
(26583,5,8,4575.59,-2026.86,184.186,100,0,0),
(26583,5,9,4562.63,-2026.43,184.166,100,0,0),
(26583,5,10,4547.24,-2025.69,175.498,100,0,0),
(26583,5,11,4532.97,-2025.22,167.372,100,0,0),
(26583,5,12,4523.07,-2025.03,161.738,100,0,0),
(26583,5,13,4506.94,-2024.56,160.823,100,0,0),
(26583,5,14,4493.84,-2018.39,160.823,100,0,0),
(26583,5,15,4488.98,-2001.06,160.823,100,0,0),
(26583,5,16,4486.97,-1964.18,161.847,100,0,0),
(26583,5,17,4479.07,-1942.91,161.68,100,0,0),
(26583,5,18,4468.99,-1923.26,161.972,100,0,0),
(26583,5,19,4457.01,-1903.59,162.548,100,100,1),
-- 6th
(26583,6,1,4668.83,-2044.18,184.193,100,0,0),
(26583,6,2,4655.9,-2042.19,183.773,100,0,0),
(26583,6,3,4647.84,-2033.52,184.184,100,0,0),
(26583,6,4,4635.95,-2029.73,184.182,100,0,0),
(26583,6,5,4621.99,-2029.17,184.183,100,0,0),
(26583,6,6,4604.44,-2029.25,184.187,100,0,0),
(26583,6,7,4587.26,-2029.01,184.187,100,0,0),
(26583,6,8,4572.98,-2028.93,184.184,100,0,0),
(26583,6,9,4563.18,-2028.84,184.166,100,0,0),
(26583,6,10,4542.46,-2028.43,172.789,100,0,0),
(26583,6,11,4523.14,-2027.83,161.791,100,0,0),
(26583,6,12,4499.16,-2025.88,160.823,100,0,0),
(26583,6,13,4480.53,-2020.81,160.875,100,0,0),
(26583,6,14,4458.27,-2017.5,162.309,100,0,0),
(26583,6,15,4423.92,-2019.88,160.78,100,100,1);
