-- CreateTable
CREATE TABLE `Scope1_StationaryComsbution` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `fuel_type` VARCHAR(191) NOT NULL,
    `fuel_subtype` VARCHAR(191) NOT NULL,
    `heat_content` DOUBLE NOT NULL,
    `heat_content_unit` VARCHAR(191) NOT NULL,
    `co2_emission_factor` DOUBLE NOT NULL,
    `co2_emission_factor_unit` VARCHAR(191) NOT NULL,
    `ch4_emission_factor` DOUBLE NOT NULL,
    `ch4_emission_factor_unit` VARCHAR(191) NOT NULL,
    `n2o_emission_factor` DOUBLE NOT NULL,
    `n2o_emission_factor_unit` VARCHAR(191) NOT NULL,
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Scope1_MobileComsbution` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `fuel_type` VARCHAR(191) NOT NULL,
    `co2_emission_factor` DOUBLE NOT NULL,
    `co2_emission_factor_unit` VARCHAR(191) NOT NULL,
    `updatedAt` DATETIME(3) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
