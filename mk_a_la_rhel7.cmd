
docker pull centos:centos7
docker create --name rhel7 centos:centos7
docker export rhel7 -o rhel7.tar
if not exist C:\wslDistroStorage\rhel7 md C:\wslDistroStorage\rhel7
wsl --import rhel7 C:\wslDistroStorage\rhel7 .\rhel7.tar
wsl -l -v
wsl -d rhel7
 