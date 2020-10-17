function indir(){
    wget  -O sitehtml.txt $1
} 

function rangeparse(){
    grep -o '[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}\.[0-9]\{1,3\}...' sitehtml.txt >> ixrange.txt
    rm sitehtml.txt
}

indir $1
rangeparse