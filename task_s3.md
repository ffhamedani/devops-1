# How To Install GitLab CE on Linux Ubuntu

## step 1 : Download gitlab 
1- turn on vpn or use shekan
2- wget https://image.sudoix.ir/gitlab-ce_16.2.3-ce.0_amd64.deb 

(It takes 10-20 min)
## Step 2 : Install Gitlab

dpkg -i gitlab-ce_16.2.3-ce.0_amd64.deb <br>

## step 3: change external_url
cd /etc<br>
cd gitlab<br>
vim gitlab.rb<br>
change external_url to your favorit domain<br>
external_url 'http://gitlab.reihane'<br>

## step 4: change Host in linux
cd /etc<br>
vim hosts<br>

Add this line: <br>
127.0.0.1       gitlab.reihane (external_url)<br>

## step 5: gitlab-ctl reconfigure
sudo gitlab-ctl reconfigure<br>

## change Hosts in own os
1- ip -br a<br>
2- use second IP<br>
lo               UNKNOWN        127.0.0.1/8 ::1/128  <br>
ens33            UP             192.168.33.128/24 metric 100 <br> fe80::20c:29ff:fe14:ca2d/64 <br>
ens37            DOWN   <br>


### windows:<br>
From Notepad, open the following file:<br> c:\Windows\System32\Drivers\etc\hosts.<br>
Make the necessary changes to the file.<br>
Select File > Save to save your changes.<br>
### Mac:<br>
Open the Terminal application on your Mac computer. <br>
Access your /etc/hosts folder using a text editor such as vim<br>
add a line and use second ip and external_url <br>

192.168.33.128  gitlab.reihane <br>
255.255.255.255 broadcasthost<br>
::1             localhost<br>

enjoy your success

