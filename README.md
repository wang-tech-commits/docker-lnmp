# Docker Serv

## 1.介绍
```
docker-lnmp环境部署，在Linux服务器安装docker环境后执行。
```

## 2.目录结构
```
bin - docker启动配置及脚本
config - docker容器的应用所需配置文件
dockerfiles - docker容器的构建配置dockerfile文件
logs - docker容器的构建配置日志文件
www - 网站初始访问目录
start.sh - 可直接执行安装
```

## 3.安装docker（手动安装）
仅提供ubuntu安装方法，其他方式请访问https://docs.docker.com/get-docker

#### 1.Docker 的旧版本被称为 docker，docker.io 或 docker-engine 。如果已安装，请卸载它们：
```shell
$ sudo apt-get remove docker docker-engine docker.io containerd runc
```
#### 2.设置仓库
```shell
$ sudo apt-get update
$ sudo apt-get install \
    ca-certificates \
    curl \
    gnupg \
    lsb-release
```
#### 3.添加 Docker 的官方 GPG 密钥
```shell
$  curl -fsSL https://mirrors.aliyun.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /usr/share/keyrings/docker-archive-keyring.gpg

```
#### 4.设置稳定版仓库（这里用的是阿里云仓库）
```shell
$ sudo add-apt-repository \
   "deb [arch=amd64] https://mirrors.aliyun.com/docker-ce/linux/ubuntu/ \
  $(lsb_release -cs) \
  stable"
```
#### 5.安装 Docker Engine-Community
```shell
$ sudo apt-get update
$ sudo apt-get install docker-ce docker-ce-cli containerd.io
```
#### 6.要安装特定版本的 Docker Engine-Community，请在仓库中列出可用版本，然后选择一种安装。列出您的仓库中可用的版本
```shell
$ apt-cache madison docker-ce

  docker-ce | 5:18.09.1~3-0~ubuntu-xenial | https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu  xenial/stable amd64 Packages
  docker-ce | 5:18.09.0~3-0~ubuntu-xenial | https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu  xenial/stable amd64 Packages
  docker-ce | 18.06.1~ce~3-0~ubuntu       | https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu  xenial/stable amd64 Packages
  docker-ce | 18.06.0~ce~3-0~ubuntu       | https://mirrors.ustc.edu.cn/docker-ce/linux/ubuntu  xenial/stable amd64 Packages
  ……
# 版本号可替换
$ sudo apt-get install docker-ce={5:18.09.1~3-0~ubuntu-xenial} docker-ce-cli={5:18.09.1~3-0~ubuntu-xenial} containerd.io
```
#### 7.测试 Docker 是否安装成功，输入以下指令，打印出以下信息则安装成功:
```shell
$ sudo docker run hello-world
```

## 4.安装docker-compose
```shell
apt update && apt install docker-compose
```

## 5.建立链接
```shell
ln -s /usr/local/bin/docker-compose /usr/bin/docker-compose
```

## 6安装docker-lnmp
```shell
git clone https://github.com/wang-tech-commits/docker-lnmp.git
```

## 7.安装lnmp环境
```shell
bash install.sh
```

## 8.重启服务
```shell
bash restart.sh
```
