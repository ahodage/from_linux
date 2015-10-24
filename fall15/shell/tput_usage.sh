#tput in action
tput clear
echo "Number of rows=\c"
tput lines
echo "No. of columns=\c"
tput cols
tput cup 15 20
tput bold
echo "Cursor at 15.20"
echo "\033[0m-------End----------"
