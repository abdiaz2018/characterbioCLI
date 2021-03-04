 class CLI
   def begin
      greeting
      input = ask_input
      get_superherobio_details(input) 
      display_info
   end 

   def greeting
      puts "Welcome! Select the number of a random character to learn more about!"
      DataRetriever.get_names
      @list = SuperHeroBio.all.sample(5)
      @list.each.with_index(1) do |obj, index|
         puts "#{index}. #{obj.name}"
      end
   end
   
   def ask_input
      input = gets.strip
   end
   
   def get_superherobio_details(input)
      DataRetriever.get_bios(@list[input.to_i - 1])
      @bio_data = @list[input.to_i - 1]
   end
   
   def display_info
      puts "Fetching info! Please wait..."
      puts "-----------------------------"
      sleep(3)
      puts "Character:" + @bio_data.name
      puts "Full Name:" + @bio_data.full_name
      puts "Alter Egos:" + @bio_data.alter_egos
      if @bio_data.birthplace == "-"
         puts "Birthplace: Unknown"
      else
         puts "Birthplace:" + @bio_data.birthplace
      end
      puts "Alignment:" + @bio_data.alignment
   end
 end
