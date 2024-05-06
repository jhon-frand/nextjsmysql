/*
  Warnings:

  - Added the required column `descuento` to the `productos` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `productos` ADD COLUMN `descuento` DOUBLE NOT NULL;
