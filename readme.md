# Nuxt.js App with Docker and Prisma

This project aims to create a Nuxt.js application with Docker and Prisma installed. The application allows users to save people's names and emails.

## Features
- Save people's names and emails.
- View the list of saved people.
- Delete person 

## Technologies Used
- Nuxt.js
- Docker
- Prisma
- Node

## Getting Started
To run this project locally, follow these steps:
1. Clone this repository.
2. Install dependencies by running `npm install`.
3. Set up your database configuration in the `.env` file.
4. Run the following commands to set up Prisma
```
 docker exec -it backend npx prisma migrate dev --name init
```
5. Run ```docker compose up -d``` to start all the images

### Development Commands

1. Build the Container 
```
 compose build -t <backend | db | frontend | image-name>
```
2. Run one container 
```
docker run <backend | db | frontend | image-name>
```

## Data Model

```
model Person {
  id    Int     @id @default(autoincrement())
  name  String
  email String  
}
```