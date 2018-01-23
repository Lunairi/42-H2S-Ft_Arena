#* ************************************************************************** */
#*                                                                            */
#*    mergen.class.rb        _             _              :::      ::::::::   */
#*    By: mlu               | |           | |           :+:      :+:    :+:   */
#*     ___  __ _  __ _ _ __ | | __ _ _ __ | |_        +:+ +:+         +:+     */
#*    / _ \/ _` |/ _` | '_ \| |/ _` | '_ \| __|     +/+  +:+       +/+        */
#*   |  __/ (_| | (_| | |_) | | (_| | | | | |_    +/+/+/+/+/+   +/+           */
#*    \___|\__, |\__, | .__/|_|\__,_|_| |_|\__|        /+/    /+/             */
#*          __/ | __/ | |                             ///   ////////.fr       */
#*         |___/ |___/|_|                                                     */
#* ************************************************************************** */

class Mergen < Player

	def initialize(nameput)
		super(nameput, 450, 12, 4, 7, "Mergen")
	end

	def skillOne
		dmg = @atk * 3 - 3
		puts @name + " strikes 3x with reduced damage, doing a total of " + dmg.to_s + " damage"
		return dmg
	end

	def skillTwo
		i = 1 + rand(5)
		dmg = @atk * i
		puts @name + " strikes " + i.to_s + " amounts of time, doing a total of " + dmg.to_s + " damage"
		return dmg
	end

end
