def greeting
	names_array = ARGV[1..-1]
	greet = ARGV[0]
	names_array.each do |name|
		puts "#{greet}, #{name}!"
	end

end
greeting
