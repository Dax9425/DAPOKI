#!/bin/bash

echo "-------------------------------------------------------------------" |lolcat
# Banner function using figlet + lolcat
banner() {
  clear
  echo "DAPOKI" | figlet -f mono12 | lolcat -a -d 5
  echo -e "\n🔍 Information Gathering Tool 🔍" | lolcat 
  sleep 0.7
  echo -e "Authors : Daksh, Kinjal, Poojan" | lolcat 
  sleep 0.7
  echo -e "All Rights Resversed By Team CTRL + ALT + DEFEND" | lolcat 
  sleep 0.7
}

banner;
# echo "-------------------------------------------------------------------" |lolcat
is_valid_ip() {
  local ip=$1
  local valid_regex="^([0-9]{1,3}\.){3}[0-9]{1,3}$"

  if [[ $ip =~ $valid_regex ]]; then
    IFS='.' read -r -a octets <<< "$ip"
    for octet in "${octets[@]}"; do
      if (( octet < 0 || octet > 255 )); then
        return 1
      fi
    done
    return 0
  else
    return 1
  fi
}

ip(){
  read -p "Enter IP Address: " target

        if is_valid_ip "$target"; then
          echo "✅ $target is a valid IP address."
        else
          echo "❌ $target is NOT a valid IP address."
          exit
        fi
}

dom(){
  read -p "Enter Domain Name: " domain
}

phon(){
  read -p "Enter Phone Number: " phone_number
}

for a in {1..99999}
do
echo "-------------------------------------------------------------------" | lolcat
echo -e "\e[33m(1) Ping"
echo "(2) Open Ports"
echo "(3) Nslookup" 
echo "(4) Trace route"
echo "(5) Shodan" 
echo "(6) WhoIs LookUp" 
echo "(7) The Harvester"
echo "(8) Phone Number Information"
echo "(0) Quit / Exit" 
echo "-------------------------------------------------------------------" | lolcat
echo "Select One Option :"
read opt
echo "-------------------------------------------------------------------" | lolcat

case $opt in 
     1) 
        ip;
        ping $target -c 10
        read -p "Would you like to save the results (y/n): " save
        if [[ "$save" == "y" ]]; then
          output_file="Ping_$(date +%F_%H%M%S).txt"
          command_output=$(ping $target -c 10)
          echo "$command_output" | tee "$output_file"
          echo "✅ Saved to $output_file"
        else
          echo "OK"
        fi
        ;; 
    2)
        ip;
        echo "-------------------------------------------------------------------" | lolcat
        echo -e "\e[31m(0) Agressive Scan" 
        echo "(1) Simple Port Scan"
        echo "(x) Back..."
        echo "-------------------------------------------------------------------" | lolcat
        echo "Select Option :"
        read scn

        case "$scn" in
          0)
            nmap $target -A
            read -p "Would you like to save the results (y/n): " save
            if [[ "$save" == "y" ]]; then
              output_file="Nmap_Aggresive_$(date +%F_%H%M%S).txt"
              command_output=$(nmap $target -A)
              echo "$command_output" | tee "$output_file"
              echo "✅ Saved to $output_file"
            else
              echo "OK"
            fi
            ;;
          1)
            nmap $target -p 1-1024
            read -p "Would you like to save the results (y/n): " save
            if [[ "$save" == "y" ]]; then
              output_file="Nmap_Simple_$(date +%F_%H%M%S).txt"
              command_output=$(nmap $target -p 1-1024)
              echo "$command_output" | tee "$output_file"
              echo "✅ Saved to $output_file"
            else
              echo "OK"
            fi
            ;;
          x)
            continue
            ;;
        esac
        ;;
     3) 
        ip;
        nslookup $target
        read -p "Would you like to save the results (y/n): " save
            if [[ "$save" == "y" ]]; then
              output_file="NslookUp_$(date +%F_%H%M%S).txt"
              command_output=$(nslookup $target)
              echo "$command_output" | tee "$output_file"
              echo "✅ Saved to $output_file"
            else
              echo "OK"
            fi
        ;;
    4) 
        ip;
        traceroute $target -m 10
        read -p "Would you like to save the results (y/n): " save
        if [[ "$save" == "y" ]]; then
          output_file="Traceroute_$(date +%F_%H%M%S).txt"
          command_output=$(traceroute $target -m 10)
          echo "$command_output" | tee "$output_file"
          echo "✅ Saved to $output_file"
        else
          echo "OK"
        fi
        ;;
    5) 
        ip;
        shodan host $target
        read -p "Would you like to save the results (y/n): " save
        if [[ "$save" == "y" ]]; then
          output_file="Shodan_$(date +%F_%H%M%S).txt"
          command_output=$(shodan host $target)
          echo "$command_output" | tee "$output_file"
          echo "✅ Saved to $output_file"
        else
          echo "OK"
        fi
        ;;
    6) 
        ip;
        whois $target
        read -p "Would you like to save the results (y/n): " save
        if [[ "$save" == "y" ]]; then
          output_file="WhoIs_$(date +%F_%H%M%S).txt"
          command_output=$(whois $target)
          echo "$command_output" | tee "$output_file"
          echo "✅ Saved to $output_file"
        else
          echo "OK"
        fi
        ;;
    7) 
        dom;
        if [[ $domain == "" ]]; then
          echo "Please Enter Domain Name First..!"
        else
          theHarvester -d $domain -b bing
          read -p "Would you like to save the results (y/n): " save
          if [[ "$save" == "y" ]]; then
            output_file="TheHarvester_$(date +%F_%H%M%S).txt"
            command_output=$(theHarvester -d $domain -b bing)
            echo "$command_output" | tee "$output_file"
            echo "✅ Saved to $output_file"
          else
            echo "OK"
          fi
        fi
        ;;
    8)
      phon;
        
      pni(){
        response=$(curl -s "http://apilayer.net/api/validate?access_key=2a0159a4ce1df5537f2814713c434216&number=$phone_number")

        # Remove braces and split by comma
        echo "$response" | sed 's/[{}]//g' | tr ',' '\n' | while IFS=":" read -r key value; do
        # Clean key and value
        clean_key=$(echo "$key" | sed 's/^"\(.*\)"$/\1/' | sed 's/^ *//g')
        clean_value=$(echo "$value" | sed 's/^"\(.*\)"$/\1/' | sed 's/^ *//g')
  
        # Capitalize key and print
        if [ -n "$clean_key" ] && [ -n "$clean_value" ]; then
        # Optional: Beautify the key
          formatted_key=$(echo "$clean_key" | sed -E 's/_/ /g; s/\b(.)/\u\1/g')
          echo "$formatted_key: $clean_value"
        fi
        done
      }
      pni;
      read -p "Would you like to save the results (y/n): " save
        if [[ "$save" == "y" ]]; then
          output_file="Phone_Num_Info_$(date +%F_%H%M%S).txt"
          command_output=$(pni;)
          echo "$command_output" | tee "$output_file"
          echo "✅ Saved to $output_file"
        else
          echo "OK"
        fi
      ;;
    0)
        echo "Thanks For Using DAPOKI"
        exit
        ;;
esac
done