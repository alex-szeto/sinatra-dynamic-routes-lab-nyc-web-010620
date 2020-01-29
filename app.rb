require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    #placeholder
    @name = params[:name].reverse
    "#{@name}"
  end

  get'/square/:number' do
    @number = params[:number].to_i
    "#{@number * @number}"
  end

  get '/say/:number/:phrase' do
    result = []
    @num, @phrase = params[:number], params[:phrase]
    @num.to_i.times{
        result << @phrase
    }
    return result
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1, @word2, @word3, @word4, @word5 = params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]
    "#{@word1} #{@word2} #{@word3} #{@word4} #{@word5}."
  end

  get '/:operation/:number1/:number2' do 
    @operation, @num1, @num2 = params[:operation], params[:num1], params[:nums2]


    if @operation.to_s == "add"
      "#{@num1.to_i + @num2.to_i}"
    elsif @operation.to_s == "subtract"
      "#{@num1.to_i - @num2.to_i}"
    elsif @operation.to_s == "multiply"
      "#{@num1.to_i * @num2.to_i}"
    elsif @operation.to_s == "divide"
      "#{@num1.to_f /@num2.to_i}"
    end
      
  end



end