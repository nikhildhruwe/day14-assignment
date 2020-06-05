#/bin/bash -x
function patternCheck() {

		 input=$1
		 check=$2
#	echo $input:$check
	if [[ $input =~ $check ]]
	then
		echo "Valid"
	else
		echo "INVALID Input"
	fi

}
echo "Enter Valid First Name(Start with Cap and minimum 3 characters)"
read fname
pattern1='^[A-Z][a-z]{3,}'

patternCheck $fname $pattern1

echo "Enter Last name (start with cap and minimum 3 characters)"
read lname
pattern2=^[A-Z][a-z]{3,}
patternCheck $lname $pattern2

echo "Enter email id"
read email
mailPattern='^[a-zA-Z0-9]+[.]*[a-zA-Z0-9]*[@][a-zA-Z]+([.][a-zA-Z]+){1,2}$'
patternCheck $email $mailPattern

echo "Mobile number "
read number
pat='^[0-9]{2}[ ][0-9]{10}'
if [[ $number =~ $pat ]]
then
   echo Valid
else
   echo Invalid
fi
echo " "
echo "Password Rules"
echo "rule1. minimum 8 characters"
echo "rule2. atleast 1 upper-case"
echo "rule3. atleast 1 numberic"
echo "rule4. exactly 1 special character"
echo " Enter Password"
read password

passwordPat='[(A-Z)(a-z)(0-9)][#-@$]{1}[a-zA-Z0-9]+{6,}$'
patternCheck $password $passwordPat
