/*
  Warnings:

  - Made the column `ch4EmisFctUnitId` on table `st_combus_emis` required. This step will fail if there are existing NULL values in that column.
  - Made the column `n2oEmisFctUnitId` on table `st_combus_emis` required. This step will fail if there are existing NULL values in that column.
  - Made the column `co2EmisFctUnitId` on table `st_combus_emis` required. This step will fail if there are existing NULL values in that column.
  - Made the column `heatContentValue` on table `st_combus_heatcont` required. This step will fail if there are existing NULL values in that column.
  - Made the column `heatContentUnitId` on table `st_combus_heatcont` required. This step will fail if there are existing NULL values in that column.

*/
-- DropForeignKey
ALTER TABLE `st_combus_emis` DROP FOREIGN KEY `St_Combus_Emis_ch4EmisFctUnitId_fkey`;

-- DropForeignKey
ALTER TABLE `st_combus_emis` DROP FOREIGN KEY `St_Combus_Emis_co2EmisFctUnitId_fkey`;

-- DropForeignKey
ALTER TABLE `st_combus_emis` DROP FOREIGN KEY `St_Combus_Emis_n2oEmisFctUnitId_fkey`;

-- DropForeignKey
ALTER TABLE `st_combus_heatcont` DROP FOREIGN KEY `St_Combus_HeatCont_heatContentUnitId_fkey`;

-- AlterTable
ALTER TABLE `st_combus_emis` MODIFY `ch4EmisFctUnitId` INTEGER NOT NULL,
    MODIFY `n2oEmisFctUnitId` INTEGER NOT NULL,
    MODIFY `co2EmisFctUnitId` INTEGER NOT NULL;

-- AlterTable
ALTER TABLE `st_combus_heatcont` MODIFY `heatContentValue` DOUBLE NOT NULL,
    MODIFY `heatContentUnitId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `St_Combus_HeatCont` ADD CONSTRAINT `St_Combus_HeatCont_heatContentUnitId_fkey` FOREIGN KEY (`heatContentUnitId`) REFERENCES `Unit`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `St_Combus_Emis` ADD CONSTRAINT `St_Combus_Emis_co2EmisFctUnitId_fkey` FOREIGN KEY (`co2EmisFctUnitId`) REFERENCES `Unit`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `St_Combus_Emis` ADD CONSTRAINT `St_Combus_Emis_ch4EmisFctUnitId_fkey` FOREIGN KEY (`ch4EmisFctUnitId`) REFERENCES `Unit`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE `St_Combus_Emis` ADD CONSTRAINT `St_Combus_Emis_n2oEmisFctUnitId_fkey` FOREIGN KEY (`n2oEmisFctUnitId`) REFERENCES `Unit`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
