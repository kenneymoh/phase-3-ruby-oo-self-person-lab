# your code goes here
class Person
  attr_reader :name
  attr_accessor :bank_account, :happiness, :hygiene

     def initialize(name, bank_account=25, happiness=8, hygiene=8)
      @name=name
      @bank_account=bank_account
      @happiness=happiness
      @hygiene=hygiene
     end

     def happiness=(number)
        @happiness = if number > 10
           10
        elsif number < 0
           0
        else
           number
        end
     end
     def hygiene=(number)
        @hygiene = if number > 10
           10
        elsif number < 0
           0
        else
           number
        end
     end

     def clean?
        self.hygiene > 7
     end

     def happy?
        self.happiness > 7
     end

     def get_paid(salary)
        self.bank_account += salary
        "all about the benjamins"
     end

     def take_bath
        self.hygiene += 4
        "♪ Rub-a-dub just relaxing in the tub ♫"
     end

     def work_out
        self.happiness +=2
        self.hygiene -=3
        "♪ another one bites the dust ♫"
     end

     def call_friend(friend)
        self.happiness +=3
        friend.happiness +=3
        "Hi #{friend.name}! It's #{self.name}. How are you?"
     end

  def start_conversation(friend, topic)
     if topic == "politics"
        [self, friend].each do |person|
           person.happiness -=2
        end
        "blah blah partisan blah lobbyist"
     elsif topic == "weather"
        [self, friend].each do |person|
           person.happiness +=1
        end
        "blah blah sun blah rain"
     else
        "blah blah blah blah blah"
     end


  end
  end
  
