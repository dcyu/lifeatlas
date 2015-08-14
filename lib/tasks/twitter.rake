namespace :twitter do
  desc 'Scrape Twitter for latest tweets of GOP candidates'
  task gop: :environment do

    puts 'Scraping Twitter...'

    Candidate.all.each do |candidate|
      $twitter.user_timeline(candidate.twitter_name, {count: 100, include_rts: false}).each do |tweet|
        Tweet.create(candidate_id: candidate.id, posted_time: tweet.created_at, text: tweet.text, tweet_id: tweet.id.to_s)
      end
    end

    puts 'Finished.'

  end
end
