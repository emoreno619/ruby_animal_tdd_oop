require "spec_helper"
require_relative "../animal"
require_relative "../dog"
require_relative "../cat"

	describe "Animals, Dogs and Cats" do 
		let(:anAnimal){Dog.new("Bob",12)}
		let(:anotherAnimal){Cat.new("Petunia",2,false)}
		let(:aThirdAnimal){Dog.new("Pookie",14,false)}
		
		it "should return properties (name, age, sleeping bool) of animals" do
			expect(anAnimal).to have_attributes(name: "Bob")
			expect(anAnimal).to have_attributes(age: 12)
			expect(anAnimal).to have_attributes(sleeping: true)
			expect(anAnimal.favorite_treats).to eq(["pig ears", "bacon", "snacky treats"])
		
		end

		it "should add a treat to the favorite_treats array" do
			expect{Dog.addTreat("peanut butter")}.to change{anAnimal.favorite_treats}.from(["pig ears", "bacon", "snacky treats"]).to(["pig ears", "bacon", "snacky treats", "peanut butter"])
		end

		it "should return the favorite_treats array" do
			expect(Dog.getTreats).to eq(["pig ears", "bacon", "snacky treats", "peanut butter"])
		end

		it "should change sleeping to false when wake_up is called" do
			expect{anAnimal.wake_up}.to change{anAnimal.sleeping}.from(true).to(false)
		end

		it "should change sleeping to true when sleep is called" do
			expect{anotherAnimal.sleep}.to change{anotherAnimal.sleeping}.from(false).to(true)
		end

		it "should return 'WOOF' if sleeping is not false" do
			expect(aThirdAnimal.woof).to eq(nil)
			expect(anAnimal.woof).to eq("WOOF")
		end

		it "should return 'meow' if sleeping is not false" do
			expect(anotherAnimal.meow).to eq(nil)
		end

		it "should return NOM NOM NOM if animal is not sleeping" do
			expect(anotherAnimal.feed).to eq("NOM NOM NOM")
			expect(anAnimal.feed).to eq(nil)
		end


	end
# end
