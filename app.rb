require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    @user_name = params[:name].reverse
    "#{@user_name}"
  end

  get '/square/:number' do
    (params[:number].to_i ** 2).to_s
  end

  get '/say/:number/:phrase' do
    arr = []
    params[:number].to_i.times {arr << params[:phrase]}
    arr.join(" ")
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    phrase_arr = []
    i = 0
    while i < 5 do
      var = "word#{i+1}".to_sym
      phrase_arr << params[var]
      i += 1
    end
    phrase_arr.join(" ") + "."
  end

  get '/:operation/:number1/:number2' do
    arr = []
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i

    arr << "#{num1} + #{num2} = #{num1 + num2}"
    arr << "#{num1} - #{num2} = #{num1 - num2}"
    arr << "#{num1} x #{num2} = #{num1 * num2}"
    arr << "#{num1} / #{num2} = #{num1 / num2}"
    arr.join("/n")
  end

end