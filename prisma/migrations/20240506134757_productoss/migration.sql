/*
  Warnings:

  - You are about to drop the `producto` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropForeignKey
ALTER TABLE `venta` DROP FOREIGN KEY `Venta_producto_fkey`;

-- DropTable
DROP TABLE `producto`;

-- CreateTable
CREATE TABLE `productos` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(50) NOT NULL,
    `precio` DOUBLE NOT NULL,
    `stock` INTEGER NOT NULL,
    `descuento` DOUBLE NOT NULL,

    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- AddForeignKey
ALTER TABLE `Venta` ADD CONSTRAINT `Venta_producto_fkey` FOREIGN KEY (`producto`) REFERENCES `productos`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
