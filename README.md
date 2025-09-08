<img width="788" height="392" alt="image" src="https://github.com/user-attachments/assets/573668c1-c967-4651-abb6-3e2e4e5cb879" /># Assignment-on-Testing-Linux-and-Servers

# Task 1: System Monitoring Setup


---

### Steps

## 1. Installation
 sudo yum install htop -y

---


## 2. Create script for monitoring and execution.
  vi monitor.sh
  
  chmod +x monitor.sh

  ./monitor.sh
  

<img width="788" height="392" alt="image" src="https://github.com/user-attachments/assets/49cc478a-309c-44aa-80df-b7d0023436d3" />


---

## 3. OutPut

<img width="735" height="872" alt="image" src="https://github.com/user-attachments/assets/57d2388e-bdcb-42e9-bf0c-d644b84b0dde" />


 

---


# Task 2: User Management and Security


  ### Steps

   ## 1. Create User Accounts 
   
     adduser sarah
     
     adduser mike

 <img width="1263" height="997" alt="image" src="https://github.com/user-attachments/assets/a65a31da-93fd-4e22-8a55-1a4626c6b30b" />



---

   ## 2. Set secure passwords:
   
     passwd sarah

     passwd mike

   <img width="864" height="372" alt="image" src="https://github.com/user-attachments/assets/5a6d2d7a-7c90-48b5-bc2e-0f447170a681" />

---


   ## 3. Setting up isolated directories with appropriate permissions

     chmod 700 /home/sarah
     
     chmod 700 /home/mike


---

   ## 3. Password Policy Setup

      chage -M 30 -W 7 sarah

      chage -M 30 -W 7 mike

---

   ## 4. Verify Policy Settings:

      chage -l sarah
      
      chage -l mike

 <img width="857" height="211" alt="image" src="https://github.com/user-attachments/assets/b4b32421-de07-4fb1-bb5f-80c834bda379" />

      

---


   ## 5. Enforce Complexity for the Password

      vi /etc/security/pwquality.conf
      Change this highlighted values to o to -1
      
  <img width="562" height="466" alt="image" src="https://github.com/user-attachments/assets/c7f9a0f7-3e3f-49b1-bb8d-f29a9f640c3a" />


---

  ## 6. Prevent Reuse of Old Password

      vi /etc/pam.d/system-auth

   <img width="1147" height="420" alt="image" src="https://github.com/user-attachments/assets/85e9479a-279e-4f3a-a769-2a41d717a527" />


---
   
   ## 7. Test policy by attempting weak password reset

   
   <img width="955" height="277" alt="image" src="https://github.com/user-attachments/assets/dd0afdf6-af20-46ae-97d1-e899efd20bd2" />

  

---

 
# Task 3: Backup Configuration for Web Servers

 ### Steps

   ## 1. Create Backup Script
     created backup_webservers.sh

     chmod +x backup_web.sh
     
  <img width="841" height="543" alt="image" src="https://github.com/user-attachments/assets/fedccc4d-8f16-4552-84a3-13392ae462c3" />


---


   ## 2. Execution of the script
   
     ./backup_webservers.sh
  
  <img width="891" height="140" alt="image" src="https://github.com/user-attachments/assets/5c3e89cf-2727-4e8a-a180-af1fe247b546" />


---

   ## 3. Schedule with Cron

      crontab -e (It was not working)

      yum install cronie -y

      systemctl enable crond

      systemctl start crond

      systemctl status crond

<img width="1380" height="407" alt="image" src="https://github.com/user-attachments/assets/cf9fb5b9-a534-43a8-ac3c-681cb49428d2" />


      
<img width="447" height="55" alt="image" src="https://github.com/user-attachments/assets/defda0b2-82d8-41d7-ac20-5cb39c5d931d" />

  
---

   ## 4. Verify Backups
     tar -tzf "nginx_backup_2025-09-08.tar.gz" | head -20
 <img width="1028" height="971" alt="image" src="https://github.com/user-attachments/assets/b064314e-266b-488b-888f-a65a9afa0eb1" />


---

   

  
