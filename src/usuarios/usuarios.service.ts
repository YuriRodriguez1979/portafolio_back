import { Injectable } from '@nestjs/common';
import { CrearUsuarioDto, listarUsuarioDto } from './usuariosDto';

export interface Usuario {
  nombre: string;
  email: string;
}

@Injectable()
export class UsuariosService {
  lista: listarUsuarioDto;


  static listar() {
    throw new Error('Method not implemented.');
  }

  listar() {
    const Usuario = {} as Usuario;
    this.lista = {} as listarUsuarioDto;
    Usuario.nombre = 'Juan Perez';
    Usuario.email = 'yuri@gmail.com';
    this.lista.nombre = Usuario.nombre;
    this.lista.email = Usuario.email;
    return this.lista;
  }

  test() {
    return 'Test de usuarios';
  }

  crearUsuario(datos: CrearUsuarioDto){
    return { datos }
  }


}
