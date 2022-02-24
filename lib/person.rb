require "pry"


class Person
    attr_reader :name, :happiness, :hygiene
    attr_accessor :bank_account

    def initialize(name, bank_account = 25, happiness = 8, hygiene = 8)
        @name = name
        @bank_account = bank_account
        @happiness = happiness
        @hygiene = hygiene
    end


    def happiness=(value)
        @happiness = 
        if value > 10
         10
        elsif value < 0
            0
        else 
            value
       end
    end

    def hygiene=(value)
        @hygiene = 
        if value > 10
         10
        elsif value < 0
            0
        else 
            value
       end
    end

    def happy?
        if self.happiness > 7
             true
        else 
            false
        end
    end

    def clean?
        if self.hygiene > 7
             true
        else 
            false
        end
    end

    def get_paid(amount)
        self.bank_account += amount
        return "all about the benjamins" 
    end

    def take_bath
        self.hygiene=(self.hygiene + 4)
    return "♪ Rub-a-dub just relaxing in the tub ♫"
    end

    def work_out
        self.hygiene=(self.hygiene - 3)
        self.happiness=(self.happiness + 2)
        return "♪ another one bites the dust ♫"
    end

    def call_friend(friend)
        self.happiness=(self.happiness + 3)
        friend.happiness=(friend.happiness + 3)
        return "Hi #{friend.name}! It's #{self.name}. How are you?"
    end

    def start_conversation(person, topic)
        if topic == "politics"
            self.happiness=(self.happiness - 2)
            person.happiness=(person.happiness - 2)
            return 'blah blah partisan blah lobbyist'
        elsif topic == "weather"
            self.happiness=(self.happiness + 1)
            person.happiness=(person.happiness + 1)
            return 'blah blah sun blah rain'
        else 
            return 'blah blah blah blah blah' 
        end
    end

end
