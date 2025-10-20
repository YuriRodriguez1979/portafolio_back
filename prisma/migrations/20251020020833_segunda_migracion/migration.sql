-- CreateTable
CREATE TABLE "Estudios_Profesionales" (
    "id" SERIAL NOT NULL,
    "grado_academico" TEXT NOT NULL,
    "institucion" TEXT NOT NULL,
    "anio_finalizacion" INTEGER NOT NULL,
    "num_resolucion" TEXT NOT NULL,
    "ruta_titulo" TEXT NOT NULL,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,
    "usuarioId" INTEGER NOT NULL,

    CONSTRAINT "Estudios_Profesionales_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Certificados" (
    "id" SERIAL NOT NULL,
    "nombre_certificado" TEXT NOT NULL,
    "institucion" TEXT NOT NULL,
    "anio_obtencion" INTEGER NOT NULL,
    "duracion" TEXT NOT NULL,
    "ruta_certificado" TEXT NOT NULL,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,
    "usuarioId" INTEGER NOT NULL,

    CONSTRAINT "Certificados_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Habilidades_Tecnicas" (
    "id" SERIAL NOT NULL,
    "lenguaje" TEXT NOT NULL,
    "tipo_habilidad" TEXT NOT NULL,
    "nivel_dominio" TEXT NOT NULL,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,
    "usuarioId" INTEGER NOT NULL,

    CONSTRAINT "Habilidades_Tecnicas_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Experiencia_Laboral" (
    "id" SERIAL NOT NULL,
    "cargo" TEXT NOT NULL,
    "empresa" TEXT NOT NULL,
    "funciones" TEXT NOT NULL,
    "anio_inicio" INTEGER NOT NULL,
    "anio_fin" INTEGER NOT NULL,
    "descripcion" TEXT NOT NULL,
    "creadoEn" TIMESTAMP(3) NOT NULL DEFAULT CURRENT_TIMESTAMP,
    "actualizadoEn" TIMESTAMP(3) NOT NULL,
    "usuarioId" INTEGER NOT NULL,

    CONSTRAINT "Experiencia_Laboral_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Estudios_Profesionales" ADD CONSTRAINT "Estudios_Profesionales_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Certificados" ADD CONSTRAINT "Certificados_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Habilidades_Tecnicas" ADD CONSTRAINT "Habilidades_Tecnicas_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Experiencia_Laboral" ADD CONSTRAINT "Experiencia_Laboral_usuarioId_fkey" FOREIGN KEY ("usuarioId") REFERENCES "Usuario"("id") ON DELETE RESTRICT ON UPDATE CASCADE;
