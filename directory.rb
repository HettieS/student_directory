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

# we print the list of names
puts "The students of Christmas Academy"
puts "--------------------"

students.each do |student|
    puts student
end

# then we print the total students
puts "Overall we have #{students.count} great students."