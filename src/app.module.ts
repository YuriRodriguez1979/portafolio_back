import { Module } from '@nestjs/common';
import { UsuarioModule } from './usuario/usuario.module';
import { PrismaService } from './prisma/prisma.service';
import { PrismaModule } from './prisma/prisma.module';

@Module({
  imports: [UsuarioModule, PrismaModule],
  controllers: [],
  providers: [PrismaService],
})
export class AppModule {}
