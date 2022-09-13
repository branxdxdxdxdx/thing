local SCRIPT = [[Script here]]

local Characters = {
    "A", "a",
    "B", "b",
    "C", "c",
    "D", "d",
    "E", "e",
    "F", "f",
    "G", "g",
    "H", "h",
    "I", "i",
    "J", "j",
    "K", "k",
    "L", "l",
    "M", "m",
    "N", "n",
    "O", "o",
    "P", "p",
    "Q", "q",
    "R", "r",
    "S", "s",
    "T", "t",
    "U", "u",
    "V", "v",
    "W", "w",
    "X", "x",
    "Y", "y",
    "Z", "z",
    "!", '"',
    "#", "$",
    "%", "&",
    "/", "(",
    ")", "=",
    "'", "?",
    "¿", "¡",
    "@", "´",
    "¨", "*",
    "[", "]",
    "`", "<",
    ">", "^",
    "+", "~",
    "-", "_",
    ".", ",",
    ":", ";",
    "\\"
}

local Encoded = {}

for K, V in next, Characters do
    Encoded[V:gsub(".", function(b) return "\\" .. b:byte() end) or V .. "\""] = V
end

local Dec = function(Script)
    for K, V in next, Encoded do
       Script = Script:gsub(K, V) 
    end
    return Script
end

local Dec1 = Dec(SCRIPT)

writefile("decoded".. math.random(1000).. ".txt", Dec1)
