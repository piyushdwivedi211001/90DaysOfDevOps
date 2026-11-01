Day 14 – Networking Fundamentals 🌐
1. Introduction to Networking

Computer networking is the process of connecting two or more devices to share information, resources, and services.

Networking allows computers, servers, and other devices to communicate with each other using standardized protocols.

Importance of Networking in DevOps
Enables communication between servers and applications.
Helps manage cloud infrastructure.
Supports communication between microservices.
Allows developers to deploy and access applications remotely.
Helps troubleshoot connectivity issues.
2. OSI Model (Open Systems Interconnection)

The OSI model is a conceptual framework that explains how data travels between devices over a network.

It consists of seven layers.

Layer	Name	Main Function	Example
L7	Application	Provides network services to applications.	HTTP, DNS, FTP
L6	Presentation	Handles data formatting, encryption, and compression.	TLS, JPEG
L5	Session	Establishes and manages communication sessions.	Session management
L4	Transport	Provides end-to-end communication and data delivery.	TCP, UDP
L3	Network	Handles logical addressing and routing.	IP, ICMP
L2	Data Link	Handles frames and communication within a local network.	Ethernet, MAC
L1	Physical	Transmits raw bits through physical media.	Cables, radio signals
Key Points
The OSI model contains seven layers.
Each layer performs a specific networking function.
It helps understand and troubleshoot network communication.
Data moves from the Application layer towards the Physical layer during transmission.
3. TCP/IP Model

The TCP/IP model is a practical networking model used for communication over the Internet.

It consists of four layers.

Layer	Main Function	Examples
Application	Provides services for network applications.	HTTP, HTTPS, DNS, FTP
Transport	Handles end-to-end communication.	TCP, UDP
Internet	Handles IP addressing and packet routing.	IPv4, IPv6, ICMP
Link	Handles communication over the local network.	Ethernet, Wi-Fi
Key Points
TCP/IP is the foundation of Internet communication.
It contains four layers.
It defines how data travels between network devices.
It is widely used in servers, cloud computing, and DevOps environments.
4. OSI Model vs TCP/IP Model
OSI Model	TCP/IP Model
Contains 7 layers.	Contains 4 layers.
Mainly a conceptual reference model.	Practical communication model.
Developed by ISO.	Developed through DARPA/DoD networking research.
Separates Session and Presentation layers.	Includes these functions in Application layer.
Separates Data Link and Physical layers.	Combines them into Link layer.
Layer Mapping
OSI Model	TCP/IP Model
Application (L7)	Application
Presentation (L6)	Application
Session (L5)	Application
Transport (L4)	Transport
Network (L3)	Internet
Data Link (L2)	Link
Physical (L1)	Link
5. Network Protocols and Their Layers

A network protocol is a set of rules that allows devices to communicate with each other.

A. IP (Internet Protocol)
Layer: Network (OSI L3) / Internet (TCP/IP).
IP is responsible for logical addressing and routing packets between networks.
It helps data reach the correct destination.
B. TCP (Transmission Control Protocol)
Layer: Transport (OSI L4) / Transport (TCP/IP).
TCP provides reliable and ordered data delivery.
It uses acknowledgements and retransmission to handle lost data.
C. UDP (User Datagram Protocol)
Layer: Transport (OSI L4) / Transport (TCP/IP).
UDP provides connectionless communication.
It has lower overhead than TCP but does not guarantee delivery or ordering.
D. HTTP (Hypertext Transfer Protocol)
Layer: Application (OSI L7) / Application (TCP/IP).
HTTP is used for communication between web clients and servers.
It transfers web resources such as HTML documents and API responses.
E. HTTPS (Hypertext Transfer Protocol Secure)
Layer: Application (OSI L7) / Application (TCP/IP).
HTTPS uses HTTP over a secure TLS connection.
It protects data exchanged between clients and servers.
F. DNS (Domain Name System)
Layer: Application (OSI L7) / Application (TCP/IP).
DNS translates domain names into IP addresses.
It helps users access websites using readable domain names.
6. Real-World Example: curl https://example.com

The following command sends an HTTP request to a website using HTTPS:

curl https://example.com
How It Works
The Application layer uses HTTP to request a web resource.
HTTPS uses TLS to secure communication.
TCP provides reliable transport.
IP handles addressing and routing.
The Link layer transmits data over the local network.
Protocol Stack
Application Layer
       |
     HTTPS
       |
      TLS
       |
      TCP
       |
       IP
       |
   Link Layer
       |
  Physical Network

Important: DNS resolution may happen before the connection if the IP address is not already available in the DNS cache.

Key Learning

The command curl https://example.com demonstrates how application-level communication works over TCP and IP using HTTPS security.

7. Practical Commands
Check IP Address
ip addr

Displays network interfaces and their IP addresses.

Check Routing Table
ip route

Displays the system's routing table.

Test Network Connectivity
ping -c 4 example.com

Sends four ICMP echo requests to test connectivity.

Check DNS Resolution
nslookup example.com

Displays DNS information for a domain.

Make an HTTP/HTTPS Request
curl -I https://example.com

Displays HTTP response headers.

Trace Network Route
traceroute example.com

Displays the network hops taken to reach a destination.
