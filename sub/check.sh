#!/bin/bash

echo -e "proxypoolcheck\n"
echo "download proxypoolcheck..."
wget https://github.com/yu-steven/proxypoolCheck/releases/download/v0.3.1/proxypoolCheck-linux-amd64 -O proxypoolcheck
echo "done"
echo "chmod 授予777权限..."
chmod +755 proxypoolcheck
echo "done"
echo "静默执行程序，默认配置...结果会输出到7777端口"
nohup ./proxypoolcheck -c https://raw.githubusercontent.com/yu-steven/openit/main/sub/check.yaml
