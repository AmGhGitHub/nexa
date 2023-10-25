-- CreateTable
CREATE TABLE `S1StationaryCombustionByHeatContent` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `fuel_type_id` INTEGER NOT NULL,
    `fuel_subtype` VARCHAR(255) NOT NULL,
    `heat_content_value` DOUBLE NULL,
    `co2_emission_factor` DOUBLE NOT NULL,
    `co2_emission_factor_unit_id` INTEGER NULL,
    `ch4_emission_factor` DOUBLE NOT NULL,
    `ch4_emission_factor_unit_id` INTEGER NULL,
    `n2o_emission_factor` DOUBLE NOT NULL,
    `n2o_emission_factor_unit_id` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `S1StationaryCombustionByQuantity` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `fuel_type_id` INTEGER NOT NULL,
    `fuel_subtype` VARCHAR(255) NOT NULL,
    `heat_content_value` DOUBLE NULL,
    `co2_emission_factor` DOUBLE NOT NULL,
    `co2_emission_factor_unit_id` INTEGER NULL,
    `ch4_emission_factor` DOUBLE NOT NULL,
    `ch4_emission_factor_unit_id` INTEGER NULL,
    `n2o_emission_factor` DOUBLE NOT NULL,
    `n2o_emission_factor_unit_id` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `S1StationaryCombustionFuel` (
    `fuel_type_id` INTEGER NOT NULL,
    `fuel_type` VARCHAR(255) NOT NULL,
    `heat_content_unit` VARCHAR(255) NULL,

    PRIMARY KEY (`fuel_type_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Unit` (
    `id` INTEGER NOT NULL,
    `unit` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `S1MobileCombustion` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `fuel_type` VARCHAR(191) NOT NULL,
    `emission_factor` DOUBLE NOT NULL,
    `emission_unit_id` INTEGER NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `S1StationaryCombustionByHeatContent` ADD CONSTRAINT `S1StationaryCombustionByHeatContent_fuel_type_id_fkey` FOREIGN KEY (`fuel_type_id`) REFERENCES `S1StationaryCombustionFuel`(`fuel_type_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `S1StationaryCombustionByHeatContent` ADD CONSTRAINT `S1StationaryCombustionByHeatContent_co2_emission_factor_uni_fkey` FOREIGN KEY (`co2_emission_factor_unit_id`) REFERENCES `Unit`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `S1StationaryCombustionByHeatContent` ADD CONSTRAINT `S1StationaryCombustionByHeatContent_ch4_emission_factor_uni_fkey` FOREIGN KEY (`ch4_emission_factor_unit_id`) REFERENCES `Unit`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `S1StationaryCombustionByHeatContent` ADD CONSTRAINT `S1StationaryCombustionByHeatContent_n2o_emission_factor_uni_fkey` FOREIGN KEY (`n2o_emission_factor_unit_id`) REFERENCES `Unit`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `S1StationaryCombustionByQuantity` ADD CONSTRAINT `S1StationaryCombustionByQuantity_fuel_type_id_fkey` FOREIGN KEY (`fuel_type_id`) REFERENCES `S1StationaryCombustionFuel`(`fuel_type_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `S1StationaryCombustionByQuantity` ADD CONSTRAINT `S1StationaryCombustionByQuantity_co2_emission_factor_unit_i_fkey` FOREIGN KEY (`co2_emission_factor_unit_id`) REFERENCES `Unit`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `S1StationaryCombustionByQuantity` ADD CONSTRAINT `S1StationaryCombustionByQuantity_ch4_emission_factor_unit_i_fkey` FOREIGN KEY (`ch4_emission_factor_unit_id`) REFERENCES `Unit`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `S1StationaryCombustionByQuantity` ADD CONSTRAINT `S1StationaryCombustionByQuantity_n2o_emission_factor_unit_i_fkey` FOREIGN KEY (`n2o_emission_factor_unit_id`) REFERENCES `Unit`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `S1MobileCombustion` ADD CONSTRAINT `S1MobileCombustion_emission_unit_id_fkey` FOREIGN KEY (`emission_unit_id`) REFERENCES `Unit`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
