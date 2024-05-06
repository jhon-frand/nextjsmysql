/*
  Warnings:

  - Added the required column `producto` to the `Venta` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `venta` ADD COLUMN `producto` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `Venta` ADD CONSTRAINT `Venta_producto_fkey` FOREIGN KEY (`producto`) REFERENCES `Producto`(`id`) ON DELETE RESTRICT ON UPDATE CASCADE;
