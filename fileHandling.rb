# First Method

# File.open("./ruby.txt","r") do |f|
    # puts f.read().include?"Ajay"
    # puts f.readline()
    # puts f.readchar()
    # puts f.readlines()[2]
#     for line in f.readlines()
#         puts line
#     end
# end

# Another Method
# f = File.open("./ruby.txt","r")

# puts f.readlines()

# f.close()

File.open("./index.html","w") do |f|
    f.write("<h1>index.html file created</h1>")
end