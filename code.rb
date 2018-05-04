menu = {
  "hamburger" => 400,
  "hot dog" => 300,
  "fries" => 200,
  "chips" => 100,
  "water" => 125,
  "soda" => 150
}

items_not_found = nil
items_split = []
calcul = 0
while items_not_found.nil? || items_not_found.empty?
  hangryburger = true
  while hangryburger
    puts "Welcome to hangryburger. What would you like today\nplease type done to stop"
    print "> "
    user_input_order = gets.chomp.downcase
    if user_input_order == "done"
      hangryburger = false
    end
    items_split = user_input_order.split(",")
      items_not_found = items_split - menu.keys

      if !items_not_found.empty?
        items_not_found.each do |item|
          next if item == "done"
          puts "Sorry! We don't have '#{item}' on the menu."
        end
      end
    items_split = user_input_order.split(",")
    items_split.each do |user_order|
      if menu[user_order].nil?
        menu[user_order] = 0
      end
    calcul += menu[user_order]
    end
  end
end
puts "Thank you for stopping by, your total is $#{'%.2f' % (calcul / 100.to_f)}"
