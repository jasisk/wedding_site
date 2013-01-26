require 'sinatra'

DEFALT_BRIDE = {:firstname => "Rachel", :lastname => "Zettel"}

get '/' do
  @page_title = set_title('Home')

  erb :index
end

get '/our_story' do
  @page_title = set_title('Our Story')

  erb :our_story
end

get '/wedding_party' do
  @page_title = set_title('Wedding Party')

  erb :wedding_party
end

get '/registry' do
  @page_title = set_title('Registry')

  erb :registry
end

get '/schedule' do
  @page_title = set_title('Schedule')

  erb :schedule
end

get '/travel' do
  @page_title = set_title('Travel')

  erb :travel
end

get '/rsvp' do
  @page_title = set_title('RSVP')

  erb :rsvp
end

###########

def set_title(page_name)
  "Macasek + #{current_bride_lastname} Wedding - #{page_name}"
end

helpers do

  def current_bride_firstname
    @current_bride_firstname = params[:bride_firstname] || DEFALT_BRIDE[:firstname]
  end

  def current_bride_lastname
    @current_bride_lastname = params[:bride_lastname] || DEFALT_BRIDE[:lastname]
  end
end