class Api::V1::NylotteryapiController < ApplicationController
    
   def index
        response = HTTParty.get('https://data.ny.gov/resource/6nbc-h7bj.json?$limit=10')
      
  #      puts response.body#, response.code, response.message, response.headers.inspect
       @nylotteryapi = response.body
        render json: @nylotteryapi, status: 200 
      
      end    
end    
      