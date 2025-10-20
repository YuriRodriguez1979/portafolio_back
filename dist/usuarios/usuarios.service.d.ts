import { CrearUsuarioDto, listarUsuarioDto } from './usuariosDto';
export interface Usuario {
    nombre: string;
    email: string;
}
export declare class UsuariosService {
    lista: listarUsuarioDto;
    static listar(): void;
    listar(): listarUsuarioDto;
    test(): string;
    crearUsuario(datos: CrearUsuarioDto): {
        datos: CrearUsuarioDto;
    };
}
