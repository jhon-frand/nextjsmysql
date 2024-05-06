/*
  Warnings:

  - The primary key for the `producto` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `idproducto` on the `producto` table. All the data in the column will be lost.
  - The primary key for the `venta` table will be changed. If it partially fails, the table could be left without primary key constraint.
  - You are about to drop the column `idventa` on the `venta` table. All the data in the column will be lost.
  - Added the required column `id` to the `Producto` table without a default value. This is not possible if the table is not empty.
  - Added the required column `id` to the `Venta` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `producto` DROP PRIMARY KEY,
    DROP COLUMN `idproducto`,
    ADD COLUMN `id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`id`);

-- AlterTable
ALTER TABLE `venta` DROP PRIMARY KEY,
    DROP COLUMN `idventa`,
    ADD COLUMN `id` INTEGER NOT NULL AUTO_INCREMENT,
    ADD PRIMARY KEY (`id`);
