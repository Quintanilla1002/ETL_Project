---Queries for the Databases that have been created
---Pull all Epic quality items from the mh_weapons(Main hand) and oh_weapons (Off-Hand) tables
SELECT mh_weapons.id,mh_weapons.name, mh_weapons.quality,
	   oh_weapons.id,oh_weapons.name, oh_weapons.quality
FROM mh_weapons
JOIN oh_weapons ON
mh_weapons.quality=oh_weapons.quality
WHERE mh_weapons.quality='Epic'
OR oh_weapons.quality='Epic';

---Pull all One Hand weapons from the onehand_weapons table that has a speed less than 2 seconds and a quality of uncommon
SELECT name, quality, weapon_speed_in_seconds
from onehand_weapons
WHERE weapon_speed_in_seconds <= 2
AND quality = 'Uncommon'

