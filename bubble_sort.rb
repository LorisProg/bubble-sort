def bubble_sort (array)
	not_sorted = true
 	while not_sorted
 		not_sorted = false
		(array.length - 1).times do |index|
			if array[index+1] < array[index]
				array[index+1], array[index] = array[index], array[index+1]
				not_sorted = true
			end
		end
	end
	array
end


def bubble_sort_by (array)
	not_sorted = true
 	while not_sorted
 		not_sorted = false
		(array.length - 1).times do |index|
			if (yield array[index], array[index+1]) > 0
				array[index+1], array[index] = array[index], array[index+1]
				not_sorted = true
			end
		end
	end
	array
end

