class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    @resp = Faraday.get 'https://api.github.com/search/repositories' do |req|
    req.params['client_id'] = 'Iv1.84bad2a8c2101153'
    req.params['client_secret'] = 'f87cf4ba5c1bb333ff649aa545d427e24432dc1e'
    req.params['q'] = params[:query]
    end
    body = JSON.parse(@resp.body)
     if @resp.success?
       @repositories = body["items"]
     else
       @error = body["message"]
     end
     render 'search'
  
  end
end
