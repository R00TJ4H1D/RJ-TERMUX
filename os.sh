#!/bin/bash

# টেলিগ্রাম চ্যানেল অটো ওপেন
termux-open-url https://t.me/RootJahid
sleep 2

clear
figlet "JAHID" | lolcat
echo ""

banner() {
  echo -e "\e[1;92m[√] Script by JAHID\n"
  echo -e "\e[1;31m[\e[32m√\e[31m] \e[1;91mby \e[1;36mRoot Jahid \e[93m/ \e[100;92mhttps://t.me/RootJahid\e[0m\n"
}

wr() {
  printf "\033[1;91mInvalid input!!!\n"
  sleep 2
  menu
}

one_line() {
  apt update && apt upgrade -y
  pkg install zsh git figlet toilet ruby wget curl -y
  gem install lolcat
  clear
  cd ~/Termux-os/.object/ && cp -r 'ANSI Shadow.flf'  $PREFIX/share/figlet/ASCII-Shadow.flf
  git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
  pkg install exa -y
  cd ~/Termux-os/.object
  rm -rf ~/.termux/colors.properties
  rm -rf /data/data/com.termux/files/usr/etc/motd
  cp -r .colors.properties ~/.termux/colors.properties
  cp -r .termux.properties ~/.termux/termux.properties
  sleep 2
  clear
  menu
}

two_line() {
  rm -rf ~/.zshrc
  git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
  cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
  sleep 2
  clear
  menu
}

three_line() {
  pkg install zsh -y
  chsh -s zsh
  sleep 2
  clear
  menu
}

four_line() {
  chsh -s bash
  sleep 2
  clear
  menu
}

five_line() {
  rm -rf ~/.zshrc
  cd ~/Termux-os/.object
  bash .2.sh
  sleep 2
  clear
  menu
}

six_line() {
  cd ~/Termux-os/.object
  bash .1.sh
  sleep 2
  clear
  menu
}

seven_line() {
  cd ~/Termux-os/.object
  rm -rf ~/.zshrc
  chsh -s zsh
  bash .3.sh
  sleep 2
  clear
  menu
}

eight_line() {
  rm -rf ~/Termux-os
  cd
  git clone https://github.com/h4ck3r0/Termux-os
  sleep 2
  clear
  menu
}

selection() {
  echo -e -n "\e[1;96mChoose Option : \e[0m"
  read a
  case $a in
    1) one_line ;;
    2) two_line ;;
    3) three_line ;;
    4) four_line ;;
    5) five_line ;;
    6) six_line ;;
    7) seven_line ;;
    8) eight_line ;;
    9) exit ;;
    *) wr ;;
  esac
}

menu() {
  clear
  figlet "JAHID" | lolcat
  banner
  printf "\n\033[1;91m[\033[0m1\033[1;91m]\033[1;92m Necessary Setup \n"
  printf "\033[1;91m[\033[0m2\033[1;91m]\033[1;92m Zsh Setup\n"
  printf "\033[1;91m[\033[0m3\033[1;91m]\033[1;92m Zsh Shell\n"
  printf "\033[1;91m[\033[0m4\033[1;91m]\033[1;92m Bash Shell\n"
  printf "\033[1;91m[\033[0m5\033[1;91m]\033[1;92m Zsh Banner\n"
  printf "\033[1;91m[\033[0m6\033[1;91m]\033[1;92m Zsh Theme\n"
  printf "\033[1;91m[\033[0m7\033[1;91m]\033[1;92m Highlight / AutoSuggest\n"
  printf "\033[1;91m[\033[0m8\033[1;91m]\033[1;92m Update\n"
  printf "\033[1;91m[\033[0m9\033[1;91m]\033[1;92m Exit\n\n"
  selection
}

menu
