#* ************************************************************************** */
#*                                                                            */
#*    example1.rb            _             _              :::      ::::::::   */
#*    By: mlu               | |           | |           :+:      :+:    :+:   */
#*     ___  __ _  __ _ _ __ | | __ _ _ __ | |_        +:+ +:+         +:+     */
#*    / _ \/ _` |/ _` | '_ \| |/ _` | '_ \| __|     +/+  +:+       +/+        */
#*   |  __/ (_| | (_| | |_) | | (_| | | | | |_    +/+/+/+/+/+   +/+           */
#*    \___|\__, |\__, | .__/|_|\__,_|_| |_|\__|        /+/    /+/             */
#*          __/ | __/ | |                             ///   ////////.fr       */
#*         |___/ |___/|_|                                                     */
#* ************************************************************************** */


i = 42;

#puts "Value: " + i					# Will error since this is FIXNUM
puts "Value: " + i.to_s, ""			# Will not error since this is string


# Defining a class
class Parent

	def initialize(value)
		@health = 42
		@attack = value
		#@@attack = value		# Will have issues later since @@ is class variable, @ is instance variable
	end

	def getHealth
		return @health
	end

	def getAttack
		return @attack
	end

end


# Inheritance
class	Children < Parent

	def initialize(value)
		super(value)
	end

	def displayHealth
		puts "Health: " + @health.to_s
	end

	def displayAttack
		puts "Attack: " + @attack.to_s
	end
end


# How to instanciate class
example = Children.new(21)
puts "Using parent methods first: ", example.getHealth, example.getAttack, "", 
	"Using child methods now: "
puts example.displayHealth, example.displayAttack

example2 = Parent.new(4242)
puts "Using parent methods first: ", example2.getHealth, example2.getAttack, "", 
	"Using child methods now: "
# puts example2.displayHealth, example2.displayAttack		# Will error because parent does not inherit from children