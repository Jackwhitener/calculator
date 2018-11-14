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

	redirect 'math?num1=' + num1 + '&num2=' + num2
end
get '/math' do
	num1 = params[:num1]
	num2 = params[:num2]
	erb :operator, locals: {num1: num1, num2: num2}
end