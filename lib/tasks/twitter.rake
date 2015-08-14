namespace :twitter do
  desc 'Scrape Twitter for latest tweets of GOP candidates'
  task gop: :environment do

    Tweet.destroy_all

    puts 'Scraping Twitter...'

    Candidate.all.each do |candidate|
      $twitter.user_timeline(candidate.twitter_name, {count: 200, include_rts: false}).each do |tweet|
        Tweet.create(candidate_id: candidate.id, posted_time: tweet.created_at, text: tweet.text)
      end
    end

    puts 'Finished.'

  end
end
