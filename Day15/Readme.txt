# 🚀 Day 15 – Networking Basics: IP, TCP, UDP & Subnets

Today I focused on understanding some **core networking concepts** that are essential for Cloud & DevOps:

---

## 🌍 Internet Protocol (IP)

- IP is like the **address system for computers** on a network.  
- Every device connected to the internet or LAN has an **IP address**.  
- Think of it as a **home address** that helps data packets know where to go.

### 🔹 Types of IP:
- **IPv4:** Example → `192.168.1.1` (most commonly used).  
- **IPv6:** Example → `2001:db8::1` (supports many more devices).  

---

## 📦 Transmission Control Protocol (TCP)

- TCP ensures **reliable communication** between devices.  
- It breaks data into **packets**, sends them, and ensures all are delivered in order.  
- If any packet is lost, TCP **retransmits it**.  

✅ **Key Features:**  
- Connection-oriented (handshake before sending data).  
- Reliable, ordered, error-checked delivery.  
- Example Uses: Web browsing (HTTP/HTTPS), Emails (SMTP, IMAP).

---

## ⚡ User Datagram Protocol (UDP)

- UDP is **faster** but **less reliable** than TCP.  
- It just sends packets without checking if they arrived.  

✅ **Key Features:**  
- Connectionless, no handshake.  
- Faster, but no guarantee of delivery/order.  
- Example Uses: Online gaming, video streaming, voice calls.  

---

## 🌐 Subnets (Sub-networks)

- A **subnet** is like dividing a **big neighborhood into smaller blocks**.  
- Helps manage IP addresses efficiently and improve performance.  

### Example:
- Network: `192.168.1.0/24`  
- Subnet Mask: `255.255.255.0`  
- This means → **256 possible addresses** (`192.168.1.0` – `192.168.1.255`).  

✅ **Why Subnets are Important?**  
- Reduce congestion.  
- Improve security by isolating networks (public vs private).  
- Essential for Cloud networking (AWS VPC, GCP VPC, Azure VNets).  

---

## 🔑 Analogy (Simple Terms)

- **IP Address** = House address  
- **Subnet** = Neighborhood  
- **TCP** = Registered mail (guaranteed delivery)  
- **UDP** = Normal mail (fast but no guarantee)  
- **Router** = Post office that sends letters outside the neighborhood  

---

## 📖 Summary

- **IP** = Address system of devices.  
- **TCP** = Reliable communication.  
- **UDP** = Fast communication.  
- **Subnets** = Divide large networks for better management.  

---

📅 **Day 15 Complete!**  
✔ Learned IP, TCP, UDP, Subnets in detail with examples.  
✔ Clearer understanding of how devices talk in networks.  
