class VideoResource < JSONAPI::Resource
  attributes :rtmp_uri

  has_many :sources, acts_as_set: true
  has_one :streamable, polymorphic: true
end
