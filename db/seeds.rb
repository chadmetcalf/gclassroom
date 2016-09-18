# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


show = Show.new(title: 'The West Wing')
episode = show.episodes.build(title: 'Isaac and Ishmael')
video = episode.build_video(rtmp_uri: 'rtmp://s36czds4wnlgbt.cloudfront.net/cfx/st')
video.sources.build(uri: 'https://d2dij7i6ftvu61.cloudfront.net/WestWingS3E1.webm', media_type: 'video/webm')
show.save
