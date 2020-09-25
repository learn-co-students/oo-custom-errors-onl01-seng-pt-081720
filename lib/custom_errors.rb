class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    self.partner = person
    if person.class != Person # if not instance of Person class - begins error handling
      begin # error rescue -> begin - rescue
        raise PartnerError 
      rescue PartnerError => error # creates instance of PartnerError
        puts error.message # puts the result of calling message on the instance
      end
    else
      person.partner = self
    end
  end

  class PartnerError < StandardError
    def message
      "you must give the get_married method an argument of an instance of the person class!"
    end
  end
end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name


# make sure auth is NO for API in github

