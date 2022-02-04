# def example

def max(num1, num2, num3)
    if (num1 >= num2 and num1 >= num3)
        return num1
    elsif (num2 >= num1 and num2 >= num3)
        return num2
    elsif (num3 >= num2 and num3 >= num1)
        return num3
    else
        puts"All numbers are equal"
    end
    
end
# max(1, 2, 3)

# calculator
def calculator
    puts"Enter first number: "
    num1 = gets.chomp().to_f
    puts"Enter operator: "
    op = gets.chomp()
    puts"Enter second number: "
    num2 = gets.chomp().to_f
    if op == '+'
        puts (num1 + num2)
    elsif op == '-'
        puts(num1 - num2)
    elsif op == '*'
        puts(num1 * num2)
    elsif op == '/'
        puts(num1/num2)
    else
        puts "Not valid operator"
    end
end
# calculator()

# case expressions
def getDatName()
    puts"Enter day(sun/mon/tues/wed/thurs/fri/sat)"
    day = gets.chomp()
    dayName = ""
    case day
    when "mon"
        dayName = "Monday"
    when "tues"
        dayName = "Tuesday"
    when "wed"
        dayName = "Wednesday"
    when "thurs"
        dayName = "Thursday"
    when "fri"
        dayName = "Friday"
    when "sat"
        dayName = "Saturday"
    when "sun"
        dayName = "Sunday"
    else
        puts"Not Valid input"
        return 
    end
    puts ("Day: " + dayName) 
end
# getDatName()

# While Loops

# Guessing Game

def guessingGame
    puts"Enter word: "
    secretWord = gets.chomp()
    guess = ""
    guess_count = 0
    guess_limit = 3
    out_of_guessess = false
    while (guess != secretWord and !out_of_guessess)
        if (guess_count < guess_limit)
            puts ((guess_limit - guess_count).to_s+ " guessess left")
            puts "Enter guess: "
            guess = gets.chomp()
            guess_count += 1
        else
            out_of_guessess = true
        end
    end
    if (out_of_guessess)
        puts "Ohhh😔!!! You lost!"
    else
        puts"Congrats🎉!!! You won!"
    end
end
# guessingGame()


# For loops
# Normal syntax
# puts "Normal Syntax"
# friends = Array["Ajay","Shubham","Omkar","Yashodhan","Abhimanyu"]
# for friend in friends
#     puts ((friend))
# end
# Different Syntax
# puts "Different syntax"
# friends.each do |friend|
#     puts friend
# end
# puts "Country and States"
# country = ["Maharashtra","Karnataka","Tamilnadu","Chennai","Gujrat"]
# puts "*****"
# for index in 0..5
#     puts index
# end
# puts "*****"
# another syntax to iterate for perticular number of times
# 10.times do |num|
#     puts num
# end
# country.each do |state|
#     puts state

# Power of number
def pow
    puts "Enter base number: "
    base_num = gets.chomp().to_i
    puts "Enter power number: "
    pow_num = gets.chomp().to_i
    result = 1
    pow_num.times do |num|
        result = result * base_num
    end
    return "Result : "+result.to_s
end
# puts(pow())


# error handling

# Syntax
# begin
#     num = 10/0
#     puts num
# rescue 
#     puts "Devision y 0 error"
# end


# Classes and Objects

class Book
    attr_accessor :title, :pages, :auther
    def initialize(title, pages, auther)
        @title = title
        @pages = pages
        @auther = auther
    end
end

# book1 = Book.new("Radhey", 450, "Bhagwan Shri Krishna")
# book2 = Book.new("Mrutyunjay", 723, "The great Karn")

# puts "Book 1 Details"
# puts ("Book name:  #{book2.title}" + "\nBook pages: #{book2.pages.to_s}" + "\nBook auther: #{book2.auther}")
# puts "Book 2 Details"
# puts ("Book name:  #{book1.title}" + "\nBook pages: #{book1.pages.to_s}" + "\nBook auther: #{book1.auther}")

# OOP

class Language
    attr_accessor :lang_name, :topic_name
    # class variable (symbol : @@)
    @@count = 0
    $name = "Shri Ganesha" #Global variable name represented by $
    def initialize(lang_name,topic_name)
        @lang_name = lang_name
        @topic_name = topic_name
        @@count += 1
    end
    def returnName
        return @lang_name
    end
    def returnTopic
        return @topic_name
    end
    # returning class variable
    def returnCount
        return @@count
    end
end
# obj_name = Language.new("Python","DSA")
# puts "**********"
# puts obj_name.returnName()
# puts obj_name.returnTopic()
# puts $name # use of global variable
# puts obj_name.returnCount()


# attr_reader, attr_writer, attr_accessor

class Language
    attr_reader :lang_name
    attr_reader :topic_name
    attr_reader :topic_name
    def initialize(lang_name,topic_name)
        @lang_name = lang_name
        @topic_name = topic_name
    end
end
# obj = Language.new("Ruby","Array")
# printing the lang_name, topic_name
# puts obj.lang_name
# puts obj.topic_name
# changing the topic name to string
# obj.topic_name = "String"
# puts obj.topic_name


###### Buildig a Quiz game
# puts "-------QUIZ GAME-------"
class Question
    attr_accessor :prompt, :answer
    def initialize(prompt,answer)
        @prompt = prompt
        @answer = answer
    end
end
p1 = "What color are apples?\na)Red\nb)Purple\nc)Orange"
p2 = "What color are bananas?\na)Pink\nb)Red\nc)Yellow"
p3 = "What color are pears?\na)Yellow\nb)Green\nc)Orange"

questions = [
    Question.new(p1,"a"),
    Question.new(p2,"c"),
    Question.new(p3,"b")
]

def run_test(questions)
    answer = ""
    score = 0
    questions.each do |question|
        puts question.prompt
        answer = gets.chomp()
        if answer == question.answer
            score += 1
        end
    end
    puts ("You got #{score.to_s}/#{questions.length()}")
end
# run_test(questions)


# Inheritance
class Chef
    def make_paneer
        puts "The chef makes paneer"
    end
    def make_salad
        puts "The chef makes salad"
    end
    def make_specia_dish
        puts "The chef makes special dish"
    end
end

class ItalianChef < Chef
    def make_specia_dish
        puts "The chef makes italian dish"
    end
end

class IndianChef < Chef
    def make_salad
        puts "The chef makes Burger"
    end
    def make_specia_dish
        puts "The chef makes Puran Poli"
    end
end

chef = Chef.new()
chef.make_specia_dish

italian_chef = ItalianChef.new()
italian_chef.make_specia_dish

indian_chef = IndianChef.new()
indian_chef.make_specia_dish
indian_chef.make_salad