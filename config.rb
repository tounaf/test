Bad Authentication data
client = Twitter::REST::Client.new do |config|
    config.consumer_key        = " ado3jjwM9PoAtGc8dKIQ8rR7C"
    config.consumer_secret     = " wSsUexaX7KlmIvTjs0EcSlnUlWUHsucUS4og01tYmn7GBtEoB2"
    config.access_token        =" 944632994496700418-2gwr4LwBAQbkJ8RN5zT4Mc70a0gNpfJ"
    config.access_token_secret ="jWVe50IGnnvgcJ7uL8mHzY0Ewhngzf2cFvEBD9mRNr45M"

client.update("salut word")


