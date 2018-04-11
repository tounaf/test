Bad Authentication data
client = Twitter::REST::Client.new do |config|
    config.consumer_key        = " ado3jjwM9PoAtGc8dKIQ8rR7C"
    config.consumer_secret     = " wSsUexaX7KlmIvTjs0EcSlnUlWUHsucUS4og01tYmn7GBtEoB2"
    config.access_token        =" 944632994496700418-2gwr4LwBAQbkJ8RN5zT4Mc70a0gNpfJ"
    config.access_token_secret ="jWVe50IGnnvgcJ7uL8mHzY0Ewhngzf2cFvEBD9mRNr45M"

client.update("salut word")


def collect_with_max_id(collection=[], max_id=nil, &block)
    response = block.call(max_id)
    collection += response
    response.empty? ? collection.flatten : collect_with_max_id(collection, response.last.id - 1, &block)
  end
  
  def client.get_all_tweets(user)
    collect_with_max_id do |max_id|
      options = {count: 50, include_rts: true}
      options[:max_id] = max_id unless max_id.nil?
      user_timeline(user, options)
    end
  end
  
  recent_tweets = client.get_all_tweets("wjoba")


  recent_tweets.each do |tweet|
	puts tweet.full_text
end