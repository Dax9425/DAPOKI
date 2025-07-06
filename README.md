# 🔎 DAPOKI – Information Gathering Toolkit

![image alt](https://github.com/Dax9425/DAPOKI/blob/4518a07ff3b713bc5df4a0bf645e6773f8356cab/DAPOKI%20(2).png)

> **Version:** 1.0  
> **Authors:** Daksh, Kinjal, Poojan  
> **Team:** CTRL + ALT + DEFEND

---

## 📌 What is DAPOKI?

**DAPOKI** is a bash-based information gathering tool designed for ethical hackers, cybersecurity students, and pentesters. It offers a sleek interface with colorful output, supports multiple recon methods, and allows saving reports for documentation.

---

## ⚙️ Features

- ✅ Validates IP addresses
- 🌐 Domain name input and usage
- 📞 Phone number lookup via API
- 📡 Ping and traceroute functionality
- 🔍 Port scanning (simple & aggressive) via **nmap**
- 🧠 Domain recon with **theHarvester**
- 📁 Whois and Nslookup lookups
- 🌐 Shodan host info retrieval
- 📝 Report saving supported

---

## 🖥️ Demo

```bash
$ ./dapoki.sh
```

🚀 Installation
You can install all required dependencies using this single command:

```bash
sudo apt update && sudo apt install -y nmap whois traceroute figlet lolcat curl
```
Make sure you also have
shodan
theHarvester
Internet connection for API-based phone number lookup

🔐 API Setup for Phone Lookup
DAPOKI uses the Numverify API for phone number information.

Replace your API key in the script:

```bash

http://apilayer.net/api/validate?access_key=YOUR_API_KEY&number=$phone_number
```
📂 How to Use
```bash

git clone https://github.com/YOUR_USERNAME/DAPOKI.git
cd DAPOKI
chmod +x dapoki.sh
./dapoki.sh
```
📸 Screenshots

![image alt](https://github.com/Dax9425/DAPOKI/blob/587a5ed1fc0377522986c4d0bf5d7680b6b629dd/DAPOKI(1).png)

---
📄 Authors: 
  Daksh, Kinjal, Poojan
---
Made with ❤️ by Team CTRL + ALT + DEFEND
