local args = {...}

local file = fs.open(args[1],"r")

print(file.readAll());
