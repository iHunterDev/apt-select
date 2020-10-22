
![logo][1]

# apt-select

>  Linux 快速换源工具

![版本][2] ![许可协议][3]



## 功能列表

- [x] 自动检测系统版本
- [x] Ubuntu 换源
- [ ] CentOS 换源




## 源兼容

- Ubuntu
  - 20.04 TLS
    - [x] 阿里源
    - [x] 清华源
    - [x] 网易源
  - 18.04 TLS
    - [x] 阿里源
    - [x] 清华源
    - [x] 网易源
  - 16.04 TLS
    - [x] 阿里源
    - [x] 清华源
    - [x] 网易源
  - 14.04 TLS
    - [ ] 阿里源
    - [ ] 清华源
    - [ ] 网易源
- CentOS
  - CentOS 7
    - [ ] 阿里源
    - [ ] 清华源
    - [ ] 网易源
  - CentOS 6
    - [ ] 阿里源
    - [ ] 清华源
    - [ ] 网易源
  - CentOS 5
    - [ ] 阿里源
    - [ ] 清华源
    - [ ] 网易源


## 版本识别支持

- Ubuntu
  - [x] ubuntu 20.04 LTS
  - [x] ubuntu 18.04 LTS
  - [x] ubuntu 16.04 LTS


## 版本历史

### v0.0.6(2020/10/22 22:00 +08:00)

-   添加 `ubuntu 20.04 LTS` 阿里源设置功能
-   添加 `ubuntu 20.04 LTS` 清华源设置功能
-   添加 `ubuntu 20.04 LTS` 网易源设置功能
-   优化部分代码写法
-   修复已知BUG

### v0.0.5(2019/07/26 14:00 +08:00)

-   添加 `ubuntu 16.04 LTS` 阿里源设置功能
-   添加 `ubuntu 16.04 LTS` 清华源设置功能
-   添加 `ubuntu 16.04 LTS` 网易源设置功能

### v0.0.4(2019/07/21 10:35 +08:00)

-   添加 `ubuntu 18.04 LTS` 网易源设置功能

### v0.0.3(2019/07/10 10:35 +08:00)

- 添加系统和版本检测功能（理论上 ubuntu 系统通用，16.04起，之前的版本没测过）

### v0.0.2(2019/07/09 11:44 +08:00)

- 添加 `ubuntu 18.04 LTS` 清华源设置功能

### v0.0.1(2019/07/08 21:30 +08:30)

- 初步实现整体框架
- 添加 `ubuntu 18.04 LTS` 阿里源设置功能

### v0.0.0(2019/07/08 13:14 +08:00)

 - 初始化项目



## 为什么会有这个项目?

作者喜欢折腾, 经常需要重装系统, 所以日常换源.



## 使用方法

```sh
# 如果出现 git : 找不到该命令 则运行 sudo apt-get install git
git clone https://github.com/wzblog/apt-select.git

cd ./apt-select

sudo chmod +x ./apt-select.sh

sudo ./apt-select.sh ali # 阿里源
sudo ./apt-select.sh thu # 清华源
sudo ./apt-select.sh thu # 网易源
```

### 手动指定系统与版本

> 系统名称统一为小写
>
> 系统版本只取 `x.y.z` 的 `x.y` 位

```sh
# 语法 sudo ./apt-select.sh ali [系统名称 系统版本]
sudo ./apt-select.sh ali ubuntu 18.04
```



## 关于

 - [作者博客 : https://blog.wz52.cn](https://blog.wz52.cn)
 - [邮箱 : WCGcodes@gmail.com](mailto:wcgcodes@gmail.com)
 - [提交 BUG 或建议](https://github.com/wzblog/apt-select/issues)

[1]: ./apt-select.png
[2]: https://img.shields.io/badge/apt--select-v0.0.6-blue.svg
[3]: https://img.shields.io/badge/license-MIT-blue.svg

