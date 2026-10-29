# Stage 1: Build
FROM node:24-alpine AS builder

WORKDIR /app

# Activer pnpm à la version fixée dans package.json (packageManager)
RUN corepack enable

# Copier les fichiers de dépendances
COPY package.json pnpm-lock.yaml pnpm-workspace.yaml ./

# Installer les dépendances
RUN pnpm install --frozen-lockfile

# Copier le code source
COPY . .

# Builder l'application
RUN pnpm exec svelte-kit sync && pnpm build

# Stage 2: Runtime
FROM nginx:alpine

# Supprimer l'index.html par défaut de nginx
RUN rm -f /usr/share/nginx/html/index.html /usr/share/nginx/html/50x.html

# Copier la configuration nginx
COPY nginx.conf /etc/nginx/conf.d/default.conf

# Copier les fichiers buildés statiques
COPY --from=builder /app/build /usr/share/nginx/html

# Exposer le port
EXPOSE 80

# Commande de démarrage
CMD ["nginx", "-g", "daemon off;"]
