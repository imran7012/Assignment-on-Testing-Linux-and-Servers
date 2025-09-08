# Assignment-on-Testing-Linux-and-Servers

# Task 1: System Monitoring Setup


---

### Steps

## 1. Installation
 sudo yum install htop -y




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

      chage -M 90 -W 7 sarah

      chage -M 90 -W 7 mike

---

   ## 4. Verify Policy Settings:

      chage -l sarah
      
      chage -l mike

  <img width="1096" height="559" alt="image" src="https://github.com/user-attachments/assets/547ca28e-eb64-44fe-b11a-c03c04235331" />
      

---


   ## 5. Enforce Complexity for the Password

      vi /etc/security/pwquality.conf
      Change this highlighted values to o to -1
      
  <img width="562" height="466" alt="image" src="https://github.com/user-attachments/assets/c7f9a0f7-3e3f-49b1-bb8d-f29a9f640c3a" />


---

  ## 6. Prevent Reuse of Old Password

      vi /etc/pam.d/system-auth

   <img width="1147" height="420" alt="image" src="https://github.com/user-attachments/assets/85e9479a-279e-4f3a-a769-2a41d717a527" />


   ## 7. Test policy by attempting weak password reset

   
   <img width="955" height="277" alt="image" src="https://github.com/user-attachments/assets/dd0afdf6-af20-46ae-97d1-e899efd20bd2" />

  

---

 
