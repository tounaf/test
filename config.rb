require'twitter'
client = Twitter::REST::Client.new do |config|
    config.consumer_key          = " "
    config.consumer_secret       = " "
    config.access_token          =""
    config.access_token_secret   =""
end
p client
client.update("salut word !c'est mon premier tweet via console")
client.follow('NrjMeyer')
client.follow('tinosam')
#client.follow("AndryHajanirina")
=begin
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