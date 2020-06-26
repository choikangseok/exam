# Dockerfile build
```
cksui-MacBookPro:exam choikangseok$ docker build -t ktos5427/nginx_cks:v1.0 .
Sending build context to Docker daemon  57.86kB
Step 1/7 : FROM ubuntu
 ---> 74435f89ab78
Step 2/7 : MAINTAINER Choikangseok rkdtjr2001@gmail.com
 ---> Running in d50f4106839d
Removing intermediate container d50f4106839d
 ---> 56cb9c94f361
Step 3/7 : COPY ./install.sh /
 ---> 285e8f2e5dd0
Step 4/7 : RUN chmod 755 /install.sh
 ---> Running in e8dac3ab3efc
Removing intermediate container e8dac3ab3efc
 ---> 2c80ce1d4656
Step 5/7 : RUN /install.sh
 ---> Running in 3e208eb4d76b

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

Get:1 http://security.ubuntu.com/ubuntu focal-security InRelease [107 kB]
Get:2 http://archive.ubuntu.com/ubuntu focal InRelease [265 kB]
Get:3 http://security.ubuntu.com/ubuntu focal-security/multiverse amd64 Packages [1077 B]
Get:4 http://security.ubuntu.com/ubuntu focal-security/universe amd64 Packages [42.3 kB]
Get:5 http://archive.ubuntu.com/ubuntu focal-updates InRelease [107 kB]
Get:6 http://security.ubuntu.com/ubuntu focal-security/restricted amd64 Packages [30.9 kB]
Get:7 http://security.ubuntu.com/ubuntu focal-security/main amd64 Packages [147 kB]
Get:8 http://archive.ubuntu.com/ubuntu focal-backports InRelease [98.3 kB]
Get:9 http://archive.ubuntu.com/ubuntu focal/restricted amd64 Packages [33.4 kB]
Get:10 http://archive.ubuntu.com/ubuntu focal/multiverse amd64 Packages [177 kB]
Get:11 http://archive.ubuntu.com/ubuntu focal/universe amd64 Packages [11.3 MB]
Get:12 http://archive.ubuntu.com/ubuntu focal/main amd64 Packages [1275 kB]
Get:13 http://archive.ubuntu.com/ubuntu focal-updates/universe amd64 Packages [143 kB]
Get:14 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 Packages [270 kB]
Get:15 http://archive.ubuntu.com/ubuntu focal-updates/restricted amd64 Packages [31.0 kB]
Get:16 http://archive.ubuntu.com/ubuntu focal-updates/multiverse amd64 Packages [1077 B]
Get:17 http://archive.ubuntu.com/ubuntu focal-backports/universe amd64 Packages [2900 B]
Fetched 14.1 MB in 10s (1364 kB/s)
Reading package lists...
Building dependency tree...
Reading state information...
All packages are up to date.

WARNING: apt does not have a stable CLI interface. Use with caution in scripts.

Reading package lists...
Building dependency tree...
Reading state information...
The following additional packages will be installed:
  fontconfig-config fonts-dejavu-core iproute2 libatm1 libbsd0 libcap2
  libcap2-bin libelf1 libexpat1 libfontconfig1 libfreetype6 libgd3 libicu66
  libjbig0 libjpeg-turbo8 libjpeg8 libmnl0 libnginx-mod-http-image-filter
  libnginx-mod-http-xslt-filter libnginx-mod-mail libnginx-mod-stream
  libpam-cap libpng16-16 libssl1.1 libtiff5 libwebp6 libx11-6 libx11-data
  libxau6 libxcb1 libxdmcp6 libxml2 libxpm4 libxslt1.1 libxtables12
  nginx-common nginx-core tzdata ucf
Suggested packages:
  iproute2-doc libgd-tools fcgiwrap nginx-doc ssl-cert
The following NEW packages will be installed:
  fontconfig-config fonts-dejavu-core iproute2 libatm1 libbsd0 libcap2
  libcap2-bin libelf1 libexpat1 libfontconfig1 libfreetype6 libgd3 libicu66
  libjbig0 libjpeg-turbo8 libjpeg8 libmnl0 libnginx-mod-http-image-filter
  libnginx-mod-http-xslt-filter libnginx-mod-mail libnginx-mod-stream
  libpam-cap libpng16-16 libssl1.1 libtiff5 libwebp6 libx11-6 libx11-data
  libxau6 libxcb1 libxdmcp6 libxml2 libxpm4 libxslt1.1 libxtables12 nginx
  nginx-common nginx-core tzdata ucf
0 upgraded, 40 newly installed, 0 to remove and 0 not upgraded.
Need to get 15.8 MB of archives.
After this operation, 60.8 MB of additional disk space will be used.
Get:1 http://archive.ubuntu.com/ubuntu focal/main amd64 libbsd0 amd64 0.10.0-1 [45.4 kB]
Get:2 http://archive.ubuntu.com/ubuntu focal/main amd64 libcap2 amd64 1:2.32-1 [15.9 kB]
Get:3 http://archive.ubuntu.com/ubuntu focal/main amd64 libelf1 amd64 0.176-1.1build1 [44.0 kB]
Get:4 http://archive.ubuntu.com/ubuntu focal/main amd64 libmnl0 amd64 1.0.4-2 [12.3 kB]
Get:5 http://archive.ubuntu.com/ubuntu focal/main amd64 libxtables12 amd64 1.8.4-3ubuntu2 [28.4 kB]
Get:6 http://archive.ubuntu.com/ubuntu focal/main amd64 libcap2-bin amd64 1:2.32-1 [26.2 kB]
Get:7 http://archive.ubuntu.com/ubuntu focal/main amd64 iproute2 amd64 5.5.0-1ubuntu1 [858 kB]
Get:8 http://archive.ubuntu.com/ubuntu focal/main amd64 libatm1 amd64 1:2.5.1-4 [21.8 kB]
Get:9 http://archive.ubuntu.com/ubuntu focal/main amd64 libexpat1 amd64 2.2.9-1build1 [73.3 kB]
Get:10 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 tzdata all 2020a-0ubuntu0.20.04 [293 kB]
Get:11 http://archive.ubuntu.com/ubuntu focal/main amd64 libicu66 amd64 66.1-2ubuntu2 [8520 kB]
Get:12 http://archive.ubuntu.com/ubuntu focal/main amd64 libpam-cap amd64 1:2.32-1 [8352 B]
Get:13 http://archive.ubuntu.com/ubuntu focal/main amd64 libssl1.1 amd64 1.1.1f-1ubuntu2 [1318 kB]
Get:14 http://archive.ubuntu.com/ubuntu focal/main amd64 libxml2 amd64 2.9.10+dfsg-5 [640 kB]
Get:15 http://archive.ubuntu.com/ubuntu focal/main amd64 ucf all 3.0038+nmu1 [51.6 kB]
Get:16 http://archive.ubuntu.com/ubuntu focal/main amd64 libpng16-16 amd64 1.6.37-2 [179 kB]
Get:17 http://archive.ubuntu.com/ubuntu focal/main amd64 libxau6 amd64 1:1.0.9-0ubuntu1 [7488 B]
Get:18 http://archive.ubuntu.com/ubuntu focal/main amd64 libxdmcp6 amd64 1:1.1.3-0ubuntu1 [10.6 kB]
Get:19 http://archive.ubuntu.com/ubuntu focal/main amd64 libxcb1 amd64 1.14-2 [44.7 kB]
Get:20 http://archive.ubuntu.com/ubuntu focal/main amd64 libx11-data all 2:1.6.9-2ubuntu1 [113 kB]
Get:21 http://archive.ubuntu.com/ubuntu focal/main amd64 libx11-6 amd64 2:1.6.9-2ubuntu1 [573 kB]
Get:22 http://archive.ubuntu.com/ubuntu focal/main amd64 fonts-dejavu-core all 2.37-1 [1041 kB]
Get:23 http://archive.ubuntu.com/ubuntu focal/main amd64 fontconfig-config all 2.13.1-2ubuntu3 [28.8 kB]
Get:24 http://archive.ubuntu.com/ubuntu focal/main amd64 libfreetype6 amd64 2.10.1-2 [341 kB]
Get:25 http://archive.ubuntu.com/ubuntu focal/main amd64 libfontconfig1 amd64 2.13.1-2ubuntu3 [114 kB]
Get:26 http://archive.ubuntu.com/ubuntu focal-updates/main amd64 libjpeg-turbo8 amd64 2.0.3-0ubuntu1.20.04.1 [117 kB]
Get:27 http://archive.ubuntu.com/ubuntu focal/main amd64 libjpeg8 amd64 8c-2ubuntu8 [2194 B]
Get:28 http://archive.ubuntu.com/ubuntu focal/main amd64 libjbig0 amd64 2.1-3.1build1 [26.7 kB]
Get:29 http://archive.ubuntu.com/ubuntu focal/main amd64 libwebp6 amd64 0.6.1-2 [185 kB]
Get:30 http://archive.ubuntu.com/ubuntu focal/main amd64 libtiff5 amd64 4.1.0+git191117-2build1 [161 kB]
Get:31 http://archive.ubuntu.com/ubuntu focal/main amd64 libxpm4 amd64 1:3.5.12-1 [34.0 kB]
Get:32 http://archive.ubuntu.com/ubuntu focal/main amd64 libgd3 amd64 2.2.5-5.2ubuntu2 [118 kB]
Get:33 http://archive.ubuntu.com/ubuntu focal/main amd64 nginx-common all 1.17.10-0ubuntu1 [37.3 kB]
Get:34 http://archive.ubuntu.com/ubuntu focal/main amd64 libnginx-mod-http-image-filter amd64 1.17.10-0ubuntu1 [14.3 kB]
Get:35 http://archive.ubuntu.com/ubuntu focal/main amd64 libxslt1.1 amd64 1.1.34-4 [152 kB]
Get:36 http://archive.ubuntu.com/ubuntu focal/main amd64 libnginx-mod-http-xslt-filter amd64 1.17.10-0ubuntu1 [12.5 kB]
Get:37 http://archive.ubuntu.com/ubuntu focal/main amd64 libnginx-mod-mail amd64 1.17.10-0ubuntu1 [42.3 kB]
Get:38 http://archive.ubuntu.com/ubuntu focal/main amd64 libnginx-mod-stream amd64 1.17.10-0ubuntu1 [66.9 kB]
Get:39 http://archive.ubuntu.com/ubuntu focal/main amd64 nginx-core amd64 1.17.10-0ubuntu1 [425 kB]
Get:40 http://archive.ubuntu.com/ubuntu focal/main amd64 nginx all 1.17.10-0ubuntu1 [3616 B]
debconf: delaying package configuration, since apt-utils is not installed
Fetched 15.8 MB in 10s (1527 kB/s)
Selecting previously unselected package libbsd0:amd64.
(Reading database ... 4122 files and directories currently installed.)
Preparing to unpack .../00-libbsd0_0.10.0-1_amd64.deb ...
Unpacking libbsd0:amd64 (0.10.0-1) ...
Selecting previously unselected package libcap2:amd64.
Preparing to unpack .../01-libcap2_1%3a2.32-1_amd64.deb ...
Unpacking libcap2:amd64 (1:2.32-1) ...
Selecting previously unselected package libelf1:amd64.
Preparing to unpack .../02-libelf1_0.176-1.1build1_amd64.deb ...
Unpacking libelf1:amd64 (0.176-1.1build1) ...
Selecting previously unselected package libmnl0:amd64.
Preparing to unpack .../03-libmnl0_1.0.4-2_amd64.deb ...
Unpacking libmnl0:amd64 (1.0.4-2) ...
Selecting previously unselected package libxtables12:amd64.
Preparing to unpack .../04-libxtables12_1.8.4-3ubuntu2_amd64.deb ...
Unpacking libxtables12:amd64 (1.8.4-3ubuntu2) ...
Selecting previously unselected package libcap2-bin.
Preparing to unpack .../05-libcap2-bin_1%3a2.32-1_amd64.deb ...
Unpacking libcap2-bin (1:2.32-1) ...
Selecting previously unselected package iproute2.
Preparing to unpack .../06-iproute2_5.5.0-1ubuntu1_amd64.deb ...
Unpacking iproute2 (5.5.0-1ubuntu1) ...
Selecting previously unselected package libatm1:amd64.
Preparing to unpack .../07-libatm1_1%3a2.5.1-4_amd64.deb ...
Unpacking libatm1:amd64 (1:2.5.1-4) ...
Selecting previously unselected package libexpat1:amd64.
Preparing to unpack .../08-libexpat1_2.2.9-1build1_amd64.deb ...
Unpacking libexpat1:amd64 (2.2.9-1build1) ...
Selecting previously unselected package tzdata.
Preparing to unpack .../09-tzdata_2020a-0ubuntu0.20.04_all.deb ...
Unpacking tzdata (2020a-0ubuntu0.20.04) ...
Selecting previously unselected package libicu66:amd64.
Preparing to unpack .../10-libicu66_66.1-2ubuntu2_amd64.deb ...
Unpacking libicu66:amd64 (66.1-2ubuntu2) ...
Selecting previously unselected package libpam-cap:amd64.
Preparing to unpack .../11-libpam-cap_1%3a2.32-1_amd64.deb ...
Unpacking libpam-cap:amd64 (1:2.32-1) ...
Selecting previously unselected package libssl1.1:amd64.
Preparing to unpack .../12-libssl1.1_1.1.1f-1ubuntu2_amd64.deb ...
Unpacking libssl1.1:amd64 (1.1.1f-1ubuntu2) ...
Selecting previously unselected package libxml2:amd64.
Preparing to unpack .../13-libxml2_2.9.10+dfsg-5_amd64.deb ...
Unpacking libxml2:amd64 (2.9.10+dfsg-5) ...
Selecting previously unselected package ucf.
Preparing to unpack .../14-ucf_3.0038+nmu1_all.deb ...
Moving old data out of the way
Unpacking ucf (3.0038+nmu1) ...
Selecting previously unselected package libpng16-16:amd64.
Preparing to unpack .../15-libpng16-16_1.6.37-2_amd64.deb ...
Unpacking libpng16-16:amd64 (1.6.37-2) ...
Selecting previously unselected package libxau6:amd64.
Preparing to unpack .../16-libxau6_1%3a1.0.9-0ubuntu1_amd64.deb ...
Unpacking libxau6:amd64 (1:1.0.9-0ubuntu1) ...
Selecting previously unselected package libxdmcp6:amd64.
Preparing to unpack .../17-libxdmcp6_1%3a1.1.3-0ubuntu1_amd64.deb ...
Unpacking libxdmcp6:amd64 (1:1.1.3-0ubuntu1) ...
Selecting previously unselected package libxcb1:amd64.
Preparing to unpack .../18-libxcb1_1.14-2_amd64.deb ...
Unpacking libxcb1:amd64 (1.14-2) ...
Selecting previously unselected package libx11-data.
Preparing to unpack .../19-libx11-data_2%3a1.6.9-2ubuntu1_all.deb ...
Unpacking libx11-data (2:1.6.9-2ubuntu1) ...
Selecting previously unselected package libx11-6:amd64.
Preparing to unpack .../20-libx11-6_2%3a1.6.9-2ubuntu1_amd64.deb ...
Unpacking libx11-6:amd64 (2:1.6.9-2ubuntu1) ...
Selecting previously unselected package fonts-dejavu-core.
Preparing to unpack .../21-fonts-dejavu-core_2.37-1_all.deb ...
Unpacking fonts-dejavu-core (2.37-1) ...
Selecting previously unselected package fontconfig-config.
Preparing to unpack .../22-fontconfig-config_2.13.1-2ubuntu3_all.deb ...
Unpacking fontconfig-config (2.13.1-2ubuntu3) ...
Selecting previously unselected package libfreetype6:amd64.
Preparing to unpack .../23-libfreetype6_2.10.1-2_amd64.deb ...
Unpacking libfreetype6:amd64 (2.10.1-2) ...
Selecting previously unselected package libfontconfig1:amd64.
Preparing to unpack .../24-libfontconfig1_2.13.1-2ubuntu3_amd64.deb ...
Unpacking libfontconfig1:amd64 (2.13.1-2ubuntu3) ...
Selecting previously unselected package libjpeg-turbo8:amd64.
Preparing to unpack .../25-libjpeg-turbo8_2.0.3-0ubuntu1.20.04.1_amd64.deb ...
Unpacking libjpeg-turbo8:amd64 (2.0.3-0ubuntu1.20.04.1) ...
Selecting previously unselected package libjpeg8:amd64.
Preparing to unpack .../26-libjpeg8_8c-2ubuntu8_amd64.deb ...
Unpacking libjpeg8:amd64 (8c-2ubuntu8) ...
Selecting previously unselected package libjbig0:amd64.
Preparing to unpack .../27-libjbig0_2.1-3.1build1_amd64.deb ...
Unpacking libjbig0:amd64 (2.1-3.1build1) ...
Selecting previously unselected package libwebp6:amd64.
Preparing to unpack .../28-libwebp6_0.6.1-2_amd64.deb ...
Unpacking libwebp6:amd64 (0.6.1-2) ...
Selecting previously unselected package libtiff5:amd64.
Preparing to unpack .../29-libtiff5_4.1.0+git191117-2build1_amd64.deb ...
Unpacking libtiff5:amd64 (4.1.0+git191117-2build1) ...
Selecting previously unselected package libxpm4:amd64.
Preparing to unpack .../30-libxpm4_1%3a3.5.12-1_amd64.deb ...
Unpacking libxpm4:amd64 (1:3.5.12-1) ...
Selecting previously unselected package libgd3:amd64.
Preparing to unpack .../31-libgd3_2.2.5-5.2ubuntu2_amd64.deb ...
Unpacking libgd3:amd64 (2.2.5-5.2ubuntu2) ...
Selecting previously unselected package nginx-common.
Preparing to unpack .../32-nginx-common_1.17.10-0ubuntu1_all.deb ...
Unpacking nginx-common (1.17.10-0ubuntu1) ...
Selecting previously unselected package libnginx-mod-http-image-filter.
Preparing to unpack .../33-libnginx-mod-http-image-filter_1.17.10-0ubuntu1_amd64.deb ...
Unpacking libnginx-mod-http-image-filter (1.17.10-0ubuntu1) ...
Selecting previously unselected package libxslt1.1:amd64.
Preparing to unpack .../34-libxslt1.1_1.1.34-4_amd64.deb ...
Unpacking libxslt1.1:amd64 (1.1.34-4) ...
Selecting previously unselected package libnginx-mod-http-xslt-filter.
Preparing to unpack .../35-libnginx-mod-http-xslt-filter_1.17.10-0ubuntu1_amd64.deb ...
Unpacking libnginx-mod-http-xslt-filter (1.17.10-0ubuntu1) ...
Selecting previously unselected package libnginx-mod-mail.
Preparing to unpack .../36-libnginx-mod-mail_1.17.10-0ubuntu1_amd64.deb ...
Unpacking libnginx-mod-mail (1.17.10-0ubuntu1) ...
Selecting previously unselected package libnginx-mod-stream.
Preparing to unpack .../37-libnginx-mod-stream_1.17.10-0ubuntu1_amd64.deb ...
Unpacking libnginx-mod-stream (1.17.10-0ubuntu1) ...
Selecting previously unselected package nginx-core.
Preparing to unpack .../38-nginx-core_1.17.10-0ubuntu1_amd64.deb ...
Unpacking nginx-core (1.17.10-0ubuntu1) ...
Selecting previously unselected package nginx.
Preparing to unpack .../39-nginx_1.17.10-0ubuntu1_all.deb ...
Unpacking nginx (1.17.10-0ubuntu1) ...
Setting up libexpat1:amd64 (2.2.9-1build1) ...
Setting up libxau6:amd64 (1:1.0.9-0ubuntu1) ...
Setting up libssl1.1:amd64 (1.1.1f-1ubuntu2) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC contains: /etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.30.0 /usr/local/share/perl/5.30.0 /usr/lib/x86_64-linux-gnu/perl5/5.30 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl/5.30 /usr/share/perl/5.30 /usr/local/lib/site_perl /usr/lib/x86_64-linux-gnu/perl-base) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 7.)
debconf: falling back to frontend: Teletype
Setting up nginx-common (1.17.10-0ubuntu1) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC contains: /etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.30.0 /usr/local/share/perl/5.30.0 /usr/lib/x86_64-linux-gnu/perl5/5.30 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl/5.30 /usr/share/perl/5.30 /usr/local/lib/site_perl /usr/lib/x86_64-linux-gnu/perl-base) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 7.)
debconf: falling back to frontend: Teletype
Setting up libatm1:amd64 (1:2.5.1-4) ...
Setting up libjbig0:amd64 (2.1-3.1build1) ...
Setting up libcap2:amd64 (1:2.32-1) ...
Setting up tzdata (2020a-0ubuntu0.20.04) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC contains: /etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.30.0 /usr/local/share/perl/5.30.0 /usr/lib/x86_64-linux-gnu/perl5/5.30 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl/5.30 /usr/share/perl/5.30 /usr/local/lib/site_perl /usr/lib/x86_64-linux-gnu/perl-base) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 7.)
debconf: falling back to frontend: Teletype
Configuring tzdata
------------------

Please select the geographic area in which you live. Subsequent configuration
questions will narrow this down by presenting a list of cities, representing
the time zones in which they are located.

  1. Africa      4. Australia  7. Atlantic  10. Pacific  13. Etc
  2. America     5. Arctic     8. Europe    11. SystemV
  3. Antarctica  6. Asia       9. Indian    12. US
Geographic area:
Use of uninitialized value $_[1] in join or string at /usr/share/perl5/Debconf/DbDriver/Stack.pm line 111.

Current default time zone: '/UTC'
Local time is now:      Fri Jun 26 06:29:05 UTC 2020.
Universal Time is now:  Fri Jun 26 06:29:05 UTC 2020.
Run 'dpkg-reconfigure tzdata' if you wish to change it.

Use of uninitialized value $val in substitution (s///) at /usr/share/perl5/Debconf/Format/822.pm line 83, <GEN6> line 4.
Use of uninitialized value $val in concatenation (.) or string at /usr/share/perl5/Debconf/Format/822.pm line 84, <GEN6> line 4.
Setting up libcap2-bin (1:2.32-1) ...
Setting up libx11-data (2:1.6.9-2ubuntu1) ...
Setting up libpng16-16:amd64 (1.6.37-2) ...
Setting up libmnl0:amd64 (1.0.4-2) ...
Setting up libwebp6:amd64 (0.6.1-2) ...
Setting up fonts-dejavu-core (2.37-1) ...
Setting up ucf (3.0038+nmu1) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC contains: /etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.30.0 /usr/local/share/perl/5.30.0 /usr/lib/x86_64-linux-gnu/perl5/5.30 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl/5.30 /usr/share/perl/5.30 /usr/local/lib/site_perl /usr/lib/x86_64-linux-gnu/perl-base) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 7.)
debconf: falling back to frontend: Teletype
Setting up libjpeg-turbo8:amd64 (2.0.3-0ubuntu1.20.04.1) ...
Setting up libxtables12:amd64 (1.8.4-3ubuntu2) ...
Setting up libbsd0:amd64 (0.10.0-1) ...
Setting up libelf1:amd64 (0.176-1.1build1) ...
Setting up libpam-cap:amd64 (1:2.32-1) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC contains: /etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.30.0 /usr/local/share/perl/5.30.0 /usr/lib/x86_64-linux-gnu/perl5/5.30 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl/5.30 /usr/share/perl/5.30 /usr/local/lib/site_perl /usr/lib/x86_64-linux-gnu/perl-base) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 7.)
debconf: falling back to frontend: Teletype
Setting up libjpeg8:amd64 (8c-2ubuntu8) ...
Setting up libnginx-mod-mail (1.17.10-0ubuntu1) ...
Setting up libxdmcp6:amd64 (1:1.1.3-0ubuntu1) ...
Setting up libxcb1:amd64 (1.14-2) ...
Setting up fontconfig-config (2.13.1-2ubuntu3) ...
Setting up iproute2 (5.5.0-1ubuntu1) ...
debconf: unable to initialize frontend: Dialog
debconf: (TERM is not set, so the dialog frontend is not usable.)
debconf: falling back to frontend: Readline
debconf: unable to initialize frontend: Readline
debconf: (Can't locate Term/ReadLine.pm in @INC (you may need to install the Term::ReadLine module) (@INC contains: /etc/perl /usr/local/lib/x86_64-linux-gnu/perl/5.30.0 /usr/local/share/perl/5.30.0 /usr/lib/x86_64-linux-gnu/perl5/5.30 /usr/share/perl5 /usr/lib/x86_64-linux-gnu/perl/5.30 /usr/share/perl/5.30 /usr/local/lib/site_perl /usr/lib/x86_64-linux-gnu/perl-base) at /usr/share/perl5/Debconf/FrontEnd/Readline.pm line 7.)
debconf: falling back to frontend: Teletype
Setting up libicu66:amd64 (66.1-2ubuntu2) ...
Setting up libnginx-mod-stream (1.17.10-0ubuntu1) ...
Setting up libfreetype6:amd64 (2.10.1-2) ...
Setting up libx11-6:amd64 (2:1.6.9-2ubuntu1) ...
Setting up libtiff5:amd64 (4.1.0+git191117-2build1) ...
Setting up libfontconfig1:amd64 (2.13.1-2ubuntu3) ...
Setting up libxml2:amd64 (2.9.10+dfsg-5) ...
Setting up libxpm4:amd64 (1:3.5.12-1) ...
Setting up libgd3:amd64 (2.2.5-5.2ubuntu2) ...
Setting up libxslt1.1:amd64 (1.1.34-4) ...
Setting up libnginx-mod-http-image-filter (1.17.10-0ubuntu1) ...
Setting up libnginx-mod-http-xslt-filter (1.17.10-0ubuntu1) ...
Setting up nginx-core (1.17.10-0ubuntu1) ...
invoke-rc.d: could not determine current runlevel
invoke-rc.d: policy-rc.d denied execution of start.
Setting up nginx (1.17.10-0ubuntu1) ...
Processing triggers for libc-bin (2.31-0ubuntu9) ...
Removing intermediate container 3e208eb4d76b
 ---> 5a58945a9523
Step 6/7 : CMD [ "nginx", "-g", "daemon off;"]
 ---> Running in e7d2198e220e
Removing intermediate container e7d2198e220e
 ---> d263c634b49f
Step 7/7 : expose 80
 ---> Running in c164a8f8687e
Removing intermediate container c164a8f8687e
 ---> c11aaa82ca2b
Successfully built c11aaa82ca2b
Successfully tagged ktos5427/nginx_cks:v1.0
```
# DOCKER RUN / DOCKER ps
```
(base) cksui-MacBookPro:exam choikangseok$ docker run -d --name v1.0 -p 8888:80 ktos5427/nginx_cks:v1.0
3b45ce82e5eedaf98a88a732366584e08954474a56dd68b628f80c61a4d7a6a6
(base) cksui-MacBookPro:exam choikangseok$ docker ps -a
3b45ce82e5ee        ktos5427/nginx_cks:v1.0   "nginx -g 'daemon of…"   15 seconds ago      Up 14 seconds               0.0.0.0:8888->80/tcp   v1.0

```

# dockerhub commit / push
```
docker push ktos5427/nginx_cks:v1.0
The push refers to repository [docker.io/ktos5427/nginx_cks]
eb8a0c37c697: Pushed
ba143a4de66f: Pushed
de99ad17aad7: Pushed
5e3d30780e2b: Pushed
05f3b67ed530: Mounted from ktos5427/ubuntu2
ec1817c93e7c: Mounted from ktos5427/ubuntu2
9e97312b63ff: Mounted from ktos5427/ubuntu2
e1c75a5e0bfa: Mounted from ktos5427/ubuntu2
v1.0: digest: sha256:2d58978299a378810a00657fda68781726ccbb0d133a8b429b0f1673e4d02543 size: 1985

```