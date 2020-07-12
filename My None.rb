My None
def my_none?(args = nil)
  puts "Hello"
  if block_given?
    my_each do |element|
      return true if yield(element) == false
    end
  elsif !block_given?
    return true
  elsif args.nil?
    my_each do |i|
      return false if i.nil?
    end
  elsif args.nil? && (args.is_a? Class)
    return false
  elsif !args.nil? && (args.is_a? Class)
    return true
  elsif Regexp
    my_each do |i|
      return true if args.match(!i)
    end
  end
  true
end


check = false
    my_each do |i|
      if yield(i) == true
        check = false
        return check
      else
        check = true
        return check
      end
    end
    check