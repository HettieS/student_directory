require 'byebug'

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
    puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort), likes #{student[:hobbies]}."
    end
end

def print_names_beginning_b(students)
    students.each.with_index(1) do |(student), index|
        if student[:name].start_with?("B")
        puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
        end
    end
end

def print_names_less_than_12_characters(students)
    students.each.with_index(1) do |(student), index|
        if student[:name].length<12
        puts "#{index}. #{student[:name]} (#{student[:cohort]} cohort)"
        end
    end
end

def print_names_using_while(students)
    index = 0
    while index < students.length
        puts "#{index+1}. #{students[index][:name]} (#{students[index][:cohort]} cohort)"
        index += 1
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

def add_hobbies(students)
    students.each do | student |
        student.store(:hobbies, :tennis)
    end
end

# {a.store('e', 67)}
# take each student that is inputted into the array
# add a hard coded hobby onto each studentin the array


students = input_students
add_hobbies(students)
print_header
# print_names_using_while(students)
print(students)
print_footer(students)