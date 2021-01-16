# README
## DM mất mấy ngày để chỉ nhận ra vài điều rằng 
1. DM thằng rails này nên dùng mysql:5.7
<br>
2. muốn chạy nhiều commnad một lúc thì dùng thằng 

```bash 
    bash -c " command A && command B && ..."
```
3. port: là ánh xạ từ container ra cho máy host dùng
4. expose: là mở cổng của container để cho mấy thằng cùng 1 compose chọc vào 
5. D!T me nha no chu ý chính tả, 

### Một số cái về compose 
Thằng này sẽ chay nhiều container 1 lúc, docker-compo

buil các dockerfile ra các images cho compose. <br>
```bash 
docker-compose build
```
<br>
chạy các containar , nếu chưa có build thì tự build images

```bash 
docker-compose up
```
<br>
xoá hết các container, mạng , storage ,...

```bash 
docker-compose down
```
