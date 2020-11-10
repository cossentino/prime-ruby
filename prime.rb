

def prime?(integer)
    if integer < 0 || integer == 1
        return false
    elsif integer == 2 || integer == 3
        return true
    elsif (integer % 2 == 0) || (integer % 3 == 0)
        return false
    else
    	(5..(Integer.sqrt(integer) + 1)).each do |i|
	    	if ((i - 1) % 6 == 0)
	        	return false if (integer % i) == 0
	   		elsif ((i + 1) % 6 == 0)
	       		return false if (integer % i) == 0
	    	else
	        	next
	        end
	    end
    end
    true
end

                



