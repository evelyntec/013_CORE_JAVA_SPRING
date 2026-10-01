# 🎵 Spring Boot · Canciones 03: editar

![Spring Boot](https://img.shields.io/badge/Spring%20Boot-2.7.18-6DB33F?logo=springboot&logoColor=white) ![Java](https://img.shields.io/badge/Java-8-ED8B00?logo=openjdk&logoColor=white) ![MySQL](https://img.shields.io/badge/MySQL-8-4479A1?logo=mysql&logoColor=white) ![JSP](https://img.shields.io/badge/Vistas-JSP%20%2B%20JSTL-6DB33F) ![Maven](https://img.shields.io/badge/Maven-C71A36?logo=apachemaven&logoColor=white)

Tercera etapa del CRUD: suma la **edición de canciones** existentes, reutilizando las validaciones.

> Paso 3 de 5 de la serie «Canciones», desarrollada en el **Bootcamp Full Stack Java (2026)**.

## ✨ Rutas disponibles

| Método | Ruta | Descripción |
|---|---|---|
| `GET` | `/canciones` | Lista todas las canciones |
| `GET` | `/canciones/detalle/{idCancion}` | Detalle de una canción |
| `GET` | `/canciones/formulario/agregar/{idCancion}` | Formulario para agregar |
| `POST` | `/canciones/procesa/agregar` | Guarda una canción nueva |
| `GET` | `/canciones/formulario/editar/{idCancion}` | Formulario de edición |
| `POST` | `/canciones/procesa/editar/{idCancion}` | Actualiza la canción |

## 🧠 Conceptos aplicados

- Actualización de entidades con `save()` y conservación de la fecha de creación.
- Formularios precargados con los datos actuales.
- Validaciones con `@Valid` y `BindingResult`.
- Arquitectura en capas controlador–servicio–repositorio.

## 🏗️ Arquitectura

El proyecto sigue el patrón **MVC en capas** de Spring:

```
Controlador  →  Servicio  →  Repositorio (Spring Data JPA)  →  MySQL
     ↓
 Vista JSP
```

```
src/main/
├── java/com/evelyn/
│   ├── AplicacionCanciones.java
│   ├── controladores/ControladorCanciones.java
│   ├── modelos/Cancion.java
│   ├── repositorios/RepositorioCanciones.java
│   └── servicios/ServicioCanciones.java
├── resources/application.properties
└── webapp/WEB-INF/          ← vistas JSP
```


## ▶️ Cómo ejecutarlo

Requisitos: JDK 8 o superior, Maven 3.9 y MySQL 8.

1. Crea la base de datos ejecutando el script incluido:

   ```bash
   mysql -u root -p < canciones_db.sql
   ```

2. Define tus credenciales de MySQL como variables de entorno (el proyecto no guarda contraseñas en el código):

   ```bash
   export DB_USER=root
   export DB_PASSWORD=tu_contraseña
   ```

   En Windows (PowerShell): `$env:DB_USER="root"; $env:DB_PASSWORD="tu_contraseña"`

3. Ejecuta la aplicación:

   ```bash
   mvn spring-boot:run
   ```

4. Abre <http://localhost:8080/canciones>


## 🧭 Serie «Canciones» (CRUD paso a paso)

Este repositorio es parte de una serie donde construí un CRUD completo de forma incremental:

| Paso | Repositorio | Funcionalidad nueva |
|---|---|---|
| 1 | [spring-crud-canciones-01-listar](https://github.com/evelyntec/spring-crud-canciones-01-listar) | Listar canciones y ver su detalle |
| 2 | [spring-crud-canciones-02-agregar](https://github.com/evelyntec/spring-crud-canciones-02-agregar) | Formulario para agregar con validaciones |
| 3 | [spring-crud-canciones-03-editar](https://github.com/evelyntec/spring-crud-canciones-03-editar) | Edición de canciones |
| 4 | [spring-crud-canciones-04-eliminar](https://github.com/evelyntec/spring-crud-canciones-04-eliminar) | Eliminación de canciones |
| 5 | [spring-boot-canciones-artistas](https://github.com/evelyntec/spring-boot-canciones-artistas) ⭐ | Relación uno a muchos entre artistas y canciones |


---

## 👩‍💻 Autora

**Evelyn Álvarez Vásquez** · Técnica en Informática en formación (IPLACEX) · Profesora y Magíster en Didáctica de la Matemática

[![LinkedIn](https://img.shields.io/badge/LinkedIn-profesoraevelyn-0A66C2?logo=linkedin&logoColor=white)](https://www.linkedin.com/in/profesoraevelyn/)
[![GitHub](https://img.shields.io/badge/GitHub-evelyntec-181717?logo=github&logoColor=white)](https://github.com/evelyntec)
[![Web](https://img.shields.io/badge/Web-profesoraevelyn.com-00B8D9?logo=googlechrome&logoColor=white)](https://profesoraevelyn.com)
