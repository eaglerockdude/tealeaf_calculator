# ken mcfadden : Tealeaf Academy course 1
# Assignment     :  Create a calculator that can be run from the command line.
#  Summary:
#  1. Prompt user with welcome message and explain rules.
#  2. Accept and validate user input.
#  3. Display results.


#ken mcfadden Tealeaf course 1
 #Summary  :  Simple calculator

   quit = ""
   puts " Welcome to the ruby calculator."
    puts "Enter your first number, operation to be performed, and your 2nd number."

   while quit != "q"

     puts "What's your first number?"
     first_no = gets.chomp
      if first_no == "q"
       quit = first_no
       next
      end


     number_test = first_no =~ /^[\d]+(\.[\d]+){0,1}$/  # valid number regex
     if number_test != 0
       puts "Invalid first number entered...try again or q to quit."
       next
     end

     puts "Enter your second number?"
     second_no = gets.chomp
      if second_no == "q"
       quit = second_no
       next
      end

     number_test = second_no =~ /^[\d]+(\.[\d]+){0,1}$/  # valid number regex
     if number_test != 0
       puts "Invalid second number entered...try again or q to quit."
       next
     end

     first_no = first_no.to_i
     second_no = second_no.to_i

     puts "What do you want to do?  Here are your options:"
     puts "Enter 1 = Add, 2 = Subtract, 3 = Multiply, and 4 = Divide."

      op_code = gets.chomp
      number_test = op_code =~ /^[\d]+(\.[\d]+){0,1}$/  # valid number regex
        if number_test != 0
         puts "Invalid op code number...try again or q to quit."
        next
        end

     first_no = first_no.to_i
     second_no = second_no.to_i
     op_code = op_code.to_i

     if op_code == 1
       puts "Your sum is #{first_no + second_no}"
     elsif op_code == 2
       puts "Your result is #{first_no - second_no}"
     elsif op_code == 3
       puts "Your product is #{first_no * second_no}"
     elsif op_code == 4
       puts "Your division answer is #{first_no.to_f / second_no.to_f}"
     end

     puts "Would you like to quit now?  Enter a 'q' to quit."
     quit  = gets.chomp

   end

    puts "Bye Bye!"
