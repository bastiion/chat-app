## Chat-app

Chat-app is an application created based on [What's Up clone tutorial](https://www.tortilla.academy/Urigo/WhatsApp-Clone-Tutorial/master/next/step/0) created by Milena Zuccarelli, Michal Stokluska and Dara Hayes.

## Motivation

Application was developed by two interns at Red Hat with support of Dara Hayes, a Software Engineer at Red Hat. Main purpouse for this app was to give a nice introduction to trending technologies that both interns might be exposed to during their internship. Chat-app has been also been extended with Offix, an open source library that is one of the core technologies developed by the mobile development groups in Red Hat, MQTT message broker, docker containers, CI/CD pipeline and support for group chats. 

## What technologies does Chat-app use?

- React (with Hooks and Suspense)
- Styled-Components
- Material-UI
- TypeScript
- Apollo GraphQL
- GraphQL Code Generator
- GraphQL Modules
- PostgreSQL
- GraphQL Inspector
- Offix
- MQTT broker
- Docker
- CI/CD

## Prerequisites

- Node
- npm & Yarn
- Docker

## How to run

Download the ready project from [GitHub](https://github.com/aerogear/chat-app)

### Server

- Navigate to `./server` and in command line type in:
```sh
$ yarn install
```
- Then launch docker image which is going to launch Mosca messaging broker and will launch PostgreSQL database:
```sh
$ docker-compose up -d
```
- Next, launch the server:
```sh
$ yarn start
```

### Client

- Navigate to `./client` and type in the command line:
```sh
$ yarn install
```
- Then we need to generate types by typing in:
```sh
$ yarn build
```
- Next we can launch our application by:
```sh
$ yarn start
```
Application will open in the web browser. 





