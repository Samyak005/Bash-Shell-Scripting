func2()
{
let n=($p*$q)/$a
echo "LCM: $n"
}

func1()
{
echo "Enter A:"
read p
echo "Enter B:"
read q
a=$p
b=$q

while (( $a != $b ))
do
	if [ $a -gt $b ]
	then
		a=$(($a-$b))
	else
		b=$(($b-$a))
	fi
done
echo "GCD: $a"
func2
}
func1



