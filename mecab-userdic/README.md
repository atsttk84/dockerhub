# mecab-userdic

```sh
mv $USERDIC_CSV_PATH userdic.csv
docker run -v $PWD:/mnt --rm --name mecab-userdic atsttk84/mecab-userdic
docker cp mecab-userdic:/tmp/user.dic .
```
