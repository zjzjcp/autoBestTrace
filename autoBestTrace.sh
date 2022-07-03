#!/bin/bash

# apt -y install unzip

# install besttrace
if [ ! -f "besttrace" ]; then
    wget https://github.com/zjzjcp/autoBestTrace/raw/master/besttrace
    # unzip besttrace4linux.zip
    chmod +x besttrace
fi

## start to use besttrace

next() {
    printf "%-70s\n" "-" | sed 's/\s/-/g'
}

clear
next

ip_list=(202.96.199.132 210.22.70.3 211.136.112.50 202.96.128.86 210.21.4.130 120.196.212.25 219.141.136.10 123.123.123.123 211.136.28.228)
ip_addr=(上海电信 上海联通 上海移动 广州电信 广州联通 广州移动 北京电信 北京联通 北京移动)
# ip_len=${#ip_list[@]}

for i in {0..15}
do
	echo ${ip_addr[$i]}
	./besttrace -q1 -g cn ${ip_list[$i]}
	next
done
