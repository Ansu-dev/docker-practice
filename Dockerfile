# node 이미지를 컨테이너에 넣음
FROM node:16

# 현재 디렉토리의 파일들을 복사에서 넣어줌 => copy를 해주기전에 dockerignore를 해줘야함
COPY . .

RUN npm install

CMD ["npm","run","start:prod"]