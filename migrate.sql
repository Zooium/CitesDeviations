-- Family 'Loriidae' is now considered a tribe of '	Psittaculidae'.
UPDATE `regulations` SET `binding` = 'incompatible' WHERE `source_id` = 196 AND `resource_id` IS NULL;

-- Specie 'Aceros waldeni' is synonym of 'Rhabdotorrhinus waldeni'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Rhabdotorrhinus waldeni'
) WHERE `source_id` = 9509 AND `resource_id` IS NULL;

-- Specie 'Amazilia cupreicauda' was lumped with 'Amazilia viridigaster'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Amazilia viridigaster'
) WHERE `source_id` = 7988 AND `resource_id` IS NULL;

-- Specie 'Amazilia saucerrottei' is synonym of 'Amazilia saucerottei'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Amazilia saucerottei'
) WHERE `source_id` = 4577 AND `resource_id` IS NULL;

-- Specie 'Chalcopsitta sintillata' is synonym of 'Chalcopsitta scintillata'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Chalcopsitta scintillata'
) WHERE `source_id` = 10336 AND `resource_id` IS NULL;

-- Specie 'Dryotriorchis spectabilis' is synonym of 'Circaetus spectabilis'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Circaetus spectabilis'
) WHERE `source_id` = 9248 AND `resource_id` IS NULL;

-- Specie 'Heliangelus zusii' was lumped with 'Aglaiocercus kingii'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Aglaiocercus kingii'
) WHERE `source_id` = 55213 AND `resource_id` IS NULL;

-- Specie 'Ichthyophaga humilis' is synonym of 'Haliaeetus humilis'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Haliaeetus humilis'
) WHERE `source_id` = 4328 AND `resource_id` IS NULL;

-- Specie 'Ichthyophaga ichthyaetus' is synonym of 'Haliaeetus ichthyaetus'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Haliaeetus ichthyaetus'
) WHERE `source_id` = 6124 AND `resource_id` IS NULL;

-- Specie 'Phaethornis aethopyga' is synonym of 'Phaethornis aethopygus'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Phaethornis aethopygus'
) WHERE `source_id` = 7235 AND `resource_id` IS NULL;

-- Specie 'Pterocnemia pennata pennata' is synonym of 'Rhea pennata pennata'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Rhea pennata pennata'
) WHERE `source_id` = 12316 AND `resource_id` IS NULL;

-- Specie 'Eupodotis rueppellii' is synonym of 'Eupodotis rueppelii'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Eupodotis rueppelii'
) WHERE `source_id` = 9429 AND `resource_id` IS NULL;

-- Specie 'Grus canadensis nesiotes' is synonym of 'Antigone canadensis nesiotes'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Antigone canadensis nesiotes'
) WHERE `source_id` = 12283 AND `resource_id` IS NULL;

-- Specie 'Otus colombianus' is synonym of 'Megascops colombianus'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Megascops colombianus'
) WHERE `source_id` = 5732 AND `resource_id` IS NULL;

-- Specie 'Otus vermiculatus' is synonym of 'Megascops vermiculatus'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Megascops vermiculatus'
) WHERE `source_id` = 9435 AND `resource_id` IS NULL;

-- Specie 'Pitta guajana' is synonym of 'Hydrornis guajanus'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Hydrornis guajanus'
) WHERE `source_id` = 4015 AND `resource_id` IS NULL;

-- Specie 'Thalurania fannyi' is now a subspecie of 'Thalurania colombica (fannyi)'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Thalurania colombica fannyi'
) WHERE `source_id` = 7783 AND `resource_id` IS NULL;

-- Specie 'Amazilia alticola' is synonym of 'Amazilia alticola alticola'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Amazilia alticola alticola'
) WHERE `source_id` = 8074 AND `resource_id` IS NULL;

-- Specie 'Pyrrhura eisenmanni' is now a subspecie of 'Pyrrhura picta (eisenmanni)'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `species` WHERE `scientific` = 'Pyrrhura picta eisenmanni'
) WHERE `source_id` = 6455 AND `resource_id` IS NULL;

-- Specie 'Psittacula intermedia' is a hybrid of 'Psittacula cyanocephala' and 'Psittacula himalayana'.
UPDATE `regulations` SET `binding` = 'incompatible' WHERE `source_id` = 5638 AND `resource_id` IS NULL;

-- Remove genera already cover by existing listing.
UPDATE `regulations` SET `binding` = 'incompatible' WHERE `source_id` = 2315 AND `resource_id` IS NULL; -- Now Grus
UPDATE `regulations` SET `binding` = 'incompatible' WHERE `source_id` = 1548 AND `resource_id` IS NULL; -- Now Grus
UPDATE `regulations` SET `binding` = 'incompatible' WHERE `source_id` = 2411 AND `resource_id` IS NULL; -- Now Circaetus
UPDATE `regulations` SET `binding` = 'incompatible' WHERE `source_id` = 972 AND `resource_id` IS NULL; -- Now Selasphorus
UPDATE `regulations` SET `binding` = 'incompatible' WHERE `source_id` = 2074 AND `resource_id` IS NULL; -- Now Spizaetus
UPDATE `regulations` SET `binding` = 'incompatible' WHERE `source_id` = 728 AND `resource_id` IS NULL; -- Now Otus
UPDATE `regulations` SET `binding` = 'incompatible' WHERE `source_id` = 1820 AND `resource_id` IS NULL; -- Now Spizaetus
UPDATE `regulations` SET `binding` = 'incompatible' WHERE `source_id` = 2482 AND `resource_id` IS NULL; -- Now Bubo
UPDATE `regulations` SET `binding` = 'incompatible' WHERE `source_id` = 2091 AND `resource_id` IS NULL; -- Now Aratinga
UPDATE `regulations` SET `binding` = 'incompatible' WHERE `source_id` = 1680 AND `resource_id` IS NULL; -- Now Otus
UPDATE `regulations` SET `binding` = 'incompatible' WHERE `source_id` = 855 AND `resource_id` IS NULL; -- Now Haliaeetus
UPDATE `regulations` SET `binding` = 'incompatible' WHERE `source_id` = 981 AND `resource_id` IS NULL; -- Now Athene
UPDATE `regulations` SET `binding` = 'incompatible' WHERE `source_id` = 2449 AND `resource_id` IS NULL; -- Now Buteogallus

-- Genus 'Asturina' was renamed to 'Buteo'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `specie_genera` WHERE `scientific` = 'Buteo'
) WHERE `source_id` = 1431 AND `resource_id` IS NULL;

-- Genus 'Ciccaba' was renamed to 'Strix'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `specie_genera` WHERE `scientific` = 'Strix'
) WHERE `source_id` = 2327 AND `resource_id` IS NULL;

-- Genus 'Damophila' was renamed to 'Juliamyia'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `specie_genera` WHERE `scientific` = 'Juliamyia'
) WHERE `source_id` = 2245 AND `resource_id` IS NULL;

-- Genus 'Damophila' was renamed to 'Juliamyia'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `specie_genera` WHERE `scientific` = 'Juliamyia'
) WHERE `source_id` = 2245 AND `resource_id` IS NULL;

-- Genus 'Gymnoglaux' was renamed to 'Margarobyas'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `specie_genera` WHERE `scientific` = 'Margarobyas'
) WHERE `source_id` = 1059 AND `resource_id` IS NULL;

-- Genus 'Guarouba' was renamed to 'Guaruba'.
UPDATE `regulations` SET `binding` = 'manual', `resource_id` = (
    SELECT `id` FROM `specie_genera` WHERE `scientific` = 'Guaruba'
) WHERE `source_id` = 2108 AND `resource_id` IS NULL;
