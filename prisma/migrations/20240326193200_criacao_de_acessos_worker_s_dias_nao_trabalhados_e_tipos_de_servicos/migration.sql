-- CreateTable
CREATE TABLE "tpAcessos" (
    "id" INTEGER NOT NULL,
    "tpAcesso" TEXT NOT NULL,

    CONSTRAINT "tpAcessos_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "worker" (
    "idWorker" SERIAL NOT NULL,
    "empresa" INTEGER NOT NULL,
    "nome" TEXT NOT NULL,
    "func" TEXT NOT NULL,
    "number" INTEGER NOT NULL,
    "created_at" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "updated_at" TIMESTAMP(3) NOT NULL,
    "acesso" INTEGER NOT NULL,

    CONSTRAINT "worker_pkey" PRIMARY KEY ("idWorker")
);

-- CreateTable
CREATE TABLE "notWork" (
    "idEvent" INTEGER NOT NULL,
    "nameEvent" TEXT NOT NULL,

    CONSTRAINT "notWork_pkey" PRIMARY KEY ("idEvent")
);

-- CreateTable
CREATE TABLE "services" (
    "id" INTEGER NOT NULL,
    "desc" TEXT NOT NULL,
    "tempService" INTEGER NOT NULL,

    CONSTRAINT "services_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "worker" ADD CONSTRAINT "worker_empresa_fkey" FOREIGN KEY ("empresa") REFERENCES "cadEmpresas"("empresaId") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "worker" ADD CONSTRAINT "worker_acesso_fkey" FOREIGN KEY ("acesso") REFERENCES "tpAcessos"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
