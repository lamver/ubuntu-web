#!/bin/bash
# Задаем пароли для системных пользователей
echo 'root:my_secure_root_password' | chpasswd
echo 'abc:my_secure_user_password' | chpasswd

# Требуем ввод пароля для sudo
sed -i 's/abc ALL=(ALL) NOPASSWD:ALL/abc ALL=(ALL) ALL/' /etc/sudoers /etc/sudoers.d/* 2>/dev/null || true