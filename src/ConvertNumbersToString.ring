OneList=["zero",    "one",     "two",       "three",    "four",
              "five",    "six",     "seven",     "eight",    "nine",
              "ten",     "eleven",  "twelve",    "thirteen", "fourteen",
              "fifteen", "sixteen", "seventeen", "eighteen", "nineteen"]
tenList=["" , "" , "twenty",  "thirty", "fourty",
            "fifty", "sixty", "seventy", "eighty", "ninety"]

millionStr="Million"
thousandStr="Thousand"
hundredStr="Hundred"
andStr="And"


while true
	see "enter number to convert:"
	give theNumber
	theNumber= number(theNumber)
	see getName(theNumber) + nl
end

func getName num
rtn=null
if num=0
    rtn += OneList[floor(num+1)]
	return rtn
ok
if num<0
	return "minus " + getName(fabs(num))
ok
if num>= 1000000 
	rtn += getName(num / 1000000) +" "+ millionStr 
	num%=1000000
ok
if num>=1000
	if len(rtn)>0 rtn += ", " ok

	rtn += getName(num / 1000)+ " " + thousandStr 
	num%=1000
ok

if num >=100 
if len(rtn)>0 rtn += ", " ok
	rtn += OneList[floor((num / 100)+1)] + " " + hundredStr 
	num%=100
ok

if num=0 
	return rtn
ok
if len(rtn)>0 rtn += " " + andStr + " " ok
if(num>=20)

	rtn += tenList[floor((num / 10)+1)]
	num%=10
ok
if num=0 
	return rtn
ok
if len(rtn)>0 rtn +=  " " ok
rtn += OneList[num+1]
return rtn
	
