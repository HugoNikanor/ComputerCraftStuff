--PassTest

--BUGS!
	
	--A program that looks the computerCraft computer until an password is entered
	local password = i
	local WrongCode = 0
	PassCode = {...}	--This sets the password to what's entered at runtime
	
		if not PassCode[1] then --This brings an error message and terminates the program if a Password is not set
			error("Please enter a password at runtime in the form:\nPassTest PASSWORD")
		end
		
		term.clear()
		term.setCursorPos(1, 1)
		print("Password set, \nPassword: " .. PassCode[1] .. "\nPress Any Key To Continue.")
			os.pullEvent("key")			--Standard command that waits for the user to "press any key"
			os.sleep(0.1)				--Makes it so that the "any" key doesn't type to
	
while password ~= PassCode[1] do	--This is what keeps the lock until the correct password is entered
	term.clear()
	term.setCursorPos(1,1)
	write("Enter password: ")
	password = read("*")
		if password == PassCode[1] then break end
	WrongCode = WrongCode + 1 --A counter that counts how many times you have entered the wrong password
		if WrongCode > 4 then --If you have had wrong more than 4 times (5 times) Following triggers
			numb = 5			--An extra number, used for the counter how many secounds remains until you can try again
			while numb > 0 do	
				term.clear()
				term.setCursorPos(1,1)
				print("Wrong password entered, please wait " .. numb .. " secounds")
				numb = numb - 1
				os.sleep(1)
					WrongCode = 0
			end
		end		
			if password ~= PassCode[1] then
			term.clear()
			term.setCursorPos(1,1)
				if WrongCode ~= 0 then
					print("Wrong password")
					os.sleep(1)
				end
			end
end
		
		term.clear()
		term.setCursorPos(1,1)
	print("Correct password entered!")
print(PassCode[1])
		os.sleep(1)
		term.clear()
		term.setCursorPos(1,1)
PassCode = 0
