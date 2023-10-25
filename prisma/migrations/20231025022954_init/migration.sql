-- CreateTable
CREATE TABLE `St_Combus_HeatCont` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `fuelTypeId` INTEGER NOT NULL,
    `heatContentValue` DOUBLE NULL,
    `heatContentUnitId` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Combus_Fuel` (
    `fuelTypeId` INTEGER NOT NULL,
    `fuelType` VARCHAR(255) NOT NULL,
    `fuelSubtype` VARCHAR(255) NOT NULL,

    UNIQUE INDEX `Combus_Fuel_fuelType_fuelSubtype_key`(`fuelType`, `fuelSubtype`),
    PRIMARY KEY (`fuelTypeId`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `St_Combus_Emis` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `fuelTypeId` INTEGER NOT NULL,
    `emissionBase` ENUM('HEAT_CONTENT', 'QUANTITY') NOT NULL,
    `co2EmissionFactor` DOUBLE NOT NULL,
    `co2EmissionFactorUnitId` INTEGER NULL,
    `ch4EmisFct` DOUBLE NOT NULL,
    `ch4EmisFctUnitId` INTEGER NULL,
    `n2oEmisFct` DOUBLE NOT NULL,
    `n2oEmisFctUnitId` INTEGER NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Unit` (
    `id` INTEGER NOT NULL,
    `unit` VARCHAR(191) NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `St_Combus_HeatCont` ADD CONSTRAINT `St_Combus_HeatCont_heatContentUnitId_fkey` FOREIGN KEY (`heatContentUnitId`) REFERENCES `Unit`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `St_Combus_HeatCont` ADD CONSTRAINT `St_Combus_HeatCont_fuelTypeId_fkey` FOREIGN KEY (`fuelTypeId`) REFERENCES `Combus_Fuel`(`fuelTypeId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `St_Combus_Emis` ADD CONSTRAINT `St_Combus_Emis_fuelTypeId_fkey` FOREIGN KEY (`fuelTypeId`) REFERENCES `Combus_Fuel`(`fuelTypeId`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `St_Combus_Emis` ADD CONSTRAINT `St_Combus_Emis_co2EmissionFactorUnitId_fkey` FOREIGN KEY (`co2EmissionFactorUnitId`) REFERENCES `Unit`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `St_Combus_Emis` ADD CONSTRAINT `St_Combus_Emis_ch4EmisFctUnitId_fkey` FOREIGN KEY (`ch4EmisFctUnitId`) REFERENCES `Unit`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `St_Combus_Emis` ADD CONSTRAINT `St_Combus_Emis_n2oEmisFctUnitId_fkey` FOREIGN KEY (`n2oEmisFctUnitId`) REFERENCES `Unit`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
