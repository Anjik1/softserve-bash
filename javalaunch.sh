#!/bin/bash
mkdir java-project
git clone https://github.com/mentorchita/example-app-nodejs-backend-react-frontend java-project
cd java-project
grep -rl 'Welcome to My Project' | xargs sed -i 's/Welcome to My Project/This is a project of Andrii Klymukh/g'
npm i && npm run build && npm start

