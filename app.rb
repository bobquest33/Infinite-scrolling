require 'json'
require 'sinatra'
require 'date'

#
# => HOMEPAGE
#
get '/' do
  send_file 'templates/homepage.html'
end

#
# => FEEDS
#
get '/feed.json/:page' do
  page = params[:page]
  
  content_type :json
    [{ :title => "test pge " + page, :date => Date.today.to_s, :image => '01.jpg', :description => 'Lorem ipsum dolor sit amet..' }, 
      { :title => "test pge " + page, :date => Date.today.to_s, :image => '02.jpg', :description => 'Lorem ipsum dolor sit amet..' }].to_json
end