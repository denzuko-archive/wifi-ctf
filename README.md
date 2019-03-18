# CTF 03/2019

By Dwight A. Spencer (@denzuko)


Welcome to Terminal City, an ongoing campaing for Midnight Makers CTF. You join us as a netizen of one of the
more unique, politically corrupt, and technologically advance cities. 

## Special Thanks To

- clmyster
- mikrotik
- hypriot
- Dallas Makerspace
- VCC Computer Committee Supporters
- and Hackers like you.

## Challenge goals: 

Teach WPA security, WIFI access, basic common passwords not to use, and bash basics

## Project Goals:

Build infrastructure and asset library for rapid deployment of docker based honeypot cluster, communitygrid, and/or other
projects.


## Bill of Materials

### Hardware

| Item | Catalog Url | quantity |  cost per unit |
|-|-|-|-|
| Mikrotik-RB941-2nD-TC-Lite-2-4Ghz-802-11b | https://www.amazon.com/dp/B016E93MX2 | 1 unit|  29.98 |
| CanaKit-Raspberry-Wireless-Complete-Starter |https://www.amazon.com/dp/B072N3X39J | 3 units| 32.99 |

Cost: $128.95

## Install

1) One should use etcher / dd(1) to burn hypriot to SD Cards for three Raspberry Pis
1.1) Prefered; use hypriot-flash and `make(1)`

2) Reset MikroTIK hAP to factory then configure two access points
   - "Terminal City PD 0x19" (city, target, year) WPA:Password
   - "Terminal City 0x19" (city, year) Open access
   - 192.168.88.0/27, DHCP pool .2-62
   - static DNS:
      - tcpd.terminal.net (terminal city pd)
      - tcdoc.terminal.net (terminal city dept. of corrections)
      - tcmb.terminal.net (terminal city municiple bank)
   - DHCP Option (domain terminal.net)

3) Copy motd.txt to /boot/motd, user-data.yaml to /boot/user-data, deploy /boot/data

4) Connect internet to port 1 on hAP

5) Boot up (cloud-init would do the bulk of the work on the nodes)

6) Test docker cluster and deploy images as needed

## Running

1) Pull internet from hAP
2) At game time display the intro to terminal city and setup play list
3) Play initial "hints" videos
4) Run key signing and room introductions
5) Do Installfest (docker && kali:latest)
6) Scoring is the same as "who's line is it anyways" ie "points are arubtrary but the most wins"
7) Winners get added to the list of elites (for livestream and etc..)


### External links
  - https://wiki.mikrotik.com/wiki/Using_SSH_for_system_backup
  - https://www.tecmint.com/ssh-passwordless-login-using-ssh-keygen-in-5-easy-steps
  - https://gist.github.com/tcarrio/4fdd2ed310e23a3b54fd64da6b07435a
  - https://github.com/dallas-makerspace/communitygrid

## Join us online

[Talk](talk.dallasmakerspace.org) and [Chat](chat.dallasmakerspace.org). Need help, visit [helpdesk](helpdesk.dallasmakerspace.org)
