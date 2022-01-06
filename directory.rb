students = [
    {name: "Santa Klaus", cohort: :november}, 
    {name: "Mrs Klaus", cohort: :november},    
    {name: "Rudolf", cohort: :november},    
    {name: "Dancer", cohort: :november},    
    {name: "Prancer", cohort: :november},    
    {name: "Donner", cohort: :november},    
    {name: "Blitzen", cohort: :november},    
    {name: "Buddy the elf", cohort: :november}
]

def print_header
    puts "The students of Christmas Academy"
    puts "--------------------"
end

def print(students)
    students.each.with_index(1) do |(student), index|
        puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
    end
end

def print_footer(students)
    puts "Overall we have #{students.count} great students."
end

def input_students
    puts "Please enter the names of the students"
    puts "To finish, hit enter twice"
    students = []
    name = gets.chomp
    while !name.empty? do
        students << {name: name, cohort: :november}
        puts "Now we have #{students.count} students."
        name = gets.chomp
    end
    students
end

students = input_students
print_header
print(students)
print_footer(students)