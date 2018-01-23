#* ************************************************************************** */
#*                                                                            */
#*    example2.rb            _             _              :::      ::::::::   */
#*    By: mlu               | |           | |           :+:      :+:    :+:   */
#*     ___  __ _  __ _ _ __ | | __ _ _ __ | |_        +:+ +:+         +:+     */
#*    / _ \/ _` |/ _` | '_ \| |/ _` | '_ \| __|     +/+  +:+       +/+        */
#*   |  __/ (_| | (_| | |_) | | (_| | | | | |_    +/+/+/+/+/+   +/+           */
#*    \___|\__, |\__, | .__/|_|\__,_|_| |_|\__|        /+/    /+/             */
#*          __/ | __/ | |                             ///   ////////.fr       */
#*         |___/ |___/|_|                                                     */
#* ************************************************************************** */

# Defining a class
class Parent

	def initialize(value)
		@health = 42
		@attack = value
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


# Creating a container
class	Container
	# attr_accessor :array		# Since this is an instance var, it cannot be accessed outside container/class
								# attr_accessor fixes this issue

	def initialize
		@array = []				# Undefined amount of size
	end

	def add
		i = 1 + rand(42)
		add = Children.new(i)
		# @array.push(add)		# Both methods works
		@array << add			# Both methods work
	end

end



# Using the container that holds multiple classes
example = Container.new

example.add
puts "Added one children to container"

# Getting info out from the container
example.array[0].displayAttack

puts "", "Showing how to add more stuff"

i = 0
while i < 10 do
	example.add
	puts "Adding children to container. Iteration: " + i.to_s
	i += 1
end

puts "", "Showing how to access all the stuff"

i = 0
while i < example.array.size do
	example.array[i].displayAttack
	puts "Iteration: " + i.to_s
	i += 1
end
















