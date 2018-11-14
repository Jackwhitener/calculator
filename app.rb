require 'sinatra'
require_relative 'math.rb'

get '/' do
	erb :input
end
post '/number' do
	num1 = params[:num1]
	redirect 'num2?num1=' + num1
end
get '/num2' do
	num1 = params[:num1]
	erb :input2, locals: {num1: num1}
end
post '/secondnum' do
	num1 = params[:num1]
	num2 = params[:num2]
	redirect 'result?num1=' + num1 + '&num2=' + num2
end
get '/result' do
	num1 = params[:num1]
	num2 = params[:num2]
	result_add = add(num1.to_i,num2.to_i)
	result_subtract = subtract(num1.to_i,num2.to_i)
	result_multiply = multiply(num1.to_i,num2.to_i)
	result_divide = divide(num1.to_i,num2.to_i)
	erb :result, locals: {num1: num1, num2: num2, result_add: result_add, result_subtract: result_subtract, result_multiply: result_multiply, result_divide: result_divide}
end