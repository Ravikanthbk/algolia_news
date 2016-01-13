require_relative '../../lib/services/algolia/algolia_service.rb'
class NewsController < ApplicationController
#require 'services/algolia/v1/algolia_service'
  def index
    search_news_list = V1::Algolia.new('v1').service
    @news = Kaminari.paginate_array(search_news_list["hits"], total_count: total_news_count(search_news_list)).page(params[:page]).per(5)
  end
  
  private
  def total_news_count(news)
    news["nbPages"] <= 1 ? news["hitsPerPage"] : (news["nbPages"]-1)*news["hitsPerPage"]
  end  
end
