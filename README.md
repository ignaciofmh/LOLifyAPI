
# Documentación de la API LOLify

Esta API permite gestionar los recursos de la aplicación LOLify: Categorías (Categories), Usuarios (Users), Chistes (Jokes), Calificaciones (Ranks) y Listas (Lists).

## 🌐 URL Base

- Desarrollo: `http://localhost:3000/`
- Producción (Render.com): `https://<tu-servicio>.onrender.com/` (Reemplaza con el nombre de tu servicio web en Render)

## 📦 Formato de Datos

- Todas las solicitudes y respuestas utilizan JSON.
- Las solicitudes `POST` y `PATCH/PUT` deben incluir la cabecera `Content-Type: application/json`.
- Las solicitudes deben incluir la cabecera `Accept: application/json`.

## 🔐 Autenticación

Actualmente, la API **no tiene autenticación**. ¡Esto deberá implementará antes de pasar a producción!

## 📏 Convenciones

- Los parámetros deben estar anidados bajo el nombre del recurso en singular.
- Las respuestas exitosas devuelven el objeto incluyendo `id`, `created_at`, y `updated_at`.
- Las respuestas `DELETE` exitosas devuelven código `204 No Content`.
- Los errores `422` devolverán un JSON con los errores por campo.

## Recursos de la API

### 1. 📂 Categories

Gestiona las categorías de los chistes.

#### Atributos

- `id`, `name`, `description`, `need_legal_age`, `created_at`, `updated_at`

#### Endpoints

- `GET /categories`
- `POST /categories`
- `GET /categories/:id`
- `PATCH/PUT /categories/:id`
- `DELETE /categories/:id`

### 2. 👤 Users

Gestiona los usuarios.

#### Atributos

- `id`, `name`, `email`, `birthday`, `nickname`, `created_at`, `updated_at`

#### Endpoints

- `GET /users`
- `POST /users`
- `GET /users/:id`
- `PATCH/PUT /users/:id`
- `DELETE /users/:id`

### 3. 🎭 Jokes

Gestiona los chistes.

#### Atributos

- `id`, `title`, `content`, `user_id`, `category_id`, `created_at`, `updated_at`

#### Endpoints

- `GET /jokes`
- `POST /jokes`
- `GET /jokes/:id`
- `PATCH/PUT /jokes/:id`
- `DELETE /jokes/:id`

### 4. ⭐ Ranks

Calificaciones de chistes.

#### Atributos

- `id`, `joke_id`, `user_id`, `score`, `created_at`, `updated_at`

#### Endpoints

- `GET /ranks`
- `POST /ranks`
- `GET /ranks/:id`
- `PATCH/PUT /ranks/:id`
- `DELETE /ranks/:id`

### 5. 📋 Lists

Listas de chistes por usuario.

#### Atributos

- `id`, `name`, `user_id`, `created_at`, `updated_at`

#### Endpoints

- `GET /lists`
- `POST /lists`
- `GET /lists/:id`
- `PATCH/PUT /lists/:id`
- `DELETE /lists/:id`