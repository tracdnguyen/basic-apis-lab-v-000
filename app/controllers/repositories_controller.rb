class RepositoriesController < ApplicationController

  def search

  end

  def github_search
    @resp = Faraday.get 'https://api.foursquare.com/v2/venues/search' do |req|
    req.params['client_id'] = 'Iv1.84bad2a8c2101153'
    req.params['client_secret'] = 'f87cf4ba5c1bb333ff649aa545d427e24432dc1e'
    req.params['v'] = '20160201'
    req.params['near'] = params[:zipcode]
    req.params['query'] = 'coffee shop'

    end
  end
end
