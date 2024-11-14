# 사용자 추가
useradd lth2
# 비밀번호 지정
passwd lth2

# root의 권한을 빌리는 것 but 아무나, 어떤 작업이든 모두 할 수 있는 것은 아님
sudo

# 사용자변경 : 변경하고자 하는 계정의 비밀번호.(sudo는 사용자의 현재 비밀번호)
su - 사용자명

# 권한부여
chmod - NNN 파일명

# 소유자,그룹 변경
chown 소유자명:그룹명
.
