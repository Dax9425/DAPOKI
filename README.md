# 🔎 DAPOKI – Information Gathering Toolkit

![DAPOKI Banner](https://raw.githubusercontent.com/YOUR_USERNAME/DAPOKI/main/assets/banner.png)

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

---
📄 Authors: 
  Daksh, Kinjal, Poojan
---
Made with ❤️ by Team CTRL + ALT + DEFEND
