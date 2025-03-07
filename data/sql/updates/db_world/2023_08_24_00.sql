DROP TABLE IF EXISTS `lua_private_unlock_macros`;
CREATE TABLE `lua_private_unlock_macros` (
  `macro_name` varchar(255) NOT NULL DEFAULT '',
  `enabled` tinyint(3) NOT NULL DEFAULT '1',
  PRIMARY KEY (`macro_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

DELETE FROM `lua_private_unlock_macros` WHERE `macro_name` IN ('CastSpellByName', 'RunMacroText');
INSERT INTO `lua_private_unlock_macros` VALUES 
('CastSpellByName', '1'),
('RunMacroText', '1');

DELETE FROM `firelands_string` WHERE `entry` = 30092;
INSERT INTO `firelands_string` (`entry`, `content_default`, `content_loc1`, `content_loc2`, `content_loc3`, `content_loc4`, `content_loc5`, `content_loc6`, `content_loc7`, `content_loc8`) VALUES
(30092, '|cffffff00[|cffff0000COUNTER MEASURE ALERT|r|cffffff00]:|r |cFFFF8C00|r %s |cFFFF8C00[|Hplayer:%s|h%s|h|r|cFFFF8C00]', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
