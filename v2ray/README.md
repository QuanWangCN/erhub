# 科学上网v2ray设置
## 科学上网v2ray设置
### CF域名服务
在CF⽹站(https://www.cloudflare.com/)添加狗爹上买的域名，CF会提供DNS/HTTP服务器地址。 在狗爹配置中添加CF提供的DNS服务器地址。 CF⽹站Crypto标签开⼀下SSL（full选项），DNS标签中暂时关闭服务待服务器端安装v2ray成功后再打开

### v2ray服务器端设置
Mac终端，输⼊ssh root@IP地址 -p ssh端⼝；Win⽤Xshell连接服务器。以下是安
装v2ray的代码：

```
bash <(curl -s -L https://233yes.com/v2ray.sh)
或
curl -O https://raw.githubusercontent.com/QuanWangCN/erhub/master/v2ray/v2ray_ws_tls.sh && chmod +x v2ray_ws_tls.sh && ./v2ray_ws_tls.sh
```

及安装BBR加速（可选）

```
cd /usr/src && wget -N --no-check-certificate "https://raw.githubusercontent.com/chiakge/LinuxNetSpeed/master/tcp.sh" && chmod +x tcp.sh && ./tcp.sh
cd /usr/src && ./tcp.sh
#输⼊5使⽤BBR魔改版加速（可选）
```

安装v2ray后导出vmess码，并复制。 现在将CF⽹站DNS标签 status点亮，使⽤其DNS/http服务。

### v2ray客户端配置
⽤vmess码导⼊IP信息⽅便⼀些，不细说了。

[改编自](https://www.mingjinglu.com/coding/425.html)

