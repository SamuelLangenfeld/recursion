#This is a basic fibonacci sequence using a while loop to sum the previous two numbers
#and then put the sum as the next number in the sequence.

def fibs(number)

	fibonacci=[1]
	count=0
	num1=1
	num2=0
	while fibonacci.size<number
		sum=num1+num2
		fibonacci.push(sum)
		num2=num1
		num1=sum
	end

	return fibonacci
end


#This is a recursive way to do the fibonacci sequence. We start by not doing anything.
#The method calls itself recursively until we hit the bottom of our sequence, with
#2 terms, [1,1]. Then it goes back up, pushing onto the array the sum of the last
#two terms of our array, and then returning the resulting array. We do this until
#we've gone back through our number of recursions, which should be the number of terms-2 times

def fibs_rec(number, array=[1])
	
	if number>2 then array.push(array[-2]+array[-1]); 
		fibs_rec(number-1, array);
	elsif number==2
		return [1,1]
	end
	return array
end