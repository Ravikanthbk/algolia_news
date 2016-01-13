require 'rest-client'
module V1
  class Algolia
    def initialize(version)
      @v = version
    end
    
    # display version
    def version
      @v
    end

    # Get the list of search news
    def service
      begin
        res = RestClient.get("http://hn.algolia.com/api/v1/search_by_date?query=github&restrictSearchableAttributes=url&numericFilters=points>=1000")
        JSON.parse res
      rescue => e
        e.response
      end 
    end
  end
end

