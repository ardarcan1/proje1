# Bağımlılıkları yüklemek için birinci aşama
FROM node:14-alpine as builder
WORKDIR /app
COPY package*.json ./
RUN npm install

# Uygulama dosyalarını kopyala
COPY . .

# Son ürün için ikinci aşama
FROM node:14-alpine
WORKDIR /app
COPY --from=builder /app .
EXPOSE 3000
CMD ["node", "index.js"]
