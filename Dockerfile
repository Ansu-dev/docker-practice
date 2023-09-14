# node 이미지를 컨테이너에 넣음
FROM node:16

#애플리케이션을 위한 폴더를 따로 모아둠 (컨테이너에 접근할때 workdir로 바로 접근)
WORKDIR /usr/src/app

# 종속성 부분만 따로 복사한다(종속성이 바뀌지않고 소스코드가 변경되어도 매번 종속성을 설치하는게 비효율적)
COPY package.json ./

RUN npm install

# 현재 디렉토리의 파일들을 복사에서 넣어줌 => copy를 해주기전에 dockerignore를 해줘야함
COPY . .

CMD ["npm","run","start:prod"]