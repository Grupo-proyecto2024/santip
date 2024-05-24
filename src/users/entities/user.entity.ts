import { Column, Entity, PrimaryGeneratedColumn } from 'typeorm';

@Entity()
export class Usuarios{

    @PrimaryGeneratedColumn()
    id: number;

    @Column()
    cedula:number;

    @Column()
    nombre:string;

    @Column()
    apellidos:string;

    @Column()
    correo:string;

    @Column()
    telefono:string;

    @Column()
    direccion:string;

    @Column()
    passwordd:string;

    @Column({default:true})
    roleadmin:boolean;
}