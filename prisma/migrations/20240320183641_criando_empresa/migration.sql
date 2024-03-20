-- CreateTable
CREATE TABLE "empresaCliente" (
    "id" SERIAL NOT NULL,
    "empresaId" INTEGER NOT NULL,
    "nome" TEXT NOT NULL,
    "telefoneCont" INTEGER NOT NULL,

    CONSTRAINT "empresaCliente_pkey" PRIMARY KEY ("id")
);
