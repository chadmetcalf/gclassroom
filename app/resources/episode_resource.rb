class EpisodeResource < JSONAPI::Resource
  attributes :title, :subtitle, :season_number, :episode_number, :aired_on, :written_by, :directed_by
  has_one :show
  has_one :video
end
