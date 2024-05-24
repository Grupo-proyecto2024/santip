CREATE DATABASE IF NOT EXISTS clientes;

USE clientes;

CREATE TABLE Usuarios (
    id INT AUTO_INCREMENT,
    cedula INT,
    nombre VARCHAR(255),
    apellidos VARCHAR(255),
    correo VARCHAR(255),
    telefono VARCHAR(255),
    direccion VARCHAR(255),
    passwordd VARCHAR(255),
    roleadmin BOOLEAN DEFAULT TRUE,
    PRIMARY KEY (id)
);

import * as generator from 'generate-password';

// ...

export class UsersService {
  // ...

  async createUser(createUserDto: CreateUserDto) {
    const user = new Usuarios();
    // ...

    // Generar una contraseña aleatoria
    const password = generator.generate({
      length: 10,
      numbers: true,
    });

    // Guardar la contraseña en el usuario
    user.passwordd = password;

    // Guardar el usuario en la base de datos
    await this.usersRepository.save(user);

    // Enviar correo electrónico con la cédula y la contraseña
    this.sendEmail(user.correo, user.cedula, password);
  }

  sendEmail(email: string, cedula: number, password: string) {
    // Aquí debes implementar el envío del correo electrónico
  }
}