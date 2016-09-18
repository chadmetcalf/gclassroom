class Source < ApplicationRecord
  belongs_to :video

  has_one :episode, through: :video, source: :taggable, source_type: 'Episode' 
end
