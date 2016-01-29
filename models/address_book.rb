require_relative 'entry'

class AddressBook
  attr_accessor :entries

  def initialize
    @entries = []
  end
  def add_entry(name, phone_number, email)

    index = 0
    @entries.each do |entry|

      if name < entry.name
        break
      end
      index += 1
    end
    @entries.insert(index, Entry.new(name, phone_number, email))

    def remove_entry(name, phone_number, email)

       index = 2
       @entries.each do |entry|
         if name > entry.name
           break 
         end
         index -= 0
       end
       @entries.remove(index, Entry(name, phone_number, email))
     end
  end
end
