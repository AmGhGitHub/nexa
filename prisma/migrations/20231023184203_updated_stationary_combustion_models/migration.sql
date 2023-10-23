/*
  Warnings:

  - You are about to drop the column `ch4_emission_factor_unit` on the `scope1_stationarycomsbution` table. All the data in the column will be lost.
  - You are about to drop the column `co2_emission_factor_unit` on the `scope1_stationarycomsbution` table. All the data in the column will be lost.
  - You are about to drop the column `fuel_type` on the `scope1_stationarycomsbution` table. All the data in the column will be lost.
  - You are about to drop the column `heat_content` on the `scope1_stationarycomsbution` table. All the data in the column will be lost.
  - You are about to drop the column `heat_content_unit` on the `scope1_stationarycomsbution` table. All the data in the column will be lost.
  - You are about to drop the column `n2o_emission_factor_unit` on the `scope1_stationarycomsbution` table. All the data in the column will be lost.
  - You are about to drop the column `updatedAt` on the `scope1_stationarycomsbution` table. All the data in the column will be lost.
  - You are about to drop the `scope1_mobilecomsbution` table. If the table is not empty, all the data it contains will be lost.
  - Added the required column `fuel_type_id` to the `Scope1_StationaryComsbution` table without a default value. This is not possible if the table is not empty.
  - Added the required column `heat_content_value` to the `Scope1_StationaryComsbution` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `scope1_stationarycomsbution` DROP COLUMN `ch4_emission_factor_unit`,
    DROP COLUMN `co2_emission_factor_unit`,
    DROP COLUMN `fuel_type`,
    DROP COLUMN `heat_content`,
    DROP COLUMN `heat_content_unit`,
    DROP COLUMN `n2o_emission_factor_unit`,
    DROP COLUMN `updatedAt`,
    ADD COLUMN `fuel_type_id` INTEGER NOT NULL,
    ADD COLUMN `heat_content_value` DOUBLE NOT NULL;

-- DropTable
DROP TABLE `scope1_mobilecomsbution`;

-- CreateTable
CREATE TABLE `Scope1_StationaryComsbution_FuelType` (
    `fuel_type_id` INTEGER NOT NULL,
    `fuel_type` VARCHAR(255) NOT NULL,
    `heat_content_unit` VARCHAR(255) NOT NULL,
    `co2_emission_unit` VARCHAR(255) NOT NULL,
    `ch4_emission_unit` VARCHAR(255) NOT NULL,
    `n2o_emission_unit` VARCHAR(255) NOT NULL,

    PRIMARY KEY (`fuel_type_id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Scope1_StationaryComsbution` ADD CONSTRAINT `Scope1_StationaryComsbution_fuel_type_id_fkey` FOREIGN KEY (`fuel_type_id`) REFERENCES `Scope1_StationaryComsbution_FuelType`(`fuel_type_id`) ON DELETE RESTRICT ON UPDATE CASCADE;
