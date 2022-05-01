# Telegram Bot API container image

## Badges

![Build Image](https://github.com/rmuhamedgaliev/telegram-bot-api/actions/workflows/oci-image.yml/badge.svg)
![Pulls](https://img.shields.io/docker/pulls/rmuhamedgaliev/telegram-bot-api?style=plastic)
![Version](https://img.shields.io/docker/v/rmuhamedgaliev/telegram-bot-api?sort=date)

## About

OCI based image for run [telegram-bot-api](https://github.com/tdlib/telegram-bot-api). For run just run image

> podman run -p 8081:8081 -e "TELEGRAM_API_ID={YOUR_VALUE}" -e "TELEGRAM_API_HASH={YOUR_VALUE}" -e "BOT_API_ARGS=--verbosity=5 --local" rmuhamedgaliev/telegram-bot-api:latest

Don't forget replace variables for your data
- TELEGRAM_API_ID - from [my.telegram.org](https://my.telegram.org)
- TELEGRAM_API_HASH - from [my.telegram.org](https://my.telegram.org)
- BOT_API_ARGS - any custom arguments for [telegram-bot-api](https://github.com/tdlib/telegram-bot-api)



