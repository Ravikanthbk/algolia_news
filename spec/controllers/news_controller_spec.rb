
require 'spec_helper'
require 'rails_helper'
require_relative '../data_helper/data_helper'
describe NewsController do
  before do
    @response = DataHelper.test_data
  end
  context 'GET #index' do
    it 'should search for news' do
      stub_request(:get, "http://hn.algolia.com/api/v1/search_by_date?numericFilters=points%3E=1000&query=github&restrictSearchableAttributes=url").
        with(:headers => {'Accept'=>'*/*; q=0.5, application/xml', 'Accept-Encoding'=>'gzip, deflate', 'User-Agent'=>'Ruby'}).
        to_return(:status => 200, :body => @response, :headers => {})

      search_news_list = V1::Algolia.new('v1').service
      expect(search_news_list["nbHits"]).to eq(10)
      expect(search_news_list["page"]).to eq(0)
    end
  end
end
