read -p $'\e[1;92m JPG-FILE: \e[0m' picture
read -p $'\e[1;92m List with passwords: \e[0m' wl_pass 
wl_pass="${wl_pass}"
picture="${picture}"

count_pass=$(wc -l $wl_pass | cut -d " " -f1)

for fn in `cat $wl_pass`; do
steghide extract -sf $picture -p $fn &&  echo 'Password found: '$fn && break;
done
