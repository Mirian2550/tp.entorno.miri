# tp.entorno.miri
### **Integrantes:**

>Daniel Ponce
>
>Mirian Yañez
## Clone Repo
<pre>
git clone https://github.com/Mirian2550/tp.entorno.miri.git
</pre>
## Local
<pre>
cd tp.entorno.miri
bash main.sh
</pre>
## Docker 
<pre>
sudo docker build -t tp.entorno .
sudo docker run -it --rm --name tp.entorno tp.entorno
</pre>

## Checked Sintaxis
si estas en ubuntu o debian
<pre>
sudo apt install shellcheck
</pre>
Tests:
<pre>
cd tp.entorno.miri
shellcheck scripts/*
shellcheck main.sh
</pre>
### checked shell online
<pre>
online:[shellcheck] https://www.shellcheck.net/
</pre>
