#!/bin/bash

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

line1() {
  apt update && apt upgrade -y
  pkg install zsh git figlet toilet ruby wget curl -y
  gem install lolcat
  clear
  cd ~/Termux-os/.object/ && cp -r 'ANSI Shadow.flf' $PREFIX/share/figlet/ASCII-Shadow.flf
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

line2() {
  rm -rf ~/.zshrc
  git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
  cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
  sleep 2
  clear
  menu
}

line3() {
  pkg install zsh -y
  chsh -s zsh
  sleep 2
  clear
  menu
}

line4() {
  chsh -s bash
  sleep 2
  clear
  menu
}

line5() {
  rm -rf ~/.zshrc
  cd ~/Termux-os/.object
  bash .2.sh
  sleep 2
  clear
  menu
}

line6() {
  cd ~/Termux-os/.object
  bash .1.sh
  sleep 2
  clear
  menu
}

line7() {
  cd ~/Termux-os/.object
  rm -rf ~/.zshrc
  chsh -s zsh
  bash .3.sh
  sleep 2
  clear
  menu
}

line8() {
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
    1) line1 ;;
    2) line2 ;;
    3) line3 ;;
    4) line4 ;;
    5) line5 ;;
    6) line6 ;;
    7) line7 ;;
    8) line8 ;;
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
