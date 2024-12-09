FROM node:14-alpine

WORKDIR /app

#ta chỉ cần những lệnh này để tạo image => docker build -t node-util .
#sao đó khi tạo container               => docker run -it -v ${PWD}:/app node-util npm init 
#lúc này ta sang sử dụng bind mount khi code trong container thay đổi thì localhost cũng thay đổi theo



#khi ta npm init khi docker run có thể sẽ ghi đè lệnh trong file Dockerfile này (nếu trong thường hợp Dockerfile có npm init)
#do đó ta có thể sử dụng
ENTRYPOINT [ "npm" ] 
#nghĩa là mọi lệnh npm ta nhập ở docker run sẽ được append vào cuối vào ENTRYPOINT này 
#VD: ta chỉ cần docker run -it -v ${PWD}:/app node-util init, khi đó init sẽ được nối với ENTRYPOINT npm này 
#do có code sẽ không bị ghi đề mà được append 
#nên ta có thể tiêp tục sử dụng docker run -it -v ${PWD}:/app node-util install
#vì ta đã init trước đó rồi, nên ta append thêm npm install