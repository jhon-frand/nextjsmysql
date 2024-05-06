/*
  Warnings:

  - You are about to drop the `productos` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE `productos`;

-- CreateTable
CREATE TABLE `Producto` (
    `idproducto` INTEGER NOT NULL AUTO_INCREMENT,
    `nombre` VARCHAR(50) NOT NULL,
    `precio` DOUBLE NOT NULL,
    `stock` INTEGER NOT NULL,
    `descuento` DOUBLE NOT NULL,

    PRIMARY KEY (`idproducto`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- CreateTable
CREATE TABLE `Venta` (
    `idventa` INTEGER NOT NULL AUTO_INCREMENT,
    `fecha` DATETIME(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3),
    `cantidad` INTEGER NOT NULL DEFAULT 0,

    PRIMARY KEY (`idventa`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
