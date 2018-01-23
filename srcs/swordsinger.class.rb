#* ************************************************************************** */
#*                                                                            */
#*    swordsinger.class.rb   _             _              :::      ::::::::   */
#*    By: mlu               | |           | |           :+:      :+:    :+:   */
#*     ___  __ _  __ _ _ __ | | __ _ _ __ | |_        +:+ +:+         +:+     */
#*    / _ \/ _` |/ _` | '_ \| |/ _` | '_ \| __|     +/+  +:+       +/+        */
#*   |  __/ (_| | (_| | |_) | | (_| | | | | |_    +/+/+/+/+/+   +/+           */
#*    \___|\__, |\__, | .__/|_|\__,_|_| |_|\__|        /+/    /+/             */
#*          __/ | __/ | |                             ///   ////////.fr       */
#*         |___/ |___/|_|                                                     */
#* ************************************************************************** */

class Swordsinger < Player

	def initialize(nameput)
		super(nameput, 400, 14, 3, 6, "Swordsinger")
	end

	def skillOne
		dmg = @atk * 2
		@def += 2
		puts @name + " increases their defenses, allowing them to do " + dmg.to_s + " damage"
		return dmg
	end

	def skillTwo
		dmg = @atk * 3
		@atk += 2
		puts @name + " stregthens themselves, allowing them to do " + dmg.to_s + " damage"
		return dmg
	end
end
