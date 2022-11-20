echo "---------Main Menu----------"
echo "    1- e to encryption."
echo "    2- d to decryption."
echo "    3- q to exit."
printf "Which option would you like to choose?"
read opt
case $opt in
e)
echo "you chose encryption:"
printf "Please write the name of the plain text file:"
read file
[ -e $file ]
existtt=$(echo $?)
if [ $existtt -gt 0 ]
then                                                                                    
echo "File does not exist"                                                             
exit 0
fi
[ -s $file ]
exitt=$(echo $?)
if [ $exitt -gt 0 ]                                                                  
then                                               
echo "File is empty" 
exit 0
fi
str=$(cat $file)
echo "The input string is: $str"
str=$(echo $str | sed 's/[^A-Za-z" "]//g')
echo "The string after removing the none alphabet characters is: $str"
str=$(echo $str | tr '[A-Z]' '[a-z]')
echo "The string after converting all characters to lower case is: $str"
dd=$(echo $str | wc -c)
dd=$(($dd-1))
s=1
for (( f=0; f<dd; f++ ))
do
ss=$(echo $str | cut -c$s-$s)
case $ss in
a) count1=$(($count1+1));;
b) count2=$(($count2+1));;
c) count3=$(($count3+1));;
d) count4=$(($count4+1));;
e) count5=$(($count5+1));;
f) count6=$(($count6+1));;
g) count7=$(($count7+1));;
h) count8=$(($count8+1));;
i) count9=$(($count9+1));;
j) count10=$(($count10+1));;
k) count11=$(($count11+1));;
l) count12=$(($count12+1));;
m) count13=$(($count13+1));;
n) count14=$(($count14+1));;
o) count15=$(($count15+1));;
p) count16=$(($count16+1));;
q) count17=$(($count17+1));;
r) count18=$(($count18+1));;
s) count19=$(($count19+1));;
t) count20=$(($count20+1));;
u) count21=$(($count21+1));;
v) count22=$(($count22+1));;
'w') count23=$(($count23+1));;
x) count24=$(($count24+1));;
y) count25=$(($count25+1));;
z) count26=$(($count26+1));;
esac
s=$(($s+1))
done

in=0
e=1
count=0
for (( f=0; f<dd; f++ ))
do
sss=$(echo $str | cut -c$e-$e)
case $sss in
' ')
myarr[$in]=$count
count=0
in=$(($in+1));;
a) count=$(($count1+$count));;
b) count=$(($count2+$count));;
c) count=$(($count3+$count));;
d) count=$(($count4+$count));;
e) count=$(($count5+$count));;
f) count=$(($count6+$count));;
g) count=$(($count7+$count));;
h) count=$(($count8+$count));;
i) count=$(($count9+$count));;
j) count=$(($count10+$count));;
k) count=$(($count11+$count));;
l) count=$(($count12+$count));;
m) count=$(($count13+$count));;
n) count=$(($count14+$count));;
o) count=$(($count15+$count));;
p) count=$(($count16+$count));;
q) count=$(($count17+$count));;
r) count=$(($count18+$count));;
s) count=$(($count19+$count));;
t) count=$(($count20+$count));;
u) count=$(($count21+$count));;
v) count=$(($count22+$count));;
'w') count=$(($count23+$count));;
x) count=$(($count24+$count));;
y) count=$(($count25+$count));;
z) count=$(($count26+$count));;
esac
e=$(($e+1))
done
myarr[$in]=$count
j=0
for i in ${str[@]}
do
printf "The frequency of $i is ${myarr[$j]}\n"
j=$(($j+1))
done
max=${myarr[0]}
for n in ${myarr[@]} 
do
if [ $n -gt $max ]
then
max=$n
fi
done
Shift=$(($max%26))
echo "The shift value is $Shift"
a=97
a=$(($a+$Shift))
eddd=$(echo $a | awk '{ printf("%c",$0); }')
a=$(($a-1))
effff=$(echo $a | awk '{ printf("%c",$0); }')
new=$(echo $str | tr "[a-z]" "[$(echo $eddd)-za-$(echo $effff)]")
printf "Please input the name of the cipher text file:"
read file2
[ -e $file ]
existtt=$(echo $?)
if [ $existtt -gt 0 ]
then                                                                                    
echo "File does not exist"                                                             
exit 0
fi
[ -w $file2 ]
exitt=$(echo $?)
if [ $exitt -gt 0 ]                                                                  
then                                               
echo "File is not writable" 
exit 0
fi
echo $new > $file2
echo "The encryption ended succsessfully"
echo "GooodBye....!"
;;
#end
d)
echo "you chose decryption:"
printf "Please input the name of the cipher text file:"
read file
[ -e $file ]
existtt=$(echo $?)
if [ $existtt -gt 0 ]
then                                                                                    
echo "File does not exist"                                                             
exit 0
fi
[ -s $file ]
exitt=$(echo $?)
if [ $exitt -gt 0 ]                                                                  
then                                               
echo "File is empty" 
exit 0
fi
str=$(cat $file)
echo "The input string is: $str"
dd=$(echo $str | wc -c)
dd=$(($dd-1))
s=1
for (( f=0; f<dd; f++ ))
do
ss=$(echo $str | cut -c$s-$s)
case $ss in
a) count1=$(($count1+1));;
b) count2=$(($count2+1));;
c) count3=$(($count3+1));;
d) count4=$(($count4+1));;
e) count5=$(($count5+1));;
f) count6=$(($count6+1));;
g) count7=$(($count7+1));;
h) count8=$(($count8+1));;
i) count9=$(($count9+1));;
j) count10=$(($count10+1));;
k) count11=$(($count11+1));;
l) count12=$(($count12+1));;
m) count13=$(($count13+1));;
n) count14=$(($count14+1));;
o) count15=$(($count15+1));;
p) count16=$(($count16+1));;
q) count17=$(($count17+1));;
r) count18=$(($count18+1));;
s) count19=$(($count19+1));;
t) count20=$(($count20+1));;
u) count21=$(($count21+1));;
v) count22=$(($count22+1));;
'w') count23=$(($count23+1));;
x) count24=$(($count24+1));;
y) count25=$(($count25+1));;
z) count26=$(($count26+1));;
esac
s=$(($s+1))
done

in=0
e=1
count=0
for (( f=0; f<dd; f++ ))
do
sss=$(echo $str | cut -c$e-$e)
case $sss in
' ')
myarr[$in]=$count
count=0
in=$(($in+1));;
a) count=$(($count1+$count));;
b) count=$(($count2+$count));;
c) count=$(($count3+$count));;
d) count=$(($count4+$count));;
e) count=$(($count5+$count));;
f) count=$(($count6+$count));;
g) count=$(($count7+$count));;
h) count=$(($count8+$count));;
i) count=$(($count9+$count));;
j) count=$(($count10+$count));;
k) count=$(($count11+$count));;
l) count=$(($count12+$count));;
m) count=$(($count13+$count));;
n) count=$(($count14+$count));;
o) count=$(($count15+$count));;
p) count=$(($count16+$count));;
q) count=$(($count17+$count));;
r) count=$(($count18+$count));;
s) count=$(($count19+$count));;
t) count=$(($count20+$count));;
u) count=$(($count21+$count));;
v) count=$(($count22+$count));;
'w') count=$(($count23+$count));;
x) count=$(($count24+$count));;
y) count=$(($count25+$count));;
z) count=$(($count26+$count));;
esac
e=$(($e+1))
done
myarr[$in]=$count
j=0
for i in ${str[@]}
do
printf "The frequency of $i is ${myarr[$j]}\n"
j=$(($j+1))
done
max=${myarr[0]}
for n in ${myarr[@]} 
do
if [ $n -gt $max ]
then
max=$n
fi
done
Shift=$(($max%26))
echo "The shift value is $Shift"
a=97
a=$(($a+$Shift))
eddd=$(echo $a | awk '{ printf("%c",$0); }')
a=$(($a-1))
effff=$(echo $a | awk '{ printf("%c",$0); }')
new=$(echo $str | tr "[$(echo $eddd)-za-$(echo $effff)]" "[a-z]")
printf "Please input the name of the plain text file:"
read file2
[ -e $file ]
existtt=$(echo $?)
if [ $existtt -gt 0 ]
then                                                                                    
echo "File does not exist"                                                             
exit 0
fi
[ -w $file2 ]
exitt=$(echo $?)
if [ $exitt -gt 0 ]                                                                  
then                                               
echo "File is not writable" 
exit 0
fi
echo $new > $file2
echo "The decryption ended succsessfully"
echo "GooodBye....!";;
q)
echo "GooodBye....!"
;;
*)  echo "invalid option" ;;
esac 
