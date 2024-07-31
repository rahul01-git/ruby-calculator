require './operation.rb'

class Calculator 
  include PerformCalculation
  def initialize
    @choices = {
      'a'=> '+',
      'b'=> '-',
      'c'=> '*',
      'd'=> '/',
    }
  end

  def display_menu
    loop do
      system('clear')
      puts "Calculator App"
      puts "a) Add"
      puts "b) Sub"
      puts "c) Mul"
      puts "d) Div"
      puts "q) Quit"
      print "Enter your choice: "
      choice = gets.chomp.downcase
      break if choice == 'q'
      chosen_method(choice)
    end
    puts "Thank you for using our calculator !!"
  end

  private
  def chosen_method(choice)
    operation = @choices[choice]
    if(operation)
      perform_operation(operation)
    else 
      puts "Invalid operation selected !!"
    end

    print "Continue(y/n): "
    quit = gets.chomp.downcase
    exit if quit == 'n'
  end
end


calc = Calculator.new
calc.display_menu