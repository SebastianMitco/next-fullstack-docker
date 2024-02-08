FROM node:alpine
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY prisma ./prisma

RUN npx prisma generate

COPY ./ ./

# Run Prisma migration command during container build
RUN npx prisma migrate --name

EXPOSE 5000

CMD ["npm", "start"]
