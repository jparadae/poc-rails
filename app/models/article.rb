class Article < ApplicationRecord
    #utils actions_text
    has_rich_text :content
end
