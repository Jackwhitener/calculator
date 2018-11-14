def add(num1,num2)
	result = num1+num2
	return result.to_s
end
def subtract(num1,num2)
	result = num1-num2
	return result.to_s
end
def divide(num1,num2)
	if num2 == 0
		return "stobbit"
	else
		result = num1/num2
		return result.to_s
	end
end
def multiply(num1,num2)
	result = num1*num2
	return result.to_s
end
