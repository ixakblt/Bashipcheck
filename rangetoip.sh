for j in ` grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.' ixrange.txt `;
do
for ((i=1;i<=225;i++)); do
    echo $j$i >> ixrengtoip.txt
done
done