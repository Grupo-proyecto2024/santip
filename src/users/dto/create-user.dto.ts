export class CreateUserDto {
    id: number;
    cedula: number;
    nombre: string;
    apellidos: string;
    correo: string;
    telefono: string;
    direccion: string;
    passwordd: string;
    roleadmin: boolean;
}
