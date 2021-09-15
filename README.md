# wget-js

simple shell script to crawl websites using wget from https://twitter.com/jonathandata1/status/1437260781503008768

**Requirements** 

install xurls  :  https://github.com/mvdan/xurls

#Usage:

1 - To get only js files 

`./wget_crawl.sh www.example.com -j` 

2 - To do normal crawl 

`./wget_crawl.sh www.example.com -n`

If you have a list of urls you can do :
 `cat list.txt | while read website do ; do sh ./wget_crawl.sh $website -n ;done`
 
(I do this because i cant remember all the one liners from #bugbountytips, so i just save them in small bash scripts)
