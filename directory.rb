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
    index = 1
    while index <= students.length
        puts "#{index}. #{students[index-1][:name]} (#{students[index-1][:cohort]} cohort)"
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

# def add_hobbies(students)
#     attempt two
#     students << {hobbies: "tennis"}
    # attempt one
    # students.each do |(student), index|
    #     # student.store("hobbies", "tennis")
    #     students("hobbies") = "tennis"
    # end
#     students.each do |student|
#         print "#{student[:hobbies]}"
#     end
# end

students = input_students
# add_hobbies(students)
print_header
print_names_using_while(students)
# print(students)
print_footer(students)