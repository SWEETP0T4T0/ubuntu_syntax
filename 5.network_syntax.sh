# 프로세스 목록조회
ps -ef
e = 모든 프로세스 , f = full format
ps -ef | grep nginx
# 프로세스 강제 종요
sudo kill -9 프로세스명

# 패키지
debian 계열 패키지 관리 도구 - apt-get
redhat 계열 패키지 관리 도구 - yum
ex) sudo apt-get update

# 자바설치 
sudo apt-get install openjdk-11-jdk

# nginx설치 
sudo apt-get install nginx

# 프로그램 실행 관리 도구
sudo systemctl stop nginx
sudo systemctl start nginx

# 네트워크 관련 명령어
1. 네트워크 설정 정보 조회
ifconfig

2. 특정 도메인의 ip주소 정보 조회
nslookup 도메인주소

2. 네트워크 연결 상태 조회(ip만 사용)
-일반적으로 ping 명령은 보안 상 막아두고 있음에 유의
ping IP주소
ping 8. 8. 8. 8
ping 네이버IP

3. 네트워크 연결 상태 조회(port까지 사용)
nc -zv <ip 또는 도메인> <포트>
ex) nc -zv naver.com 443(https), 80(http), 22(ssh)

4. 네트워크 원격 접속 - 22번 포트
ssh <username>@<host(컴퓨터) ip주소>

5. 네트워크 원격 파일 전송
scp <전송하고자 하는 파일> <원격지주소>

6. 네트워크 연결 상태 확인
netstat