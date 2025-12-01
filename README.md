# 📥 2. การติดตั้ง (Installation)

ต้องมี:
- Docker Desktop **หรือ** Docker Engine  
- Docker Compose v2+

## 2.1 Clone โปรเจกต์

```bash
git clone https://github.com/jurnu66/netbox-docker-dev.git
cd netbox-docker-dev
docker compose pull
docker compose up

# วิธีเข้าเว็บ
 http://127.0.0.1:8000
 
 # สร้าง admin user 
 docker exec -it netbox-docker-dev-netbox-1 python3 /opt/netbox/netbox/manage.py createsuperuser


อัพเดท plugin
docker compose pull
docker compose up -d
