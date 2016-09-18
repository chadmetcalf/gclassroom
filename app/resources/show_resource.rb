class ShowResource < JSONAPI::Resource
  attributes :title
  has_many :episodes
  has_many :videos
end
