class Video < ApplicationRecord
  belongs_to :streamable, polymorphic: true
  has_many :sources
end
