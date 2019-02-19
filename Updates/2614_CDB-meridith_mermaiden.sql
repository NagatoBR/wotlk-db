-- Add missing gossip menu and option for NPC 15526 (Meridith the Mermaiden) in Tanaris
-- This is helpful for completing quest 8597 (Draconic for Dummies) though not mandatory

-- Conditions depending on quest status
DELETE FROM conditions WHERE condition_entry IN (1599, 1600, 1601);
INSERT INTO conditions (condition_entry, type, value1, value2, comments) VALUES
(1599, 8, 8599, 0, 'Quest ID 8599 Rewarded'),
(1600, 9, 8597, 0, 'Quest ID 8597 Taken'),
(1601, -1, 1599, 1600, '(Quest ID 8599 Rewarded AND Quest ID 8597 Taken)');

DELETE FROM gossip_menu WHERE entry=6658 AND text_id=7917;
INSERT INTO gossip_menu (entry, text_id, script_id, condition_id) VALUES
(6658, 7917, 0, 1599);

-- Items below were ported from YTDB.
-- Menu option
DELETE FROM gossip_menu_option WHERE menu_id=6658 AND id=0;
INSERT INTO gossip_menu_option (menu_id,id,option_icon,option_text,option_id,npc_option_npcflag,action_menu_id,action_poi_id,action_script_id,box_coded,box_money,box_text,condition_id) VALUES
(6658, 0, 0, 'That would be wonderful! Thank you, Meridith.', 1, 1, -1, 0, 665801, 0, 0, NULL, 1601);

-- Add script for casting buff onto player
DELETE FROM dbscripts_on_gossip WHERE id=665801;
INSERT INTO dbscripts_on_gossip (id, delay, command, datalong, datalong2, buddy_entry, search_radius, data_flags, dataint, dataint2, dataint3, dataint4, x, y, z, o, comments) VALUES
(665801, 0, 0, 0, 0, 0, 0, 0, 2000000018, 0, 0, 0, 0, 0, 0, 0, 'Meridith - Say'),
(665801, 0, 15, 25678, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 'Meridith - Cast Siren\'s Song');

DELETE FROM dbscript_string WHERE entry=2000000018;
INSERT INTO dbscript_string (entry, content_default) VALUES 
(2000000018, 'Lovely song, ain\'t it?');
