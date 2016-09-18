class Movie < ApplicationRecord
  has_one :video, as: :streamable
end

