import { Body, Controller, Get, Post } from '@nestjs/common';
import { UsuariosService } from './usuarios.service';
import { CrearUsuarioDto } from './usuariosDto';

@Controller('usuarios')
export class UsuariosController {

  constructor(private uService: UsuariosService) { }

  @Get('/listUsuarios')
  listUsuarios() {
    return this.uService.listar();
  }

  @Get('/testUsuarios')
  testUsuarios() {
    return this.uService.test();
  }

  @Post('/crearUsuario')
  createUsuario(@Body() datos: CrearUsuarioDto) {
    return this.uService.crearUsuario(datos);
  }
}
