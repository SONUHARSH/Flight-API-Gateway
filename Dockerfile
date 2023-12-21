FROM node

WORKDIR /developer/nodejs/api-gateway 

COPY . .

RUN npm ci


CMD ["npm", "run", "dev"]




#EXPOSE 3002
#COPY package*.json ./

# docker build -t api-gateway . 


#D:\CODE\P_Ft\API-Gateway

# docker run -it --init --name api_gateway -p 3002:3002 -v "D:\CODE\P_Ft\API-Gateway://developer/nodejs/API-Gateway" api-gateway 

# docker volume create api-gateway-node-modules
# docker run -it --init --name api_gateway --network microservice-network -p 3002:3002 -v "D:\CODE\P_Ft\API-Gateway://developer/nodejs/api-gateway" -v api-gateway-node-modules://developer/nodejs/api-gateway/node_modules api-gateway 

# docker inspect microservice-network  // chake in power sheel how much network are connected.

# docker network create micoservice-network (network created)