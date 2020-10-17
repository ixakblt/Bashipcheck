kontrol(){
  ping -c 1 $1 > /dev/null
  [ $? -eq 0 ] && echo $i >> ipcheck.txt
}

for i in `cat $1`;
do 
kontrol $i & disown 
done