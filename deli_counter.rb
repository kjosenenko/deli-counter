def line(customers)
    katz_deli = []
    customers.each_with_index do |customer, index|
        katz_deli.push("#{index+1}. #{customer}")
    end
    if katz_deli.length > 0
        puts "The line is currently: " + katz_deli.join(" ")
    else
        puts "The line is currently empty."
    end
end

def take_a_number(customers, name)
    customers.push(name)
    place = customers.index(name) 
    puts "Welcome, #{name}. You are number #{place+1} in line."
end

def now_serving(customers)
    if customers.length > 0
        next_customer = customers.shift
        puts "Currently serving #{next_customer}."
    else
        puts "There is nobody waiting to be served!"
    end
end
