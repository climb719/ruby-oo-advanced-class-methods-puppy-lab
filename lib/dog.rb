class Dog

    @@all = [] #class variable set to an empty array to be able to store each instance

    attr_accessor :name #getter and setter for name initialized 

    def initialize(name)
        @name = name #knows name 
        save
    end

    def save
        @@all << self #every puppy that is born should get pushed into @@ array at the moment of instantiation
    end

    def self.all #class method that reads/accesses the class variable
        @@all
    end

    def self.print_all  #terates over all of the individual dogs stored in the @@all array and puts out their name to the terminal
        @@all.map do |dog| 
            puts dog.name #printing each instance of name
        end
    end

    def self.clear_all  #operate on @@all array of existing dogs to empty the array
        @@all.clear
    end

end
