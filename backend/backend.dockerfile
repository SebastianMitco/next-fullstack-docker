FROM node:alpine
WORKDIR /app

COPY package*.json ./

RUN npm install

COPY prisma ./prisma

RUN npx prisma generate
RUN npx prisma migrate dev --name init --preview-feature

COPY ./ ./

EXPOSE 5000

CMD ["npm", "start"]
