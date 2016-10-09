class Tweets

  def initialize(filename)
    @tweets = []
    File.foreach(filename) do |line|
      columns = line.split(',').map {|c| c[1..-2]}
      columns[3].nil? or columns[5].nil? or @tweets.push({:date => columns[3] , :tweet => columns[5]})
    end
  end

  def tweets
    @tweets.map {|t| t[:tweet]}
  end

end
