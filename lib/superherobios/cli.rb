 class CLI
   def begin
      greeting
      display_names
      input = ask_input
   end 

   def greeting
      puts "Welcome! Select the number of a random character to learn more about!"
   end
   def display_names
      DataRetriever.get_names
      @list = SuperHeroBio.all.sample(5)
      @list.each.with_index(1) do |obj, index|
         puts "#{index}. #{obj.name}"
      end
   end
   
   def ask_input
      input = gets.strip
      if input.to_i >= 1 && input.to_i <= 5
         get_superherobio_details(input)
      else
         puts "Error! Try again!"
         ask_input
      end
      display_info
      repeat_exit
   end

   def exit_message
      puts "Goodbye!"
      exit
   end

   def repeat_exit
      puts "Type exit or again to learn about another random character!"
         input = gets.strip
         if input == "exit"
            exit_message
         elsif input == "again"
            display_names
            ask_input
         else
            puts "Error! Try again!"
            repeat_exit
         end
      end

   def get_superherobio_details(input)
      DataRetriever.get_bios(@list[input.to_i - 1])
      @bio_data = @list[input.to_i - 1]
   end
   
   def display_info
      puts "Fetching info! Please wait..."
      puts "-----------------------------"
      sleep(1)
      puts "Character:" + @bio_data.name
      puts "Full Name:" + @bio_data.full_name
      puts "Alter Egos:" + @bio_data.alter_egos
      if @bio_data.birthplace == "-"
         puts "Birthplace: Unknown"
      else
         puts "Birthplace:" + @bio_data.birthplace
      end
      puts "Alignment:" + @bio_data.alignment
      puts "------------------------------"
   end

 end
