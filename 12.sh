#!/bin/bash

# 获取当前小时
current_hour=$(date +%H)


# 检查是否在 18:00 到 00:00 之间
if [ "$current_hour" -ge 12 ] && [ "$current_hour" -lt 18 ]; then
    ./vnt-cli ${COMMAND} >> /dev/null &
    # 计算到下一个 0 点的时间
    current_time=$(date +%s)
    midnight=$(date -d "tomorrow 00:00" +%s)
    wait_time=$((midnight - current_time - 10))

    echo "当前时间是 $(date +'%H:%M:%S')，将在 18 点退出，等待 $wait_time 秒..."
    sleep $wait_time
    echo "到达 18 点，程序退出。"
fi
