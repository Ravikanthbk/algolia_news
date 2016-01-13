# -*- encoding : utf-8 -*-
require 'json'
class DataHelper
  class << self
    def test_data
      '{"hits":[{"created_at":"2015-09-11T14:58:44.000Z","title":"Show HN: Make a programmable mirror","url":"https://github.com/HannahMitt/HomeMirror","author":"hannahmitt","points":1172,"story_text":null,"comment_text":null,"num_comments":136,"story_id":null,"story_title":null,"story_url":null,"parent_id":null,"created_at_i":1441983524,"_tags":["story","author_hannahmitt","story_10204018","show_hn"],"objectID":"10204018","_highlightResult":{"title":{"value":"Show HN: Make a programmable mirror","matchLevel":"none","matchedWords":[]},"url":{"value":"https://\u003Cem\u003Egithub\u003C/em\u003E.com/HannahMitt/HomeMirror","matchLevel":"full","matchedWords":["github"]},"author":{"value":"hannahmitt","matchLevel":"none","matchedWords":[]}}}],"nbHits":10,"page":0,"nbPages":1,"hitsPerPage":20,"processingTimeMS":10,"query":"github","params":"advancedSyntax=true\u0026analytics=false\u0026numericFilters=points%3E%3D1000\u0026query=github\u0026restrictSearchableAttributes=url"}'
    end
  end
end