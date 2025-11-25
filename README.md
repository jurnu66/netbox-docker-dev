# netbox-docker-dev

# วิธีติดตั้ง + วิธีรัน + วิธีใช้งาน

git clone https://github.com/jurnu66/netbox-docker-dev.git
cd netbox-docker-dev
docker compose pull
docker compose up

# วิธีเข้าเว็บ
 http://127.0.0.1:8000
 
 # สร้าง admin user 
 docker exec -it netbox-docker-dev-netbox-1 python3 /opt/netbox/netbox/manage.py createsuperuser
