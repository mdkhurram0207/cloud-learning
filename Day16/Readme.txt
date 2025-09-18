 Day 16 - Networking Journey  

  What I Learned Today  

 1. VPC (Virtual Private Cloud)  
- A **VPC** is like your own private section of the cloud where you can define your networking environment.  
- You can choose **IP ranges**, create **subnets**, and set up **routing tables** and **internet gateways**.  
- It allows better **security** and **isolation** of resources (servers, databases, etc.).  
- Example: In AWS, a VPC lets you run EC2 instances with full control over inbound/outbound traffic.  

2. Traceroute  
- **Traceroute** is a command-line tool that shows the path a packet takes from your system to a destination.  
- It lists all the routers (hops) in between, along with the time taken to reach each hop.  
- Useful for:  
  - Identifying network latency.  
  - Finding bottlenecks or failures in the connection path.  
- Example command:  
  - On Linux/Mac: `traceroute google.com`  
  - On Windows: `tracert google.com`  

 3. IP (Internet Protocol)  
- IP addresses** are unique identifiers assigned to devices for communication over a network.  
- Two main versions:  
  - **IPv4:** 32-bit, written as `192.168.1.1` (limited, running out).  
  - **IPv6:** 128-bit, written as `2001:0db8:85a3::8a2e:0370:7334` (much larger space).  
- **Public IPs:** Accessible over the internet.  
- **Private IPs:** Used inside local/private networks.  
- Subnetting helps divide large networks into smaller, manageable sections.  

 4. Load Balancers  
- A **Load Balancer** is like a traffic manager for your servers.  
- It distributes incoming network traffic across multiple servers to:  
  - Prevent one server from getting overloaded.  
  - Increase application availability and reliability.  
  - Improve response times.  
- Types:  
  - **Layer 4 (Transport-level):** Balances based on IP and TCP/UDP ports.  
  - **Layer 7 (Application-level):** Balances based on HTTP headers, cookies, or request paths.  
- Example: In AWS, **Elastic Load Balancer (ELB)** automatically distributes incoming traffic to multiple EC2 instances.  


