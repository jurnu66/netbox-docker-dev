# Base NetBox version ที่เพื่อนใช้
FROM netboxcommunity/netbox:v4.4-3.4.1

# ติดตั้งปลั๊กอินของคุณ
RUN uv pip install netbox-topology-views

# สร้าง static files ใหม่ (จำเป็นสำหรับปลั๊กอิน)
RUN python /opt/netbox/netbox/manage.py collectstatic --no-input
