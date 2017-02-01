# just learned this way of doing it in the magic 8 ball video!

items = [
  "old paperback book",
  "potato",
  "red onion",
  "dried lemon",
  "frankincense",
  "medicinal herbs",
  "saffron",
  "glass spice jar",
  "red fabric",
  "orange fabric",
  "handicrafts",
  "small Persian rug",
  "medium Persian rug",
  "large Persian rug",
  "extra large Persian rug"
]

cart = []

puts "welcome to the online souq! before we get started, what is your name?"
name = gets.chomp

puts "\ngreetings, #{name}! here is our catalogue of available items\n\n"
puts "ONLINE SOUQ CATALOGUE 2017"
puts "=========================="

items.each {|thing| puts thing }

print "\nsee anything you like? \n(enter 'list' to see our catalogue again and " +
"'done' when you are ready to check out)\n#{name}|cart(#{cart.length})> "

thing = gets.chomp

ideas = []

while thing != "done"
  while (["list", "done"] + items).include?(thing) == false do
    ideas << thing
    print "\ni'm not finding that in our inventory. please check your request " +
    "carefully and try again. \n(enter 'list' to see our catalogue again and " +
    "'done' when you are ready to check out)\n#{name}|cart(#{cart.length})> "
    thing = gets.chomp
  end

  if items.include?(thing) == true
    cart << thing
    print "\ngot it! what else?\n#{name}|cart(#{cart.length})> "
    thing = gets.chomp
  elsif thing == "list"
    items.each {|thing| puts thing }
    print "\nsee anything you like? \n(enter 'list' to see our catalogue " +
    "again and 'done' when you are ready to check out)\n#{name}|" +
    "cart(#{cart.length})> "
    thing = gets.chomp
  else
    puts "wat?"
  end
end

if cart.length > 0
  puts "\nthank you for shopping, #{name}! here's your haul:"
  puts "\n#{name}'s cart"
  puts "---------"
  cart.each {|thing| puts "* #{thing}"}
elsif cart.length == 0
  puts "\nthanks for nothing!"
end

if ideas.length > 0
  puts "\nwhile you were shopping, we noticed you were interested in other items as well. we will alert you if the following items come in stock:\n\n"
  ideas.each {|thing| puts "* #{thing}"}
end
