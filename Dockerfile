# 1. Node.js 이미지를 베이스로 사용
FROM node:14

# 2. 컨테이너 내 작업 디렉토리 설정
WORKDIR /usr/src/app

# 3. package.json과 package-lock.json을 복사하고 의존성 설치
COPY package*.json ./
RUN npm install

# 4. 애플리케이션 코드 복사
COPY . .

# 5. 애플리케이션이 사용하는 포트를 설정
EXPOSE 3000

# 6. 애플리케이션 실행 명령
CMD ["npm", "start"]