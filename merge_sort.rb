def merge_sort(array)

#The idea of a merge sort is to create one ordered list by continually breaking an unordered
#list into two parts. Once the parts are down into inidividual elements we compare them in pairs,
#and put them in order. Then we go up from the bottom of our recursion and compare and order that
#pair with another pair. And so on, comparing two arrays, combining them, and then comparing the
#ordered arrays with another ordered array of comparable size.
	if array.size>1
		middle=array.size/2
		left=[]
		right=[]
		left=array[0...middle]

		right=array[middle..-1]

		#The recursion happens on this next line. It actually happens first. Before we merge the
		#two arrays, we break them down. Once they're two small to be broken down we send it back
		#up and that's when the merge method starts happening.
		sorted_array=merge(merge_sort(left),merge_sort(right))
		return sorted_array
	else
		return array

	end
end



def merge(left, right)
	sorted_array=[]

	#This method compares two sorted arrays and creates a combined sorted array by
	#comparing the first elements, then putting the smallest one into the new array.
	#We then resize the array that small element came from so that a new element in 
	#that array is first. We do this until one of the two sorted arrays in empty.
	#After that we put in the rest of the nonempty array.

	until (left.empty? || right.empty?)
		if left.first>right.first
			sorted_array<<right.first
			right=right[1..-1]
		else
			sorted_array<<left.first
			left=left[1..-1]
		end
	end

	if !left.empty? || !right.empty?
		if left.empty?
			until right.empty?
				sorted_array<<right.first
				right=right[1..-1]	
			end
		else
			until left.empty?
				sorted_array<<left.first
				left=left[1..-1]
			end
		end
	end



	return sorted_array



end