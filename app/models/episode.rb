class Episode < ApplicationRecord
  belongs_to :show
  has_one :video, as: :streamable
  has_many :sources, through: :video
end


