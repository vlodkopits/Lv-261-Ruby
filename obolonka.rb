require './abramove.rb'
require 'json'
require 'prime'
include Abramove

# terminal interface for communicated with user
class Obolonka
  def start
    file = open('tasks.json').read
    parsed = JSON.parse(file)
    
    parsed.each { |key, value| puts value }

    print 'Input task number:'

    n = gets.to_i

    case n
    when 224
      arg = input_method()
      n_dividers(arg)
    when 325
      arg = input_method()
      n_prime_dividers(arg)
    when 561
      arg = input_method()
      num_last_square(arg)
    else
      print 'Enter valid number'
    end
  end
end

run = Obolonka.new
run.start
