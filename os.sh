#ржЪрзЛрж░рзЗрж░ ржмрж╛ржЪрзНржЪрж╛ ржкрж╛рж░рж▓рзЗ ржирж┐ржЬрзЗ ржХрж┐ржЫрзБ ржХрж░ ржорж╛ржирзБрж╖рзЗрж░ ржЯрж╛ ржЪрзБрж░рж┐ ржХрж░рзЗ ржмржбрж╝ рж╣рждрзЗ ржкрж╛рж░ржмрж┐ржирж╛ЁЯШВЁЯл╡
#Copy Abal Ar Mare xudi 
#RootJahid
#ржХржкрж┐ ржирж╛ ржХрж░рзЗ ржЖржЧрзЗ рж╢рж┐ржЦрзЛ рждрж╛рж░ржкрж░ ржХрж░рзЛ ЁЯл╡
#!/bin/bash

xdg-open "https://t.me/RootJahid" > /dev/null 2>&1
sleep 2
clear
figlet "JAHID" | lolcat
echo ""

banner() {
  echo -e "\e[1;92m[тИЪ] Script by ROOT JAHID\n"
  echo -e "\e[1;31m[\e[32mтИЪ\e[31m] \e[1;91mBY \e[1;36mRoot Jahid \e[93m/ \e[100;92mhttps://t.me/RootJahid\e[0m\n"
}

wr() {
  printf "\033[1;91mInvalid input!!!\n"
  sleep 2
  menu
}

1line() {
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

2line() {
  rm -rf ~/.zshrc
  git clone https://github.com/ohmyzsh/ohmyzsh.git ~/.oh-my-zsh
  cp ~/.oh-my-zsh/templates/zshrc.zsh-template ~/.zshrc
  sleep 2
  clear
  menu
}

3line() {
  pkg install zsh -y
  chsh -s zsh
  sleep 2
  clear
  menu
}

4line() {
  chsh -s bash
  sleep 2
  clear
  menu
}

5line() {
  rm -rf ~/.zshrc
  cd ~/Termux-os/.object
  bash .2.sh
  sleep 2
  clear
  menu
}

6line() {
  cd ~/Termux-os/.object
  bash .1.sh
  sleep 2
  clear
  menu
}

7line() {
  cd ~/Termux-os/.object
  rm -rf ~/.zshrc
  chsh -s zsh
  bash .3.sh
  sleep 2
  clear
  menu
}

8line() {
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
    1) 1line ;;
    2) 2line ;;
    3) 3line ;;
    4) 4line ;;
    5) 5line ;;
    6) 6line ;;
    7) 7line ;;
    8) 8line ;;
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
