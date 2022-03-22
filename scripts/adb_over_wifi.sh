# check device ID
adb devices

# check devices ip
adb -s ${device_id} shell ip -f inet addr show wlan0

# enable device adb over Wi-Fi
adb -s ${device_id} tcpip 5555

#adb connect 
adb connect 192.168.1.109

