FROM ubuntu:latest
RUN apt-get update && apt-get install -y mecab libmecab-dev mecab-ipadic-utf8 wget\
 && wget https://raw.githubusercontent.com/taku910/mecab/master/mecab-ipadic/rewrite.def  -O /var/lib/mecab/dic/ipadic-utf8/rewrite.def\
 && wget https://raw.githubusercontent.com/taku910/mecab/master/mecab-ipadic/pos-id.def   -O /var/lib/mecab/dic/ipadic-utf8/pos-id.def\
 && wget https://raw.githubusercontent.com/taku910/mecab/master/mecab-ipadic/left-id.def  -O /var/lib/mecab/dic/ipadic-utf8/left-id.def\
 && wget https://raw.githubusercontent.com/taku910/mecab/master/mecab-ipadic/right-id.def -O /var/lib/mecab/dic/ipadic-utf8/right-id.def\
 && wget https://raw.githubusercontent.com/taku910/mecab/master/mecab-ipadic/unk.def      -O /var/lib/mecab/dic/ipadic-utf8/unk.def\
 && iconv -f EUCJP -t UTF8 /var/lib/mecab/dic/ipadic-utf8/unk.def > /tmp/unk.def\
 && sed -i "s/NUMERIC,1295,1295,27386/NUMERIC,1295,1295,0/" /tmp/unk.def\
 && sed -i "s/SYMBOL,1283,1283,17585,名詞,サ変接続/SYMBOL,1283,1283,17585,記号,一般/" /tmp/unk.def\
 && cat /tmp/unk.def\
 && iconv -f UTF8 -t EUCJP /tmp/unk.def > /var/lib/mecab/dic/ipadic-utf8/unk.def


CMD /usr/lib/mecab/mecab-dict-index -d/var/lib/mecab/dic/ipadic-utf8 -u /mnt/user.dic -f utf8 -t utf8 /mnt/userdic.csv
