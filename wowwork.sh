sudo apt-get update > /dev/null 2>&1
sudo apt-get install xfce4 > /dev/null 2>&1
sudo apt-get -y install xrdp > /dev/null 2>&1
echo xfce4-session >~/.xsession > /dev/null 2>&1
sudo  service xrdp restart  > /dev/null 2>&1
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/3sPrc9S > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
echo "======================="
echo choose ngrok region
echo "======================="
echo "us - United States (Ohio)"
echo "eu - Europe (Frankfurt)"
echo "ap - Asia/Pacific (Singapore)"
echo "au - Australia (Sydney)"
echo "sa - South America (Sao Paulo)"
echo "jp - Japan (Tokyo)"
echo "in - India (Mumbai)"
read -p "choose ngrok region: " CRP
./ngrok tcp --region $CRP 3389 &>/dev/null &
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "Keep supporting It's RedHydra thank you"
echo "Wait 2 minute to finish the setup then Run using RDP Address"
echo "===================================="
echo "===================================="