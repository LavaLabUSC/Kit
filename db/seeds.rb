# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

tags = {
  fall: Tag.create(name: 'fall'),
  asian: Tag.create(name: 'asian'),
  brunette: Tag.create(name: 'brunette')
}

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

michelle_phan_products = Product.create([
  {
    name: 'Illuminating Skin Filter',
    url: 'http://amzn.to/1p7SFrB',
    image: 'ill_skin_filter.png',
    description: 'Use this lightweight fluid illuminator to create any special skin effect. Easily applies alone, under your foundation, or mix with face product to brighten your skin. Choose your effect to customize the \'mood\' you want to create.',
    video: michelle_phan_vids[0]
  },
  {
    name: 'Pillow Plush Cushiony Lip Balm',
    url: 'http://amzn.to/WBP3rm',
    image: 'cushiony_lip_balm.png',
    description: 'This creamy, cushiony lip balm softens lips on contact, giving you the TLC your dry lips need. Available in six color tints or a non-tinted version (Creamsicle).',
    video: michelle_phan_vids[0]
  },
  {
    name: 'Color Facets Sparkling Shadow Top Coat',
    url: 'http://amzn.to/1jTZqkr',
    image: 'color_facets.png',
    description: 'Add more bling to your eyes with this glimmering shadow top coat. Use alone for sheer shimmer, over your shadow to create extra pop, or build up the intensity for even more wow! You\'ll definitely be shining bright like a diamond!',
    video: michelle_phan_vids[0]
  }
])

sona_gasparian = Creator.create(
  name: 'Sona Gasparian',
  twitter: 'simply_sona',
  instagram: 'simplysona',
  youtube_id: 'MakeupBySona',
  bio: 'My name is Sona Gasparian, I\'m a professional makeup artist turned Beauty and Fashion blogger/vlogger based in sunny Los Angeles!',
  avatar: 'sona_gasparian.jpg',
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

# Create taggings
Tagging.create(
  taggable: michelle_phan,
  tag: tags[:asian]
)

Tagging.create(
  taggable: michelle_phan_vids[0],
  tag: tags[:asian]
)

Tagging.create(
  taggable: michelle_phan_vids[0],
  tag: tags[:brunette]
)