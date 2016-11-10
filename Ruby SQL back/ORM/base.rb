class Base
 def initialize(attributes = {})
   @one_id = attributes[:one_id]
   @two_id = attributes[:two_id]
   @name = attributes[:name]
   @title = attributes[:title]
 end

 def self.all(id)
   @one_id.nil? ? "#{@id}" : ""
 end

end


class ChildOne < Base
end

class ChildTwo < Base
end


child_one = ChildOne.new(id: 1, name: "David")
p child_one.all

child_two = ChildTwo.new(id: 1, title: "Title")
p child_two.all