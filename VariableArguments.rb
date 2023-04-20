def full_name1(firstName, *etc) 
    puts etc.reduce(firstName){ |f, e|  f << " " << e }
end

def full_name(first_name, *middle_names, last_name)
    full_name = ''
    full_name += first_name
    middle_names.each do |name|
       full_name += " "
       full_name += name
    end
    
    full_name += " "
    full_name += last_name
end 

puts full_name('Harsha', 'Bhogle')
puts full_name('Pradeep', 'Suresh', 'Satyanarayana')
puts full_name('Horc', 'G.', 'M.', 'Moon')