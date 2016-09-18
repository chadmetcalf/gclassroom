class SourceResource < JSONAPI::Resource
  attributes :uri, :media_type
  has_one :video
  has_one :streamable, polymorphic: true
end
