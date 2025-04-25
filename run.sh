#!/bin/bash

# 获取当前小时
current_hour=$(date +%H)

if [ "$current_hour" -ge 0 ] && [ "$current_hour" -lt 6 ]; then
    ./vnt-cli ${COMMAND} > /dev/null &
    # 计算到下一个 0 点的时间
    current_time=$(date +%s)
    midnight=$(date -d "05:59" +%s)
    wait_time=$((midnight - current_time - 10))

    echo "当前时间是 $(date +'%H:%M:%S')，将在 6 点退出，等待 $wait_time 秒..."
    sleep $wait_time
    echo "到达 6 点，程序退出。"
fi

if [ "$current_hour" -ge 6 ] && [ "$current_hour" -lt 12 ]; then
    ./vnt-cli ${COMMAND} > /dev/null &
    # 计算到下一个 0 点的时间
    current_time=$(date +%s)
    midnight=$(date -d "11:59" +%s)
    wait_time=$((midnight - current_time - 10))

    echo "当前时间是 $(date +'%H:%M:%S')，将在 6 点退出，等待 $wait_time 秒..."
    sleep $wait_time
    echo "到达 12 点，程序退出。"
fi

if [ "$current_hour" -ge 12 ] && [ "$current_hour" -lt 18 ]; then
    ./vnt-cli ${COMMAND} > /dev/null &
    # 计算到下一个 0 点的时间
    current_time=$(date +%s)
    midnight=$(date -d "17:59" +%s)
    wait_time=$((midnight - current_time - 10))

    echo "当前时间是 $(date +'%H:%M:%S')，将在 6 点退出，等待 $wait_time 秒..."
    sleep $wait_time
    echo "到达 18 点，程序退出。"
fi

if [ "$current_hour" -ge 18 ] && [ "$current_hour" -lt 24 ]; then
    ./vnt-cli ${COMMAND} > /dev/null &
    # 计算到下一个 0 点的时间
    current_time=$(date +%s)
    midnight=$(date -d "23:59" +%s)
    wait_time=$((midnight - current_time - 10))

    echo "当前时间是 $(date +'%H:%M:%S')，将在 0 点退出，等待 $wait_time 秒..."
    sleep $wait_time
    echo "到达 0 点，程序退出。"
fi
