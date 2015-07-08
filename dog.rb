# require "./animal"
class Dog < Animal

# why must third parameter be included to initialize if default is already set in parent?
	
	attr_accessor :favorite_treats

	@@favorite_treats = ["pig ears", "bacon", "snacky treats"]

	def initialize(name,age,sleeping=true)
		super

		@favorite_treats = @@favorite_treats

		@favorite_treat = @@favorite_treats.sample
		# DO I HAVE TO DO THIS (OR self.getTreats) TO GET ACCESS TO @@favorite_treats?
		# especially because to get access to addTreat I had to call it on Dog.addTreat, BUT
		# Dog.favorite_treats didn't work...
	end

	def woof
		if (sleeping != false)
			res = "WOOF"
		end
		res
	end

	def self.addTreat(aTreat)
		@@favorite_treats.push(aTreat)
	end

	def self.getTreats
		@@favorite_treats
	end
end

# bob = Dog.new("Bob",12);
# p bob.sleeping
# bob.wake_up
# p bob.sleeping
# bob.sleep
# p bob.sleeping