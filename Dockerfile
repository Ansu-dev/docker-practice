# node 이미지를 컨테이너에 넣음
FROM node:16

#애플리케이션을 위한 폴더를 따로 모아둠 (컨테이너에 접근할때 workdir로 바로 접근)
WORKDIR /usr/src/app

# 현재 디렉토리의 파일들을 복사에서 넣어줌 => copy를 해주기전에 dockerignore를 해줘야함
COPY . .

RUN npm install

CMD ["npm","run","start:prod"]