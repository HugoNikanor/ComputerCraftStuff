--QuarryHole 3D

--This is the version where I will add the third dimension

	--A program that makes a turtle dig a quarry hole
		--Should dig a hole with definable X Y Z
			--Should not be able to dig a hole deeper than Y = 6. this is to prevent getting stuck under bedrock
			
		--Turtle will start in lower left corner of the quarryhole.
		--It should firstly dig down the row it is on and the one ahead of it. 
		--It should move 2 steps forward and then go upwards, mining the blocks above and infront of it
			--when going back it should do the same on the next horisontal collumn
		
		--The relative coordintes should be defined by Commandline arguemnt
		--The real Y coord should be defined by GPS or prompt
		
				--Turtle should not start diging one of the holes unless he has enough fuel to get all the way down and up again
				--If its (turtle) inventory is filled beyond a treshold it will dump its inventory before continuing
		
forwardLine = 0 --How far the X cordinate should extend
sideLine = 0 	--How far the Z coordinate should extend
downLine = 0	--How far the Y cordinate should extend
Y = nil			--resets "Y"
X = nil
Z = nil
HRD = false		--If one of the three programs have run (H)ave (R)un (D)own
HRL = false		--(H)ave (R)run (L)eft


Line = {...}	--At runtime the dimensiond of the hole will be defined

	forwardLine = Line[1]	--How long the turtle should go forwards is the first number
	sideLine = Line[2]		--Sideways is secounds
	downLine = Line[3]		--Down is third
	
	forwardLine = tonumber(forwardLine)
	sideLine = tonumber(sideLine)
	downLine = tonumber(downLine)

Z = 0
goBack = false

for t = 1,3 do						--Added this loop, should be a better set to do this with "#" symbol.	20140109 14:13
	if Line[t] == nil then
		error("Usage: \nQuarryHoleDownLeft <x> <z> <y>")		--How do I call the name of the program?
	end	--if Line[t] == nil
end	--for t = 1,3
	

	
	
function DigDownAndForward()			--The function for diging in the first 2 dimensions when forwardLine >= 3
	for down2 =  1, downLine do	--Makes the holes as deep as requested
		if Y < 6 then
			break
		end
			turtle.digDown()
			TDown()
			turtle.dig()
				Y = Y - 1
		end		--down2 =  1, downLine
			
			
	turtle.dig()
	TForward()
	turtle.dig()
	TForward()
	turtle.dig()
		
		while Y ~= SurY do
			turtle.digUp()
			TUp()
			turtle.dig()
			Y = Y + 1
		end

			TForward()
				--if tempFW == 1 or tempFW == 2 or tempFW == 3 then			--THIS LINE IS TESTING 20:42
	--			TForward()				--22:25
				--end
			
			
			tempFW = tempFW - 4
end	--of function "DigDownAndForward"

function TForward()		--A function that makes the turtle get rid of obstacles when it's tome to move
	while not turtle.forward() do
		turtle.dig()
		turtle.attack()
	end
end

function TUp()
	while not turtle.up() do
		turtle.digUp()
		turtle.attackUp()
	end
end

function TDown()
	while not turtle.down() do
		turtle.digDown()
		turtle.attackDown()
	end
end

function MainFun2d()			--The first two dimensions, put into a function for easier application
	tempFW = forwardLine
	for Down = 1, forwardLine, 4 do --Makes the turtle dig as many holes forward as requested
	HRD = false
		if tempFW == 3 and HRD == false then
			print("ALT3")
			for down2 =  1, downLine do	--Makes the holes as deep as requested
					if Y < 6 then
						break
					end			--end of if Y < 6
				turtle.digDown()
				TDown()
				turtle.dig()
					Y = Y - 1
			end			--temp = 1, 1 
			
				turtle.dig()
				TForward()
				turtle.dig()
				TForward()
					X = X + 3
				
			while Y ~= SurY do		--Makes the program run until the turtle is back at starting level. "Y" is the y-level of the turtle, "SurY" is the y-level the turtle started on
				turtle.digUp()
				TUp()
				Y = Y + 1
				
				
				
			end
			
			
		
			HRD = true
		--	forwardLine = 0
		else
			if tempFW == 2 and HRD == false then
				print("ALT2")
				for down2 = 1, downLine do
					if Y < 6 then
						break
					end
				turtle.digDown()
				TDown()
				turtle.dig()
					Y = Y - 1
				end			--end of if Y < 6
				
				turtle.dig()
				TForward()
					X = X + 2
				
				while Y ~= SurY do
					TUp()
					Y = Y + 1
				end
		
			--TForward()
		
			else
			
			if tempFW == 1 and HRD == false then
				print("ALT1")
				TForward()
					X = X + 1
			for down2 = 1, downLine do
					if Y < 6 then
						break
					end
				turtle.digDown()
				TDown()
				
					Y = Y - 1
				end			--end of if Y < 6
				
	--			X = X + 2					--troligen inte
				
				while Y ~= SurY do
				TUp()
				Y = Y + 1
				end
				
				
			else
		
			if HRD == false then
			print("ALT4")
			DigDownAndForward()
			EXP = true
			
	
			
			if tempFW == 2 and EXP == true then
			print("EXP2")
			TForward()
				EXP = false--13:33
			end
			if tempFW == 3 and EXP == true then
			print("EXP3")
			TForward()
				EXP = false--13:33
			end
			if tempFW == 4 and EXP == true then
			print("EXP4")
			TForward()
				EXP = false
			end
				
			if tempFW > 4 and EXP == true then
			TForward()
			print("ExpInf")
			end
			
			X = X + 4
			print(tempFW)
			HRD = true
			end
			
		end		--closes if tempFW == 1
		
			
			
end			--closes if tempFW == 2

end		--closes if tempFW == 3
end		--end of for down = 1, forwardLine
	if not forwardLine == X then
		TForward()
	end
end		--closes function

	
if peripheral.getType("right") == "modem" then	--Check if the turtle is able to retrive gps signals. If it is able to set Y from that, else set Y manally
	rednet.open("right")
	if gps.locate() then
	cx, cy, cz = gps.locate()
	rednet.close("right")
		Y = cy
		print("Y cordinate: " .. Y .. "\nIs this correct?")
			local YesNo = nil	--resets YesNo
			while YesNo ~= "yes" and YesNo ~= "no" do
				local YesNo = read()
					if YesNo == "yes" then	
						print("Y cordinate set to " .. Y)
						break
					end
					if YesNo == "no" then		--If the Y goten from GPS is wrong, here is an owerride
						print("Please enter Y manually: ")
						Y = read()
						break
					end
					if YesNo ~= "yes" and YesNo ~= "no" then
						print("please answer yes or no")
					end
			end
		else			--If no gps is presented, go to enter manually
			rednet.close("right")
			print("what is your Y cordinate? ")
			Y = read()
	end
else			--If no gps is presented, go to enter manually
print("what is your Y cordinate? ")
Y = read()
end

while not tonumber(Y) do
	print("please enter a number.")
	Y = read()
end
print("Y set to: " .. Y)
Y = Y + 0


SurY = Y		--sets the level of the surface (SurY = surface Y)
tempFW = forwardLine --A variable to make it so it can dig thing thing not divadable by 4
tempLeft = sideLine
	
			--THIS IS THE START OF THE ACTUAL PROGRAM (I think)
		
	print(tempFW)
	altSwitch = 1
	for Left = 1, sideLine, 2 do	--makes the turtle go as many rows (Z) as wanted
	HRL = false
		X = 0
		
		if tempLeft == 1 and HRL == false then
			goBackHere = false
			
			print("turnLeft1")
			MainFun2d()
				turtle.turnRight()
				turtle.turnRight()
				HRL = true
				while X > 0 do
					TForward()
					X = X - 1
				end
					turtle.turnLeft()
				
		else
			if HRL == false then
				goBackHere = true
				print("turnLeft2")
				MainFun2d()
				turtle.turnRight()
				TForward()
					Z = Z + 1
				turtle.turnRight()
				MainFun2d()
				tempLeft = tempLeft- 2
				HRL = true
								--HERE!		--23:35
					if Z == sideLine - 1 then
				FinRet = true		--This will be the final return
					else
				NoRet = true		--It shouldn't return now
					end
				
				end 
		end	--if tempLeft == 1 and HRL == false
		
		if turtle.getItemCount(2) > 1 and goBackHere == true then		--makes the turtle deposit items when it's filled ut during runtime, to then return and finnish its work
		
		print("Middlebreak")
			print("Z: " .. Z)
		
		tempZ = Z
			
		--	TForward()
			turtle.turnRight()
			
			
			--	turtle.turnRight()
				--turtle.turnRight()
				--TForward()
				--turtle.turnRight()
				
			while Z > 1 do
				TForward()
				Z = Z - 1
			turtle.turnLeft()		
				
			end
				for drop = 1, 15 do
						turtle.select(drop)
						turtle.drop(64)
				end
				turtle.select(1)
		--turtle.turnRight()
		--turtle.turnRight()
		turtle.turnLeft()
		while Z ~= tempZ + 1 do
			TForward()
			Z = Z + 1
		end		--while Z ~= tempZ + 1
		--	if not Z == sideLine then					--15:35				
		turtle.turnLeft()							
		--TForward()						
		--end											--15:35
			NoRet = false
		end	--if turtle.getItemCount(9) and goBackHere == false 
		
		if NoRet == true then			--22:45
			print("NoRet")
			turtle.turnLeft()
				TForward()			
				Z = Z + 1
				turtle.turnLeft()
				--TForward()
			NoRet = false
		end
		
		if FinRet == true then
		print("FinRet")
		turtle.forward()
		turtle.turnLeft()
		FinRet = false
		end
	end		--for Left = 1, sideLine, 2 do
	


--End of program, turtle should turn right, then go back to the chest one blocks behing where it started
	print("endtime")
	print("Z: " .. Z)
	turtle.turnRight()
	turtle.turnRight()
	while Z > 1 do
		TForward()
		Z = Z - 1
			
			end
			for drop = 1, 15 do
				turtle.select(drop)
				turtle.drop(64)
		
	end
	turtle.select(1)




--TODO!
	--The width need to be coded
	--remove all testprint commands
	--Make the program only run if fuel and inventory space is present

--BUGS!
	--Runs forward twice

