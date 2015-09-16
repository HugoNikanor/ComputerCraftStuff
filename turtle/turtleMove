--Turtle
	--A program that gives quick acces to all of the important functions of the turtle
	
	local Tin = nil		--Resets the value, if defined somewhere before
	
	local Tin = {...}	--(T)urtle(in)put		Defines what the user wants the Turtle to do
	HT = false			--(H)ave (T)oggled		This, and others like this, should be used if something is to be toggled.
	

	if Tin[1] == nil then
		print("Please enter what you would like the turtle to do, acceptable commands are:")
	end
	
for i = 1, 1000 do

--Code for moving in the four directions

	if Tin[i] == "GOF" then		--Lets he turtle go forward, if more than one block is desired then the "GOF" should be followed by a number as next argument in the array
		if tonumber(Tin[i + 1])then 
			for k = 1, Tin[i + 1] do
				turtle.forward()
			end
		else
			turtle.forward()
		end
	end
	
	
	if Tin[i] == "GOB" then		--Lets he turtle go back, if more than one block is desired then the "GOB" should be followed by a number as next argument in the array
		if tonumber(Tin[i + 1])then
			for k = 1, Tin[i + 1] do
				turtle.back()
			end
		else
			turtle.back()
		end
	end
	
	if Tin[i] == "GOD" then		--Lets he turtle go down, if more than one block is desired then the "GOD" should be followed by a number as next argument in the array
		if tonumber(Tin[i + 1])then
			for k = 1, Tin[i + 1] do
				turtle.down()
			end
		else
			turtle.down()
		end
	end
	
	if Tin[i] == "GOU" then		--Lets he turtle go up, if more than one block is desired then the "GOU" should be followed by a number as next argument in the array
		if tonumber(Tin[i + 1])then
			for k = 1, Tin[i + 1] do
				turtle.up()
			end
		else
			turtle.up()
		end
	end
	
	
--End of code for moving

--Code for rotating	

	if Tin[i] == "TRR" then		--Rotates the turtle right, is followed by a number that many times
		if tonumber(Tin[i + 1])then
			for k = 1, Tin[i + 1] do
				turtle.turnRight()
			end
		else
			turtle.turnRight()
		end
	end
	
	if Tin[i] == "TRL" then		--Rotates the turtle left, is followed by a number that many times
		if tonumber(Tin[i + 1])then 
			for k = 1, Tin[i + 1] do
				turtle.turnLeft()
			end
		else
			turtle.turnLeft()
		end
	end
	
--End of rotations

	
--Here follows the commands for placing and breaking blocks	
	
	if Tin[i] == "DGF" then		--Makes the turtle dig
		turtle.dig()
	end
	
	if Tin[i] == "DGU" then		--Makes the turtle dig Up
		turtle.digUp()
	end
	
	if Tin[i] == "DGD" then		--Makes the turtle dig down
		turtle.digDown()
	end
	
	if Tin[i] == "PLF" then		--Makes the turtle place its current block
		turtle.place()
	end
	
	if Tin[i] == "PLU" then		--Makes the turtle place its current block upwawrds
		turtle.placeUp()
	end
	
	if Tin[i] == "PLD" then		--Makes the turtle place its current block downwards
		turtle.placeDown()
	end

--End of placing and breaking

--Code for selecting slot in inventory

	if Tin[i] == "SLOT" then				--Allows you to set the "inventory cursor" 
		if tonumber(Tin[i + 1]) then
			Tin[i + 1] = Tin[i + 1] + 0
			if Tin[i + 1] < 17 then
				turtle.select(Tin[i + 1])
			else
			turtle.select(16)
			end
		else
			turtle.select(1)
			print("please follow SLOT with a number for a slot to switch to in the Turtles inventory, will now go to default (slot 1)")	
		end
	end
	
--End of Slot

--FuelRelated

if Tin[i] == "REF" then			--Refuels, follow with number for amount, 1 is default
	if tonumber(Tin[i + 1]) then
		Tin[i + 1] = Tin[i + 1] + 0		--If this is lacking, it says "turtle:18: Expected number
		turtle.refuel(Tin[i + 1])
	else
		turtle.refuel(1)
	end
end

if Tin[i] == "GFU" then			--Check Fuel Level
	print("Fuel level: "..turtle.getFuelLevel())
end

--End of Fuel related

--Drop / Suck commands

if Tin[i] == "DRF" then					--Drops items
	if tonumber(Tin[i + 1]) then
		Tin[i + 1] = Tin[i + 1] + 0			--Gives an error message about line 18 if this is lacking
		turtle.drop(Tin[i + 1])
	else
		turtle.drop(1)
	end
end

if Tin[i] == "DRD" then					--Drops items down
	if tonumber(Tin[i + 1]) then
		Tin[i + 1] = Tin[i + 1] + 0			--Gives an error message about line 18 if this is lacking
		turtle.dropDown(Tin[i + 1])
	else
		turtle.dropDown(1)
	end
end

if Tin[i] == "DRU" then					--Drops items up
	if tonumber(Tin[i + 1]) then
		Tin[i + 1] = Tin[i + 1] + 0			--Gives an error message about line 18 if this is lacking
		turtle.dropUp(Tin[i + 1])
	else
		turtle.dropUp(1)
	end
end
	
	
if Tin[i] == "SCF" then		--Suck
	turtle.suck()
end

if Tin[i] == "SCU" then		--Sucks Up
	turtle.suckUp()
end

if Tin[i] == "SCD" then		--Sucks Down
	turtle.suckDown()
end

--End of Suck / drop

--Attack

if Tin[i] == "ATK" then					--Makes the turtle attack, if a number is given
	if tonumber(Tin[i + 1])then 
		for k = 1, Tin[i + 1] do
			turtle.attack()
			os.sleep(0.4)
		end
	else
		turtle.attack()
	end
end
	
if Tin[i] == "ATKU" then					--Makes the turtle attack up, if a number is given
	if tonumber(Tin[i + 1])then 
		for k = 1, Tin[i + 1] do
			turtle.attackUp()
			os.sleep(0.4)
		end
	else
		turtle.attackUp()
	end
end
	
if Tin[i] == "ATKD" then					--Makes the turtle attack down, if a number is given
	if tonumber(Tin[i + 1])then 
		for k = 1, Tin[i + 1] do
			turtle.attackDown()
			os.sleep(0.4)
		end
	else
		turtle.attackDown()
	end
end
	
	

--End of attack

if Tin[i] == "WAIT" then		--Makes the turtle wait
	if tonumber(Tin[i + 1]) then
		Tin[i + 1] = Tin[i + 1] + 0
		os.sleep(Tin[i + 1])
	else
		os.sleep(1)
	end
end
		
end

--BUGS!
	--if the "Tin[i + 1] = Tin[i + 1] + 0" part is lacking, it will say that the problem is on line 18. 18 is the line with the first "if"