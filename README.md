# rijad-poracanin-devops-mentorship

## Osnovne GIT komande

```bash
$ git init #inicijalizacija git repozitorijuma

$ git status #prikaz statusa repozitorijuma

$ git add file-name #dodavanje fajla u staging area

$ git add . #dodavanje svih fajlova iz radnog direktorija u staging area

$ git commit -m"commit message" #kreiranje commit-a

$ git push #slanje izmjena na udaljeni/remote repozitorijum

$ git pull #preuzimanje izmjena sa udaljenog/remote repozitorijuma

$ git log #prikaz loga commit-ova

$ git log --oneline #prikaz loga commit-ova u jednoj liniji

$ git log --oneline --graph #prikaz loga commit-ova u jednoj liniji sa grafickim prikazom

$ git clone repo-url #kloniranje projekta sa udaljenog/remote repozitorijuma

$ git remote -v #prikaz povezanih udaljenih/remote repozitorijuma

$ git branch #prikaz trenutne grane/branch-a unutar kojeg se nalazite

$ git branch branch-name #kreiranje nove grane/branch-a od trenutne grane/branch-a na kojem se nalazite, necete biti automatski prebaceni na novu granu/branch

$ git merge branch-name #spajanje grane/branch-a sa trenutnom granom/branch-om

$ git checkout branch-name #prebacivanje na drugu granu/branch

$ git remote add origin repo-url #povezivanje lokalnog repozitorijuma sa udaljenim/remote repozitorijumom

$ git config --global user.name "username" #podesavanje korisnickog imena --global znaci da ce ove postavke biti primjenjene na svaki repozitorijum na vasem racunaru

```

## Kako kreirati Pull Request
1. Kreirajte novi **fork** ovog repozitorija. Kliknite na dugme "Fork" na vrhu stranice da biste kreirali kopiju repozitorija u vašem računu na GitHub-u.
2. Klonirajte **fork** repozitoriji na vaš lokalni računar. Kliknite na dugme **Code** i kopirajte SSH adresu do vaseg forka. Nakon toga u terminalu izvrsite naredbu `git clone <URL>`. Npr. `git clone https://github.com/vase-github-korisnicko-ime/devops-aws-mentorship-program.git`
3. Kada ste klonirali fork repozitorija, kreirajte novu granu sa nazivom koja odgovara izmjenama koje zelite da napravite. Npr. `git checkout -b fix-typo-in-contributing-md`
4. Napravite izmjene koje zelite da dodate u repozitorij. Npr. `vim CONTRIBUTING.md`
5. Kada ste napravili izmjene, dodajte ih u **staging**. Npr. `git add CONTRIBUTING.md`
6. Kada ste dodali izmjene u **staging**, napravite **commit**. Npr. `git commit -m "Fix typo in CONTRIBUTING.md"`
7. Kada ste napravili **commit**, push-ujte izmjene na GitHub. Npr. `git push origin fix-typo-in-contributing-md`
8. Kada ste push-ovali izmjene na GitHub, kreirajte **Pull Request**. Kliknite na dugme **Compare & pull request** a zatim na dugme **Create pull request**.
9. Kada kreirate **Pull Request**, dodajte opis izmjena koje ste napravili. Npr. "Fix typo in CONTRIBUTING.md"
10. Kada ste dodali opis izmjena, kliknite na dugme **Create pull request**.
11. Postaljite vas **Pull Request** na pregled od strane mentora ovog programa unutar jednog od Slack kanala i tagujte nekog od mentora.

## Osnovne Linux/UNIX komande

```bash
$ man ssh #Manual for ssh command $ man <command-name>

$ ssh [ip or hostname] #Secure shell, an encrypted network protocol 
                       #allowing for remote login and command execution  

$ ssh -vvv #verbose for troubleshooting access

$ pwd #displays the current directory

$ sudo su - #Switch to root user

$ whoami #Displays your logged in user id

$ id #Displays your user id and group id

$ hostnamectl #Displays your hostname

-----------------OUTPUT-----------------
[centos@ip-172-31-34-106 /]$ hostnamectl
   Static hostname: ip-172-31-34-106.eu-central-1.compute.internal
         Icon name: computer-vm
           Chassis: vm
        Machine ID: e887fc2c7f8279b206b7f75ba0a2b0bd
           Boot ID: 0431ad5636434ef2874634b3de2d90ad
    Virtualization: xen
  Operating System: CentOS Linux 7 (Core)
       CPE OS Name: cpe:/o:centos:centos:7
            Kernel: Linux 3.10.0-1160.76.1.el7.x86_64
      Architecture: x86-64
-----------------END-----------------  

$ cd / #Change directory to the root of the filesystem

$ cd target  #Change directory to “target” directory

$ cd ~ #Change directory to your user home directory

$ cp file1 file2 #Copy file1 to file2

$ cp -r dir1 dir2 #Copy directory dir1 to dir2

$ mv file1 file2 #Move file1 to file2, file1 is deleted

$ rm file1 #Remove file1

$ rm -r dir1 #Remove directory dir1 and all its contents

$ ls # Directory listing

$ ls -l 

$ ls -la #Long listing, displays file ownership Displays hidden files/directories

$ cat file1 #Display the contents of file1

$ tail -10 file1 #Display the last 10 lines of file1

$ head -10 file1 #Display the first 10 lines of file1

$ less file1 #Display the contents of file1, one screen at a time

$ diff file1 file2 #Display the differences between file1 and file2

$ sed 's/old/new/g' file1 > file2 #Replace all occurrences of “old” with “new” in file1 and save the result in file2

$ grep 'pattern' file1 #Display all lines in file1 containing the pattern

$ awk '{print $1}' file1 #Display the first column of file1

$ awk -F : '{print $1}' /etc/passwd #Display the first column of /etc/passwd

$ scp username@remote:/file/to/send /where/to/put #Copy file from remote host to local host

$ scp username@remote_1:/file/to/send username@remote_2:/where/to/put #Copy file from remote host to remote host

$ rsync -e "ssh -P $port_value" remoteuser@remoteip:/path/  localpath #Copy file from remote host to local host

$ chmod 600 <filename> #Change permissions for user
$ chmod u+x <filename> #Change permissions for user
$ chown user:group <filename> #Change owner
```

## Najvažniji TCP i UDP portovi
![Common TCP and UDP Ports](https://github.com/allops-solutions/devops-aws-mentorship-program/blob/main/devops-mentorship-program/03-march/week-4-070323/files/common-udp-tcp-protocols.png?raw=true)

## Instalacija NGINX-a na CentOS 7
Koraci za instalaciju Nginx-a na CentOS 7:
```bash
$ sudo yum install epel-release -y # instalacija EPEL repozitorija
$ sudo yum install nginx -y # instalacija Nginx-a
$ sudo systemctl start nginx # pokretanje Nginx-a
```
Ako se koristi stariji OS, npr. CentOS 6.9, onda se za pokretanje Nginx-a koristi komanda:
```bash
$ servis nginx start
```
Da bismo sada mogli pristupiti serveru preko web browsera, potrebno je i da bude pušten port 80. Ako nije onda je potrebno u fajl `/etc/sysconfig/iptables` dodati `-A INPUT -m state --state NEW -p tcp --dport 80 -j ACCEPT`

Defaultni root direktoriji nalazi se na lokaciji: `/usr/share/nginx/html`. Ova putanja definisana je unutar `server` bloka defaultnog nginx konfiguracijskog fajla koji se nalazi na lokaciji `/etc/nginx/nginx.conf`.
**nginx.conf** predstavlja globalni konfiguracijski fajl. U njemu se definisu globalne promjenljive, globalni `http` blok, globalni `server` blok, itd.

#### NGINX Konfiguracijski fajlovi
Za svaki pojedinacni web sajt / web servis koji hostujete na serveru potrebno je kreirati zaseban `server` blok unutar konfiguracijskog fajla. Preporuka je da se ti konfiguracijski fajlovi nalaze u direktorijumu `/etc/nginx/conf.d/` i da imaju ekstenziju `.conf`. Za svaki sajt kreirate poseban konfiguracijski fajl.
U NGINX-u, direktive (eng. directives) su komande koje definisu kako Nginx obradjuje HTTP zahtjeve. Svaka direktiva se sastoji od naziva i vrijednosti koja se dodeljuje tom nazivu. Direktive se koriste u konfiguracijskim fajlovima da bi se definisala podesavanja za Nginx web server, kao sto su server blokovi, lokacije i ostale opcije.

Primjer jedne direktive bi mogao biti:
```bash
listen 80;
```
U ovom primjeru, "listen" je naziv direktive, a "80" je vrijednost koja se dodeljuje toj direktivi. Ova direktiva definise da Nginx slusa na portu 80 za dolazne HTTP zahtjeve.

Primjer server konteksta bi mogao biti:
```bash
server {
    listen 80;
    server_name example.com;
    root /var/www/example.com;
    index index.html;
    location / {
        try_files $uri $uri/ /index.html;
    }
}
```
U ovom primjeru, sve direktive koje se nalaze u bloku `server` primjenjuju se na taj pojedinacni server blok. Direktive koje se nalaze u bloku `location` primjenjuju se samo na URL-ove koji odgovaraju putanji /. U ovom slucaju, direktiva `try_files` definise da Nginx treba da pokusa da pronadje datoteku koja odgovara URL-u koji je klijent poslao. Ako datoteka ne postoji, Nginx ce pokusati da pronadje datoteku koja odgovara URL-u koji je klijent poslao, ali sa dodatnim znakom /. Ako ni ta datoteka ne postoji, Nginx ce pokusati da pronadje datoteku koja se zove index.html.

Da bi izmjene koje ste napravili u konfiguraciji Nginx-a bile vidljive, potrebno je ponovo pokrenuti Nginx. Ovo se moze uraditi sa sledecom komandom:
```bash
$ sudo systemctl restart nginx
```
Pored nginx.conf fajla, postoje i drugi konfiguracijski fajlovi koji se nalaze u direktorijumu `/etc/nginx/`. Ovi fajlovi se koriste za dodatna podesavanja i konfiguracije.

To su sljedeci fajlovi:
- `mime.types` - Ovaj fajl sadrzi listu MIME tipova koji se koriste za odredjivanje tipa sadrzaja koji se vraca klijentu sto omogucava klijentima da pravilno prikazu sadrzaj web stranica. Npr. MIME tip za HTML fajl je `text/html`, a za JPEG sliku `image/jpeg`. Ako server salje HTML fajl sa MIME tipom `text/html`, browser ce ga pravilno interpretirati i prikazati HTML stranicu. Slicno tome, ako server salje sliku sa MIME tipom `image/jpeg`, browser ce prikazati sliku na odgovarajuci nacin.
- `fastcgi.conf` - Ovaj fajl sadrzi podesavanja za `FastCGI` procese. `FastCGI` procesi se koriste za obradu dinamickog sadrzaja na web sajtu. `FastCGI` je protokol koji omogucava web serveru da uspostavi vezu sa FastCGI procesom koji izvrsava aplikaciju. FastCGI procesi se koriste za generisanje dinamickog sadrzaja na web sajtu, kao sto su skripte za generisanje HTML stranica, **PHP skripte** i drugi programski jezici.
- `scgi_params` - **SCGI (Simple Common Gateway Interface)** je jednostavan protokol za komunikaciju izmedju web servera i aplikacijskog servera koji se koristi za generisanje dinamickog sadrzaja na web sajtovima. SCGI je slican FastCGI protokolu, ali je jednostavniji i manje fleksibilan. `SCGI` procesi se koriste za generisanje dinamickog sadrzaja na web sajtu, kao sto su skripte za generisanje HTML stranica, **Python skripte** i drugi programski jezici.
- `uwsgi_params` - Ovaj fajl sadrzi podesavanja za `uWSGI` procese. `uWSGI` je jedan od najpopularnijh **WSGI (Web Server Gateway Interface)** servera. `uWSGI` procesi se koriste za obradu dinamickog sadrzaja na web sajtu. `uWSGI` je protokol koji omogucava web serveru da uspostavi vezu sa `uWSGI` procesom koji izvrsava aplikaciju. `uWSGI` procesi se koriste za generisanje dinamickog sadrzaja na web sajtu, kao sto su skripte za generisanje HTML stranica, **Python skripte** i drugi programski jezici. Preporuka je da pogledate sljedecu stranicu [Why is WSGI necessary?](https://www.fullstackpython.com/wsgi-servers.html) kako bi razumjeli zasto je potreban WSGI protokol.
- `*-utf` - UTF metode omogucavaju enkodiranje znakova razlicitih jezika sto omogucava njihovo prikazivanje.

## Korisni linkovi
- Link za [Markdown sintaksu](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
- [How to use GitHub with SSH Keys on Windows 10](https://www.youtube.com/watch?v=a-zX_qc2S-M)
- Uvod u Git, Tomo Krajina - [bilješke](https://github.com/rijadp/devops-aws-mentorship-program/blob/main/devops-mentorship-program/02-february/week-1-140223/files/uvod-u-git-notes.md)
- [Explain Shell](https://explainshell.com/)

**Linkovi sa predavanja**

- [Week-1-1 (Git i Github)](https://www.youtube.com/watch?v=jNPFe9vdRFI)
- [Week-1-2 (Git i Github)](https://www.youtube.com/watch?v=FDOho51mkuE)
- [Week-2-1 (Linux/Unix)](https://www.youtube.com/watch?v=VWUv7sISfs0)
- [Week-2-2 (Linux/Unix)](https://www.youtube.com/watch?v=ZbtgMIyu5ZY)
- [Week-3-1 (Bash/Shell scripting)](https://www.youtube.com/watch?v=HVXbqo21ED0)
- [Week-4-1 (Networking)](https://www.youtube.com/watch?v=4coqHeNVeps)
- [Week-4-2 (Networking)](https://www.youtube.com/watch?v=UlkPnSWJlH8)
- [Week-5-1 (Web Servers/NGINX)](https://www.youtube.com/watch?v=agT0spYqHP4)
- [Week-5-2 (Web Servers/Apache)](https://www.youtube.com/watch?v=qhzWUF5mpWU)
- [Week-5-2 (Web Servers/Uvod u Cloud/AWS)](https://www.youtube.com/watch?v=no5T7CzRumI)


**Office Hours**

- [Week-1](https://www.youtube.com/watch?v=Ve7BY5WwRDw)
- [Week-3](https://www.youtube.com/watch?v=NTlYCjF0ldY)
