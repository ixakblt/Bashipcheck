function indir(){
    wget  -O sitehtml.txt $1
} 

function salt(){
    grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}' sitehtml.txt >> saltip.txt
    rm sitehtml.txt
}

indir $1
salt