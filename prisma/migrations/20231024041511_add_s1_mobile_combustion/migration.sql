-- CreateTable
CREATE TABLE `S1_mobile_combustion` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `fuel_type` VARCHAR(191) NOT NULL,
    `emission_factor` DOUBLE NOT NULL,
    `emission_unit` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
