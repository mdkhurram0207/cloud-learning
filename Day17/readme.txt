## 📅 Day 17 - Advanced Networking  

### 🔑 What I Learned Today  

#### 1. DNS (Domain Name System)  
- DNS is like the **phonebook of the internet**.  
- It converts **domain names** (e.g., `google.com`) into **IP addresses** (e.g., `142.250.182.14`) so browsers can load websites.  
- Process of DNS resolution:  
  1. User types domain in browser.  
  2. Request goes to **DNS resolver**.  
  3. Resolver queries **root servers → TLD servers → authoritative name servers**.  
  4. IP is returned, and the browser connects to the website.  
- Types of DNS records:  
  - **A Record:** Maps domain to IPv4.  
  - **AAAA Record:** Maps domain to IPv6.  
  - **CNAME:** Alias for another domain.  
  - **MX Record:** For mail servers.  

---

#### 2. NAT (Network Address Translation)  
- NAT translates **private IPs** (inside your network) into **public IPs** (on the internet).  
- Needed because private IPs are not routable on the internet.  
- Benefits:  
  - Conserves public IPv4 addresses.  
  - Adds a layer of security (hides internal devices).  
- Types of NAT:  
  - **Static NAT:** One private ↔ one public.  
  - **Dynamic NAT:** Private ↔ pool of public IPs.  
  - **PAT (Port Address Translation):** Many private IPs share one public IP using different ports.  

---

#### 3. Firewalls  
- A **firewall** acts as a gatekeeper for network traffic.  
- It allows or blocks traffic based on **rules**.  
- Types:  
  - **Packet Filtering Firewall:** Checks IP, ports, protocol.  
  - **Stateful Firewall:** Tracks active connections, more secure.  
  - **Application Firewall:** Filters based on applications (e.g., HTTP, FTP).  
- Example: Cloud providers (AWS, Azure, GCP) use **Security Groups** and **Network ACLs** as firewalls.  

---

#### 4. VPN (Virtual Private Network)  
- A **VPN** creates a secure **encrypted tunnel** between your device and another network.  
- Used to:  
  - Hide your IP and encrypt your traffic.  
  - Access resources securely over public internet.  
  - Connect remote employees to corporate networks.  
- Protocols:  
  - **IPSec** (Internet Protocol Security).  
  - **OpenVPN**.  
  - **WireGuard**.  

---

#### 5. CDN (Content Delivery Network)  
- A **CDN** speeds up content delivery by caching it in multiple **edge servers** worldwide.  
- Instead of fetching data from the origin server, users get it from the nearest CDN node.  
- Benefits:  
  - Faster website loading.  
  - Reduced latency.  
  - Handles high traffic loads.  
- Examples: Cloudflare, Akamai, AWS CloudFront.  

---

### ✅ Key Takeaway  
Today I explored **advanced networking** concepts:  
- **DNS** makes internet navigation possible.  
- **NAT** helps manage limited IPv4 addresses.  
- **Firewalls** secure traffic.  
- **VPNs** provide secure, private connections.  
- **CDNs** improve performance and reliability of applications.  

Together, these technologies ensure that modern networks are **secure, scalable, and efficient**.  
