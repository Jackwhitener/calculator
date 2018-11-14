def add(num1,num2)
	result = num1+num2
	return result
end
def subtract(num1,num2)
	result = num1-num2
	return result
end
def divide(num1,num2)
	result = num1/num2
	return result
end
def multiply(num1,num2)
	result = num1*num2
	return result
end
def operatorfind(op)
	if op == "+"
		add(num1,num2)
	elsif op == "-"
		subract(num1,num2)
	elsif op == "*"
		multiply(num1,num2)
	elsif op == "/"
		divide(num1,num2)
	end
end