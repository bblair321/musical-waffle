class Shelter
    attr_reader :shelter, :kennels, :pets
    def initialize(shelter, kennels)
        @shelter
        @kennels = kennels
        @pets = []
    end
    def name
        "Denver Animal Shelter"
    end
    # capacity of shelter
     def capacity
        capacity = 5
     end
     def add_pet(pet)
        # checking to see there are less pets than kennels
        if @pets.length < @kennels
            @pets << pet # adds a pet to the @pets array
        else
            return true
        end
      "#{pet} has been added to the shelter."
     end
     def call_pets
        # this method is using map! method to appen and ! to the end of each element in the  array
        @pets.map! {|pet| pet + "!"}
     end
     def over_capacity?
        # Check if the number of pets exceeds the capacity
        @pets.length > @kennels
      end 
end