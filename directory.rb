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
    students.each do |student|
        puts "#{student[:name]} (#{student[:cohort]} cohort)"
    end
end

def print_footer(students)
    puts "Overall we have #{students.count} great students."
end

print_header
print(students)
print_footer(students)