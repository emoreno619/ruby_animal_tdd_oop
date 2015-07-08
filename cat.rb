class Cat < Animal

	def initialize(name,age,sleeping=true)
		super
		# @sleeping = sleeping
	end

	def meow
		if (sleeping != false)
			"meow"
		end
	end

end