
require 'sinatra'
require 'sinatra/reloader' if development?
require 'haml'
require 'sass'

module Pistols
  class Application < Sinatra::Base
    set :public,  File.join(File.dirname(__FILE__), 'public')
    set :views,   File.join(File.dirname(__FILE__), 'app')

    configure :development do
      register Sinatra::Reloader
    end

    get '/stylesheets/:name.css' do
      scss :"stylesheets/#{params[:name]}"
    end

    get '/' do
      @page = 'home'
      haml :"index", :layout => :"/layouts/layout"
    end

  end
end

