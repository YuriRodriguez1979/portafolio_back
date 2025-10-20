import { Module } from '@nestjs/common';
import { UsuariosController } from './usuarios/usuarios.controller';
import { UsuariosModule } from './usuarios/usuarios.module';

@Module({
  imports: [UsuariosModule],
  controllers: [UsuariosController],
  providers: [],
})
export class AppModule {}
