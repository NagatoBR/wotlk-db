-- Jormungar Tunneler 26467
-- missing added
DELETE FROM creature_addon WHERE guid IN (515999,517522,517523,517524,517736,518906,518910,518913);
DELETE FROM creature_movement WHERE id IN (515999,517522,517523,517524,517736,518906,518910,518913);
DELETE FROM game_event_creature WHERE guid IN (515999,517522,517523,517524,517736,518906,518910,518913);
DELETE FROM game_event_creature_data WHERE guid IN (515999,517522,517523,517524,517736,518906,518910,518913);
DELETE FROM creature_battleground WHERE guid IN (515999,517522,517523,517524,517736,518906,518910,518913);
DELETE FROM creature_linking WHERE guid IN (515999,517522,517523,517524,517736,518906,518910,518913)
 OR master_guid IN (515999,517522,517523,517524,517736,518906,518910,518913);
DELETE FROM creature WHERE guid IN (515999,517522,517523,517524,517736,518906,518910,518913);
INSERT INTO creature (guid, id, map, spawnmask, phasemask, modelid, equipment_id, position_x, position_y, position_z, orientation, spawntimesecsmin, spawntimesecsmax, spawndist, currentwaypoint, curhealth, curmana, DeathState, MovementType) values
(515999,26467,571,1,1,0,0,4726.03,733.893,128.832,6.12,300,300,7,0,9940,0,0,1),
(517522,26467,571,1,1,0,0,4679.4,697.329,113.639,0.08,300,300,7,0,9940,0,0,1),
(517523,26467,571,1,1,0,0,4634.17,732.502,105.068,1.71,300,300,7,0,9940,0,0,1),
(517524,26467,571,1,1,0,0,4635.46,786.935,100.463,4.92,300,300,7,0,9940,0,0,1),
(517736,26467,571,1,1,0,0,4686.47,776.599,112.526,0.74,300,300,7,0,9940,0,0,1),
(518906,26467,571,1,1,0,0,4587.14,715.716,94.3833,4.66,300,300,7,0,9940,0,0,1),
(518910,26467,571,1,1,0,0,4606.54,679.546,97.797,0.42,300,300,7,0,9940,0,0,1),
(518913,26467,571,1,1,0,0,4735.05,802.941,131.636,0.21,300,300,7,0,9940,0,0,1);
