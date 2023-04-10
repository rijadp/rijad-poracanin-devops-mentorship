## Zadaća za Week-8

DNS Name Load Balancera: [http://alb-web-servers-2043485402.us-east-1.elb.amazonaws.com/](http://alb-web-servers-2043485402.us-east-1.elb.amazonaws.com/)

### Napravljeni su sljedeći koraci:
- Napravio AMI image od EC2 instance ec2-rijad-poracanin-web-server
- Od tog AMI image-a sam kreirao još jednu EC2 instancu.
- Konfigurisao Load Balancer za ove dvije EC2 instance.
    - Kreirao Security grupu za Load Balancer, samo port 80 dopušten.
    - Kreirao Target grupu u koju sam dodao ove dvije ec2 instance.
- Pristupio web serveru koristeći DNS name Load Balancera: [http://alb-web-servers-2043485402.us-east-1.elb.amazonaws.com/](http://alb-web-servers-2043485402.us-east-1.elb.amazonaws.com/)
- Editovao Inbound rules unutar Security grupe od EC2 instanci, na način da sam onemogućio pristup preko HTTP porta sa bilo koje mreže. Dozvolio sam pristup preko HTTP porta samo iz security grupe od Load Balancera. 
- Kreirao Template za Auto Scalling grupu koristeći gore kreirani AMI Image. Na osnovu toga kreirao Auto Scalling grupu.