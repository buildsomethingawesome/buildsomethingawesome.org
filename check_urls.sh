#!/bin/bash -e

ROOT="${1:-http://localhost:4000}"

function check {
  echo "  $ROOT/$1"
  curl -s -f -I "$ROOT/$1" > /dev/null || exit 1
}

check archive.html
check blog/2013/01/12/scorched-pocket/
check blog/2012/11/24/turkey-bowl/
check blog/2012/11/17/babys-revenge/
check blog/2012/11/10/bouncing-babies/
check blog/2012/10/27/scary-maze-game/
check blog/2012/10/20/episode-1-java-graphics-and-animation/

echo
echo '   ____     ____    U _____ u    _       _____        ____       _   _    ____    ____ U _____ u ____    ____     _    '
echo 'U /"___|uU |  _"\ u \| ___"|/U  /"\  u  |_ " _|      / __"| u U |"|u| |U /"___|U /"___|\| ___"|// __"| u/ __"| uU|"|u  '
echo '\| |  _ / \| |_) |/  |  _|"   \/ _ \/     | |       <\___ \/   \| |\| |\| | u  \| | u   |  _|" <\___ \/<\___ \/ \| |/  '
echo ' | |_| |   |  _ <    | |___   / ___ \    /| |\       u___) |    | |_| | | |/__  | |/__  | |___  u___) | u___) |  |_|   '
echo '  \____|   |_| \_\   |_____| /_/   \_\  u |_|U       |____/>>  <<\___/   \____|  \____| |_____| |____/>>|____/>> (_)   '
echo '  _)(|_    //   \\_  <<   >>  \\    >>  _// \\_       )(  (__)(__) )(   _// \\  _// \\  <<   >>  )(  (__))(  (__)|||_  '
echo ' (__)__)  (__)  (__)(__) (__)(__)  (__)(__) (__)     (__)         (__) (__)(__)(__)(__)(__) (__)(__)    (__)    (__)_) '
echo

