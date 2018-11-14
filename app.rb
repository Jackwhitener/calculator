require 'sinatra'
require_relative 'math.rb'

get '/' do
	erb :input
end
post '/number' do
	num1 = params[:num1]
	num2 = params[:num2]
	op = params[:op]
	redirect 'results?num1=' + num1 + '&op=' + op + '&num2='+ num2
end
get '/results' do
	num1 = params[:num1]
	num2 = params[:num2]
	op = params[:op]
	if op == "add"
		result = add(num1.to_i,num2.to_i)
		op = "\+"
	elsif op == "-"
		result = subtract(num1.to_i,num2.to_i)
	elsif op == "*"
		result = multiply(num1.to_i,num2.to_i)
	elsif op == "/"
		result = divide(num1.to_i,num2.to_i)
	end
	erb :results, locals: {num1: num1, num2: num2, result: result, op: op}
end
