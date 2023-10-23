-- AlterTable
ALTER TABLE `scope1_mobilecomsbution` MODIFY `fuel_type` VARCHAR(255) NOT NULL;

-- AlterTable
ALTER TABLE `scope1_stationarycomsbution` MODIFY `fuel_type` VARCHAR(255) NOT NULL,
    MODIFY `fuel_subtype` VARCHAR(255) NOT NULL;
