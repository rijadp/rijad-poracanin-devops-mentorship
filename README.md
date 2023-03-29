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
Potrebno je u firewalld dodati pravilo: `sudo firewall-cmd --zone=public --add-port=80/tcp --permanent`. Za ponovno učitavanje firewalla, koristiti komandu `sudo firewall-cmd --reload`.

Da biste provjerili sva pravila koja su dodana u firewallu na CentOS 7, možete koristiti naredbu: `sudo firewall-cmd --list-all`, ili samo za određenu zonu, npr: `sudo firewall-cmd --zone=public --list-all`

Defaultni root direktoriji nalazi se na lokaciji: `/usr/share/nginx/html`. Ova putanja definisana je unutar `server` bloka defaultnog nginx konfiguracijskog fajla koji se nalazi na lokaciji `/etc/nginx/nginx.conf`.

Da podesimo da se Nginx starta automatski nakon restarta servera, koristimo komandu: `sudo systemctl enable nginx`.
Za provjeru koristimo komandu: `systemctl is-enabled nginx`


## Konfiguracija Node.js aplikacije

Koristan tutorijal na Digital Ocean stranici [How To Set Up a Node.js Application for Production on CentOS 7](https://www.digitalocean.com/community/tutorials/how-to-set-up-a-node-js-application-for-production-on-centos-7)
```bash
$ curl -L -o nodesource_setup.sh https://rpm.nodesource.com/setup_14.x # Download Node.js 14 setup script
$ sudo bash nodesource_setup.sh # Run Node.js setup script
$ sudo yum clean all # Clean yum cache
$ sudo yum makecache fast # Make yum cache
$ sudo yum install -y gcc-c++ make # Install build tools
$ sudo yum install nodejs # Install Node.js
$ node -v # Check Node.js version
```

#### Application setup
```
$ npm install -g pm2 # Install pm2 process manager - da nam osigura da aplikacija ostane startana i nakon sto ugasimo sesiju. Tj. osigurace da nasa app radi u pozadini.
$ pm2 start server.js # Start Node.js application
```

**Korisne komande za troubleshooting:**
```bash
$ curl -l http://localhost:3000 # Check if Node.js application is running

$ pm2 list # Check if Node.js application is running

$ ps aux | grep node # Check if Node.js application is running

$ sudo netstat -tulpn | grep :3000 # Check if Node.js application is running on port 3000

$ systemctl status nginx # Check if NGINX is running

$ sudo systemctl reload nginx # Reload NGINX configuration without stopping/restarting the NGINX service and without losing any active connections.

$ sudo systemctl stop/start/restart nginx # Stop NGINX service / Start NGINX service / Restart NGINX service

$ sudo nginx -t # Test NGINX configuration

$ sudo nginx -s reload # Reload NGINX configuration, this command is used to reload NGINX configuration after making changes to the configuration file without restarting the NGINX service.
$ sudo journalctl -u nginx # Shop NGINX logs and errors. journalctl is a command line tool for viewing and querying the systemd journal.

$ sudo systemctl reload nginx # Reload NGINX configuration without stopping/restarting the NGINX service.

$ semanage port --list # SELinux port list

$ semanage port --list | grep http_port_t # Check if port 80 is allowed
```

## Korisni linkovi
- Link za [Markdown sintaksu](https://docs.github.com/en/get-started/writing-on-github/getting-started-with-writing-and-formatting-on-github/basic-writing-and-formatting-syntax)
- [How to use GitHub with SSH Keys on Windows 10](https://www.youtube.com/watch?v=a-zX_qc2S-M)
- Uvod u Git, Tomo Krajina - [bilješke](https://github.com/rijadp/devops-aws-mentorship-program/blob/main/devops-mentorship-program/02-february/week-1-140223/files/uvod-u-git-notes.md)
- Linux - [FIND komanda](https://github.com/allops-solutions/devops-aws-mentorship-program/blob/main/resources/notability/bash_notes.pdf)
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
- [Week-6-1 (Web Servers/Uvod u Cloud/AWS)](https://www.youtube.com/watch?v=no5T7CzRumI)
- [Week-6-2 (Web Servers/Uvod u Cloud/AWS)](https://www.youtube.com/watch?v=MBoN7FflLYs)


**Office Hours**

- [Week-1](https://www.youtube.com/watch?v=Ve7BY5WwRDw)
- [Week-3](https://www.youtube.com/watch?v=NTlYCjF0ldY)
