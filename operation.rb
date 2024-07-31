module PerformCalculation
  private
  def perform_operation(op)
    a,b = take_input
    result = case(op)
    when '+' then a+b
    when '-' then a-b
    when '*' then a*b
    when '/' then a/b
    end
    
    show_output(a,b,result, op) 
  end

  def show_output(a, b, result, op)
    puts "Output: #{a} #{op} #{b} = #{result}"
  end

  def take_input
    print "Enter first number: "
    n1 = gets.chomp.to_i
    print "Enter second number: "
    n2 = gets.chomp.to_i
    return n1, n2
  end
end
