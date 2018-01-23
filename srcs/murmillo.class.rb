#* ************************************************************************** */
#*                                                                            */
#*    murmillo.class.rb      _             _              :::      ::::::::   */
#*    By: mlu               | |           | |           :+:      :+:    :+:   */
#*     ___  __ _  __ _ _ __ | | __ _ _ __ | |_        +:+ +:+         +:+     */
#*    / _ \/ _` |/ _` | '_ \| |/ _` | '_ \| __|     +/+  +:+       +/+        */
#*   |  __/ (_| | (_| | |_) | | (_| | | | | |_    +/+/+/+/+/+   +/+           */
#*    \___|\__, |\__, | .__/|_|\__,_|_| |_|\__|        /+/    /+/             */
#*          __/ | __/ | |                             ///   ////////.fr       */
#*         |___/ |___/|_|                                                     */
#* ************************************************************************** */

class Murmillo < Player

	def initialize(nameput)
		super(nameput, 500, 9, 7, 5, "Murmillo")
	end

	def skillTwo
		loss = (500 - @hp) / 4;
		@hp += loss
		puts @name + " recovers a quarter of their missing health! Their health healed " + loss.to_s + ". Current health: " + @hp.to_s
		return 0 
	end

	def skillOne
		heal = @atk * 2
		@hp += heal
		puts @name + " strikes twice, healing for " + heal.to_s + " points of damage. Current health: " + @hp.to_s
		return @atk * 2
	end
end
