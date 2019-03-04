
# 'builder' below is a tag for the build phase 
FROM node:alpine as builder 
WORKDIR /app
COPY package.json .
RUN npm install
COPY . .
RUN npm run build

# now the 'run' phase
FROM nginx
# copy folders from the build phase to the folder user by nginx
COPY --from=builder /app/build /usr/share/nginx/html

# no need to explicit define something to run, nginx image already has the run command set










