class Spam
  
  
  def self.spammers(filename)
    spammers = IO.readlines(filename)
    spammers = spammers.collect { |spammer| spammer.downcase.strip }
    return spammers.compact
  end

end
