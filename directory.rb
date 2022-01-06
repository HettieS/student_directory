students = [
    "Santa Klaus", 
    "Mrs Klaus",
    "Rudolf",
    "Dancer",
    "Prancer",
    "Donner",
    "Blitzen",
    "Buddy the elf"
]

def print_header
    puts "The students of Christmas Academy"
    puts "--------------------"
end

def print(names)
    names.each do |name|
        puts name
    end
end

def print_footer(names)
    puts "Overall we have #{names.count} great students."
end

print_header
print(students)
print_footer(students)