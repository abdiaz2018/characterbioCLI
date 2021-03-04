 class CLI
   def begin
      greeting
      input = ask_input
      get_superherobio_details(input) 
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
      #make api call here
      DataRetriever.get_bios(@list[input.to_i - 1])
      # binding.pry
   end
 end
