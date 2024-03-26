/*
  Warnings:

  - A unique constraint covering the columns `[empresaId]` on the table `cadEmpresas` will be added. If there are existing duplicate values, this will fail.

*/
-- CreateIndex
CREATE UNIQUE INDEX "cadEmpresas_empresaId_key" ON "cadEmpresas"("empresaId");
