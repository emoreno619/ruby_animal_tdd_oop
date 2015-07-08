class Animal
	attr_accessor :name, :age, :sleeping

	def initialize(name,age,sleeping=true)
		@name = name
		@age = age
		@sleeping = sleeping
	end

	def wake_up
		@sleeping = false
	end

	def sleep
		@sleeping = true
	end

	def feed
		if (!@sleeping)
			res = "NOM NOM NOM"
		end
		res
	end

end