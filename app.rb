require 'sinatra'
require_relative 'math.rb'

get '/' do
	erb :input
end
post '/number' do
	num1 = params[:num1]
	redirect 'second_num?num1=' + num1
end
get 'second_num' do
	num1 = params[:num1]
	erb :input2, locals: {num1: num1}
end
post '/secondnum' do
	num1 = params[:num1]
	num2 = params[:num2]
	redirect 'math?num1=' + num1 + '&num2=' + num2
end
