class Waiter

    @@all = []

    def initialize(name, years)
        @name = name
        @years = years
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals 
        Meal.all.select {|meal|meal.waiter == self}
    end

    def best_tipper
        #binding.pry
        #meals.all
        meals.select {|meals| meals.tip >= 5}.pop.customer
        
    end






end