# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

michelle_phan = Creator.create(
  name: 'Michelle Phan',
  twitter: 'MichellePhan',
  instagram: 'michellephan',
  youtube_id: 'MichellePhan',
  bio: 'Just another old soul dreamer with childlike faith. Teaching and inspiring everyone to become their own best makeup artist :) So sit back, enjoy, and lets play with makeup!',
  avatar: 'michelle_phan.jpg',
  slug: 'michellephan'
)

michelle_phan_vids = Video.create([
  {
    name: 'The Golden Hour',
    youtube_id: 'CPj2QgxmUxw',
    creator: michelle_phan
  },
  {
    name: 'Gatsby 1920s Flapper Girl',
    youtube_id: 'JgwvvH3CzXc',
    creator: michelle_phan
  }
])

sona_gasparian = Creator.create(
  name: 'Sona Gasparian',
  twitter: 'simply_sona',
  instagram: 'simplysona',
  youtube_id: 'MakeupBySona',
  bio: 'My name is Sona Gasparian, I\'m a professional makeup artist turned Beauty and Fashion blogger/vlogger based in sunny Los Angeles!',
  avatar: 'michelle_phan.jpg',
  slug: 'makeupbysona'
)

sona_gasparian_vids = Video.create([
  {
    name: 'Golden Bronze Makeup Tutorial',
    youtube_id: 'UAK_cOSR8bs',
    creator: sona_gasparian
  },
  {
    name: 'All Matte Fall Makeup',
    youtube_id: 'I52vs0mIvYw',
    creator: sona_gasparian
  },
  {
    name: 'Glitter Glam Makeup',
    youtube_id: '8hKFccRONOU',
    creator: sona_gasparian
  }
])