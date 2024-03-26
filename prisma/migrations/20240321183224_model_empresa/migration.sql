/*
  Warnings:

  - You are about to drop the `empresaCliente` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "empresaCliente";

-- CreateTable
CREATE TABLE "cadEmpresas" (
    "id" SERIAL NOT NULL,
    "empresaId" INTEGER NOT NULL,
    "nome" TEXT NOT NULL,
    "telefoneCont" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "cadEmpresas_pkey" PRIMARY KEY ("id")
);
