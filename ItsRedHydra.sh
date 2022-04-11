echo -e "$123\n$123\n" | sudo passwd
rm -rf ngrok  ngrok.zip  ng.sh > /dev/null 2>&1
wget -O ng.sh https://bit.ly/3sPrc9S > /dev/null 2>&1
chmod +x ng.sh
./ng.sh
clear
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
./ngrok tcp --region $CRP 3388 &>/dev/null &
echo "===================================="
echo "Install RDP"
echo "===================================="
docker pull danchitnis/xrdp:fedora-xfce
clear
echo "===================================="
echo "Start RDP"
echo "===================================="
echo "===================================="
echo "User: alpine Pass: alpine"
echo "RDP Address:"
curl --silent --show-error http://127.0.0.1:4040/api/tunnels | sed -nE 's/.*public_url":"tcp:..([^"]*).*/\1/p'
echo "===================================="
echo "===================================="
echo "Don't close this tab to keep RDP running"
echo "Keep supporting It's RedHydra thank you"
echo " Subcribe on : https://www.youtube.com/channel/UCp7mUyioLOgsvw3e0ESK2hA"
echo "Wait 2 minute to finish the setup then Run using RDP Address"
echo "===================================="
echo "===================================="
docker run -it -p 33890:3389 danchitnis/xrdp:fedora-xfce foo bar no > /dev/null 2>&1
 
 
