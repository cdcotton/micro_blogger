require 'jumpstart_auth'

class MicroBlogger
  attr_reader :client

  def initialize
    puts 'Initializing...'
    @client = JumpstartAuth.twitter
  end

  def tweet(message)
    if message.length <= 140
      @client.update(message)
    else
      puts 'Tweet must be no more than 140 characters.'
    end
  end
end

blogger = MicroBlogger.new
test = "".ljust(140, "abcd")
blogger.tweet(test)
blogger.tweet(test << '1')
