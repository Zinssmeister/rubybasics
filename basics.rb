class Employee
   # class variable (shared across objects)
   @@company = "zeitbeat llc"
   
   # constructor
   def initialize(name, id)
      #instance variables
      @name = name
      @id = id
   end 

   # method to print employee info
   def get_info
      puts @name + ' [ID: ' + @id.to_s + ' @ '+ @@company + ']'
   end
end

# Sub class of Employee
class Manager < Employee
   # constructor
   def initialize(name, id, title)
      #
      super(name, id)
      @title = title
   end

   def get_info
      super()
      puts 'Title: ' + @title + "\n\n"
   end
end


# Let's use these classes
#
#

# decoration
puts '>>>>> Manager List: <<<<<'
# Array to hold employees
employees = [Employee.new('Paul Lennon', 1), 
   Employee.new('John McCartney', 2),
   Employee.new('Ringo Harrison', 3)]

employees.each { |e| e.get_info }

# Ruby does more work when using double quotes (line breaks \n wouldn't work in single quotes)
puts "\n\n>>>>> Manager List: <<<<<"
# Array to hold managers
managers = [Manager.new('Donald Robert', 4, 'VP of Sales'), 
   Manager.new('Daniel Kleiner', 5, 'Creative Director'),
   Manager.new('Carlo Flinger', 6, 'CFO')]

managers.each { |e| e.get_info }