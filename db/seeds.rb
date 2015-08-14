# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
Candidate.create(name: 'Donald Trump', twitter_name: 'realDonaldTrump')
Candidate.create(name: 'Scott Walker', twitter_name: 'ScottWalker')
Candidate.create(name: 'Ben Carson', twitter_name: 'RealBenCarson')
Candidate.create(name: 'Jeb Bush', twitter_name: 'JebBush')
Candidate.create(name: 'Ted Cruz', twitter_name: 'tedcruz')
Candidate.create(name: 'Marco Rubio', twitter_name: 'marcorubio')
Candidate.create(name: 'Carly Fiorina', twitter_name: 'CarlyFiorina')
Candidate.create(name: 'Mike Huckabee', twitter_name: 'GovMikeHuckabee')
Candidate.create(name: 'Rand Paul', twitter_name: 'RandPaul')
Candidate.create(name: 'John Kasich', twitter_name: 'JohnKasich')

client = $twitter

Tweet.destroy_all

def collect_with_max_id(collection=[], max_id=nil, &block)
  response = yield(max_id)
  collection += response
  response.empty? ? collection.flatten : collect_with_max_id(collection, response.last.id - 1, &block)
end

def client.get_all_tweets(user)
  collect_with_max_id do |max_id|
    options = {count: 200, include_rts: false}
    options[:max_id] = max_id unless max_id.nil?
    user_timeline(user, options)
  end
end

Candidate.all.each do |candidate|
  client.get_all_tweets(candidate.twitter_name).each do |tweet|
    Tweet.create(candidate_id: candidate.id, posted_time: tweet.created_at, text: tweet.text, tweet_id: tweet.id.to_s)
  end
end


