import { UsuariosService } from './usuarios.service';
import { CrearUsuarioDto } from './usuariosDto';
export declare class UsuariosController {
    private uService;
    constructor(uService: UsuariosService);
    listUsuarios(): import("./usuariosDto").listarUsuarioDto;
    testUsuarios(): string;
    createUsuario(datos: CrearUsuarioDto): {
        datos: CrearUsuarioDto;
    };
}
