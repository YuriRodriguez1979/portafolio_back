import { CreateUsuarioDto } from './dto/create-usuario.dto';
import { UpdateUsuarioDto } from './dto/update-usuario.dto';
import { PrismaService } from 'src/prisma/prisma.service';
export declare class UsuarioService {
    private prisma;
    constructor(prisma: PrismaService);
    create(data: CreateUsuarioDto): Promise<{
        nombre_usuario: string;
        email: string;
        password: string;
        creadoEn: Date;
        actualizadoEn: Date;
        id: number;
    }>;
    findAll(): string;
    findOne(id: number): string;
    update(id: number, updateUsuarioDto: UpdateUsuarioDto): string;
    remove(id: number): string;
}
