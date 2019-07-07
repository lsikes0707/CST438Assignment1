# Lacey Sikes
# CST 438 Assignment 1
# June 29th, 2019
class CountLetters 
  # define an instance variable containing empty hash with key being the letter
  #  and value being the count of occurrences of the letter
  #  use Hash.new(0) to create empty hash table
  def initialize()
    @counts = Hash.new(0)
  end 
  
  # accessor for the hash
  def counts
     @counts
  end
  

  # given a filename, read the file and for each letter update the hash table
  # after analyzeFile: hash should read { "A" => 1, "B" => 4, "C" => 2, "D" => 1, "K" => 1 }
  def analyzeFile(file)
   IO.foreach(file) do |m|
    m.chomp!     # remove trailing \n
    @counts[m] += 1 
  end
  end  
  
  # return an array of lists  
  # [ [letter, count], [letter, count], ... [letter, count] ]
  #  Only letters with count >0 are returned.
  #  Array is in decreasing order by count.
  def sortByCountDecreasing
    @counts.sort_by { |k,v| v }.reverse
  end
  
  # return an array  [  string, count ]
  #  string is the letter or letters that occur the most
  #  count of occurrences
  def highestfrequency
    #@counts.group_by { |x| x }.map { |element, matches| [ element, matches ] }.to_h
    #@counts.each_with_object({}) { |item, memo| memo[item] ||= 0; memo[item] += 1 }
    ##@counts.uniq.map { |x| [x, @counts.count(x)] }.to_h
    #freq = @counts.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    @counts.max_by { |k,v| v }
  end
  
  # return array of length 11. Each element  is [letter, count].  
  # [ ["A", count], ["B", count], ... , ["K", count] ] 
  # array is in order by letters
  def sortByLetter
     @counts.sort_by { |v| v }
  end
  
end