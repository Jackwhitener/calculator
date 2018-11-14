require 'sinatra'
require_relative 'math.rb'

get '/' do
	erb :input
end
post '/number' do
	num1 = params[:num1]
	redirect 'number_2?num1=' + num1
end
get '/number_2' do
	num1 = params[:num1]
	erb :input2, locals: {num1: num1}
end
post '/number2' do
	num1 = params[:num1]
	num2 = params[:num2]
	redirect 'operator?num1=' + num1 + '&num2=' + num2
end
get '/operator' do
	num1 = params[:num1]
	num2 = params[:num2]
	op = params[:op]
	erb :operator, locals: {num1: num1, num2: num2, op: op}
end
post '/oper_ator' do
	num1 = params[:num1]
	num2 = params[:num2]
	op = params[:op]
	redirect 'results?num1=' + num1 + '&num2=' + num2 + '&op=' + op
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