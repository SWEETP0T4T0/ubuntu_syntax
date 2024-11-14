# 쉘 스트립트 작성 - 반드시 확장자가 .sh (쉘)
touch myscript.sh
# 스크립트문 나노편집기에서 작성
nano myscript.sh
# 스크립트 실행(./를 붙여줘야함에 유의)
./myscript.sh 

# if 문
if [ 1 -gt 2 ]; then
   echo "hello world1"
else
   echo "hello world2"
fi

# if문과 변수, 파일(-f), 디렉토리(-d) 존재여부 확인
file_name="test.txt"  <변수를 지정
if [ -f "$file_name" ]; then
echo "$file_name file is exist"
else
echo "test.txt file does not exist"
fi

# for 문
fir a in {1..100}               < a가 1부터 100까지 가는동안
do
    echo "hello world$a"        < 참이면 저걸 계속한다
done

# for 문과 count 값
count=0
for a in {1..100}
do
    ((count++))
done
echo "count vluea is $count"

# for 문과 파일/디렉토리 목록조회
for a in *
do 
    echo "$a"
done

file_count=0
dir_count=0
other_count=0

for a in *
do
    if [ -f "$a" ]; then
    ((file_count++))
    # 폴더 전체를 시행할 때 파일이면 파일_카운트를 올린다
    elif [ -d "$a" ]; then  
    ((dir_count++))
    # 폴더 전체를 시행할 때 디렉토리면 디렉토리_카운트를 올린다
    else 
    ((other_count++))ㅇ
    # 둘 다 해당되지 않는다면 other_count를 올린다
    fi
done
echo "file count is $file_count"
echo "dir count is $dir_count"
echo "other count is $other_count"
