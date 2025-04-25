#!/bin/bash

# 获取当前小时
current_hour=$(date +%H)


# 检查是否在 18:00 到 00:00 之间
if [ "$current_hour" -ge 6 ] && [ "$current_hour" -lt 12 ]; then
    # 计算到下一个 0 点的时间
    ./vnt-cli ${COMMAND} >> /dev/null &
    current_time=$(date +%s)
    midnight=$(date -d "12:00" +%s)
    wait_time=$((midnight - current_time - 10))

    echo "当前时间是 $(date +'%H:%M:%S')，将在 12 点退出，等待 $wait_time 秒..."
    sleep $wait_time
    echo "到达 12 点，程序退出。"
fi
