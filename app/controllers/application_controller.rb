require './config/environment'
require '.app/models/tweet'
#classesare App factories, and they pump out 
#new instances of our App whenever users want it 
class ApplicationController < Sinatra::Base 
    #< Sinatra;;Base means inherits from Sinatra Base
    #it's like our foundation for a house
    #We don't 
    
    configure do
       set :public_folder, 'public'
       set :views, 'app/views'
    end
    
    get '/' do
        Tweet.new("shakir-shakira", "My hips don't lie,breh")
        Tweet.new("Josue_Bravo", "Coding is life #nercity #computers_are_my_best_friend")
        Tweet.new("Jesus", "I'm coming back baby. #thatseconding")
        @tweets = Tweet.all
        erb :index
    end

end 