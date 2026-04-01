# 🚀 AWS ALB Path-Based Routing Project

## 📌 Project Overview
This project demonstrates how to configure path-based routing using AWS Application Load Balancer (ALB).

---

## 🏗️ Architecture
- Application Load Balancer
- 2 Target Groups
- EC2 Instances (Nginx)

<img width="1060" height="373" alt="Screenshot 2026-04-01 091841" src="https://github.com/user-attachments/assets/fd36b9f4-8ed8-4035-a1ed-23f8afeb70ec" />
<img width="1156" height="275" alt="Screenshot 2026-04-01 091824" src="https://github.com/user-attachments/assets/c8e2b40a-9d58-4670-9c8e-df11dcf7b37e" />
<img width="1585" height="699" alt="Screenshot 2026-04-01 091806" src="https://github.com/user-attachments/assets/c3617975-90da-48b4-b7dc-09d59371c53a" />

---

## 🎯 Routing Logic

| URL Path | Destination |
|----------|------------|
| /app1    | Target Group 1 |
| /app2    | Target Group 2 |

<img width="1474" height="762" alt="Screenshot 2026-04-01 091815" src="https://github.com/user-attachments/assets/14e04443-bcc0-4499-a91c-4cb9a1ec81a7" />

---

## ⚙️ Features
- Path-based traffic routing
- Multiple applications behind one load balancer
- High availability setup

---

## 🛠️ Implementation Steps

### 1️⃣ Launch EC2 Instances

#### App1 Servers
```bash
sudo yum install nginx -y
sudo systemctl start nginx
mkdir -p /usr/share/nginx/html/app1
echo "This is APP1" > /usr/share/nginx/html/app1/index.html
```
#### App2 Servers
```bash
sudo yum install nginx -y
sudo systemctl start nginx
mkdir -p /usr/share/nginx/html/app2
echo "This is APP2" > /usr/share/nginx/html/app2/index.html
```
## Create Target Groups
- TG-App1
- TG-App2
- Health Check: /

## Create Application Load Balancer
- Internet-facing
- Attach both target groups
  
## Configure Listener Rules
- IF path = /app1* → Forward to TG-App1
- IF path = /app2* → Forward to TG-App2
  
## Testing
- http://<ALB-DNS>/app1

## Output: This is APP1

- http://<ALB-DNS>/app1
<img width="888" height="232" alt="Screenshot 2026-04-01 091723" src="https://github.com/user-attachments/assets/d7f6f234-2d2b-490e-8c2a-8105d3d05cf7" />


## Output: This is APP2

- http://<ALB-DNS>/app2
<img width="786" height="236" alt="Screenshot 2026-04-01 091740" src="https://github.com/user-attachments/assets/6f31f1c7-0121-4e47-838a-8c8a499aba1e" />


#Author
-Dhinakar M
