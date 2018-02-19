# samba

```
mkdir -p $(pwd)/volume
chmod -R 777 $(pwd)/volume
docker run -it --rm -p 137:137 -p 139:139 -p 445:445 -v $(pwd)/volume:/volume seniocaires/samba
```
