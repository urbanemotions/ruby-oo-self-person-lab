# your code goes here
require 'pry'
class Person 
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account
    @@all = []

    def initialize(name)
        @name = name 
        @bank_account = 25
        @happiness = 8
        @hygiene = 8
        @@all << self
    end

    def self.all
        @@all
    end

    def happiness=(input)
        if input > 10
            @happiness = 10
        elsif input < 0 
            @happiness = 0 
        else
            @happiness = input 
        end
    end

    def hygiene=(input2)
        if input2 > 10 
            @hygiene = 10
        elsif input2 < 0 
            @hygiene = 0
        else 
            @hygiene = input2 
        end 
    end 

    def clean?
        if @hygiene > 7
            return true
        else
            return false
        end
    end

    def happy?
        if @happiness > 7
            return true 
        else
            return false
        end
    end
    
    def get_paid(salary)
        @bank_account += salary
        "all about the benjamins"
    end

    def take_bath
        @hygiene += 4 
        self.hygiene=(@hygiene)
        "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out 
        @happiness += 2
        @hygiene -= 3
        self.happiness=(@happiness)
        self.hygiene=(@hygiene)
        "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        @happiness += 3 
        friend.happiness += 3
        self.happiness=(@happiness)
        friend.happiness
        "Hi #{friend.name}! It's #{name}. How are you?"
    end

    def start_conversation(name, topic)
        if topic == "politics"
            @happiness -= 2 
            name.happiness -= 2
            self.happiness=(@happiness)
            name.happiness
            "blah blah partisan blah lobbyist"
        elsif topic == "weather"
            @happiness += 1
            name.happiness += 1
            self.happiness=(@happiness)
            name.happiness
            "blah blah sun blah rain"
        else 
            "blah blah blah blah blah"
        end
    end
end
