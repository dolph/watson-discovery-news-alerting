FROM ibmcom/ibmnode:8

ENV NODE_ENV production
ENV PORT 3000

EXPOSE 3000

ADD app /app
WORKDIR "/app"

RUN npm install
CMD ["npm", "start"]
