#!/system/bin/sh
#
# Copyright 2023 shadow3aaa@gitbub.com
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
#  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
LOCALE=$(getprop persist.sys.locale)
soc_model=$(getprop ro.soc.model)

if [ -z "$soc_model" ]; then 
    soc_model=$(getprop ro.hardware)
fi

check_fasgt() {
    if [ -z "$(getprop fas-rs-installed)" ]; then  
        return 0  
    fi
    return 1  
}

unsupported_device() {
    echo "该设备暂不支持，请耐心等待"
    echo "若申请提前适配，请发送邮件至 yinwanxi0107@gmail.com"
    echo "This device is not supported yet, please wait patiently"
    echo "If you want to apply for early adaptation, please send an email to yinwanxi0107@gmail.com"
    exit 1
}

check_platform() {
    case "$soc_model" in
        "SM8650")
            mv "$MODPATH/config/8g3.lua" "$MODPATH/main.lua"
            echo "8Gen3已部署，祝您使用愉快❤️"
            ;;
        "SM8550" | "SM7675")
            mv "$MODPATH/config/8g2.lua" "$MODPATH/main.lua"
            echo "8Gen2/7+Gen3已部署，祝您使用愉快❤️"
            ;;
        "SM8635")
            mv "$MODPATH/config/8sg3.lua" "$MODPATH/main.lua"
            echo "8sGen3已部署，祝您使用愉快❤️"
            ;;
        "SM8475" | "SM8450")
            mv "$MODPATH/config/8g1.lua" "$MODPATH/main.lua"
            echo "8Gen1/8+Gen1已部署，祝您使用愉快❤️"
            ;;
        "SM7475")
            mv "$MODPATH/config/7+g2.lua" "$MODPATH/main.lua"
            echo "7+Gen2已部署，祝您使用愉快❤️"
            ;;
        "SM8350")
            mv "$MODPATH/config/888.lua" "$MODPATH/main.lua"
            echo "888已部署，祝您使用愉快❤️"
            ;;
        "MT6989")
            mv "$MODPATH/config/mt9300.lua" "$MODPATH/main.lua"
            echo "mt9300已部署，祝您使用愉快❤️"
            ;;
        "MT6985")
            mv "$MODPATH/config/mt9200.lua" "$MODPATH/main.lua"
            echo "mt9200已部署，祝您使用愉快❤️"
            ;;
        "MT6983")
            mv "$MODPATH/config/mt9000.lua" "$MODPATH/main.lua"
            echo "mt9000已部署，祝您使用愉快❤️"
            ;;
        "MT6991")
            mv "$MODPATH/config/mt9400.lua" "$MODPATH/main.lua"
            echo "mt9400已部署，祝您使用愉快❤️"
            ;;
        "MT6895Z/TCZA" | "MT6895" | "MT6895Z_A/TCZA" | "MT6896" | "mt6897")
            mv "$MODPATH/config/mt8000.lua" "$MODPATH/main.lua"
            echo "mt8000系列已部署，祝您使用愉快❤️"
            ;;
            "gs101")
            mv "$MODPATH/config/gs101.lua" "$MODPATH/main.lua"
            echo "tensor g1已部署，祝您使用愉快❤️"
            ;;
            "gs201")
            mv "$MODPATH/config/gs201.lua" "$MODPATH/main.lua"
            echo "tensor g2已部署，祝您使用愉快❤️"
            ;;
            "cheetah" | "shiba" | "husky" | "zuma")
            mv "$MODPATH/config/gs301.lua" "$MODPATH/main.lua"
            echo "tensor g3已部署，祝您使用愉快❤️"
            ;;
        *)
            unsupported_device
            ;;
    esac
}


if ! check_fasgt; then
    check_platform
else
echo "安装失败，请先安装fas-gt再安装此插件❣️"
echo "Install failed，Please install fas-gt first❣️"
echo "🌟https://github.com/yinwanxi/fas_gt"

 abort
fi

