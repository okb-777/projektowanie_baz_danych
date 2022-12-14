SELECT * FROM `fractions`;
SELECT player_nick FROM `fractions`;
SELECT name, lord FROM `fractions`;
SELECT name FROM `fractions` WHERE ideologys_id>1;
SELECT name FROM `biomes` WHERE name LIKE '%a';
SELECT name,defensive,attack,health FROM `divisions`;
SELECT fractions.name, religions.name FROM `fractions` JOIN religions ON religions.id = fractions.religions_id;
SELECT name, discription FROM `buildings` WHERE special IS NOT null;
SELECT name, discription FROM `buildings` WHERE skill IS NOT null;
SELECT divisions.name, divisions.health, divisions_has_resources.size, resources.name FROM `divisions` JOIN divisions_has_resources ON divisions.id = divisions_has_resources.divisions_id JOIN resources ON divisions_has_resources.resources_id = resources.id;
SELECT maps.name, biomes.name FROM `maps` JOIN maps_has_biomes ON maps.id = maps_has_biomes.maps_id JOIN biomes ON biomes.id = maps_has_biomes.biomes_id;
SELECT divisions.name, military.size, moves.size FROM `military` JOIN military_has_divisions ON military_has_divisions.military_id = military.id JOIN divisions ON military_has_divisions.divisions_id = divisions.id JOIN moves ON divisions.moves_id = moves.id;
SELECT fractions.name, fractions.lord, fractions.player_nick ,religions.name, ideologys.name FROM `fractions` JOIN ideologys ON fractions.ideologys_id = ideologys.id JOIN religions ON fractions.religions_id = religions.id;