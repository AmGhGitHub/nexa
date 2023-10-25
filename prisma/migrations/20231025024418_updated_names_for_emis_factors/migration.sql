/*
  Warnings:

  - You are about to drop the column `co2EmissionFactor` on the `st_combus_emis` table. All the data in the column will be lost.
  - You are about to drop the column `co2EmissionFactorUnitId` on the `st_combus_emis` table. All the data in the column will be lost.
  - Added the required column `co2EmisFct` to the `St_Combus_Emis` table without a default value. This is not possible if the table is not empty.

*/
-- DropForeignKey
ALTER TABLE `st_combus_emis` DROP FOREIGN KEY `St_Combus_Emis_co2EmissionFactorUnitId_fkey`;

-- AlterTable
ALTER TABLE `st_combus_emis` DROP COLUMN `co2EmissionFactor`,
    DROP COLUMN `co2EmissionFactorUnitId`,
    ADD COLUMN `co2EmisFct` DOUBLE NOT NULL,
    ADD COLUMN `co2EmisFctUnitId` INTEGER NULL;

-- AddForeignKey
ALTER TABLE `St_Combus_Emis` ADD CONSTRAINT `St_Combus_Emis_co2EmisFctUnitId_fkey` FOREIGN KEY (`co2EmisFctUnitId`) REFERENCES `Unit`(`id`) ON DELETE SET NULL ON UPDATE CASCADE;
