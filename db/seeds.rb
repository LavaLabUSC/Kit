# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Tags
tags = {
  fall: Tag.create(name: 'fall'),
  asian: Tag.create(name: 'asian'),
  brunette: Tag.create(name: 'brunette'),
  long_hair: Tag.create(name: 'long_hair'),
  brown_eyes: Tag.create(name: 'brown_eyes'),
  korean: Tag.create(name: 'korean'),
  summer: Tag.create(name: 'summer'),
  foundation: Tag.create(name: 'foundation'),
  eyes: Tag.create(name: 'eyes'),
  spring: Tag.create(name: 'spring'),
  gold: Tag.create(name: 'gold'),
  glitter: Tag.create(name: 'glitter'),
  morning: Tag.create(name: 'morning'),
  everyday: Tag.create(name: 'everyday'),
  caucasian: Tag.create(name: 'caucasian'),
  blonde: Tag.create(name: 'blonde'),
  blue_eyes: Tag.create(name: 'blue_eyes'),
  winter: Tag.create(name: 'winter'),
  black: Tag.create(name: 'black'),
  curly_hair: Tag.create(name: 'curly_hair'),
  hair: Tag.create(name: 'hair'),
  metallic: Tag.create(name: 'metallic'),
  lips: Tag.create(name: 'lips'),
  hazel_eyes: Tag.create(name: 'hazel_eyes')
}

# Vanessa
vanessa = User.create(
  email: 'vanessa@gmail.com',
  screen_name: 'vanessa',
  display_name: 'Vanessa Qin',
  password_digest: '$2a$10$l7itOlW1REV7R2vo5OhoP.ZUXUXu.QK0vYAYTCCRMPStEr12/5uRa',
  avatar: 'vanessa.jpg',
  bio: 'Life & Style - Bay Area girl in LA // Youtube @vqeu // Snapchat vqeu // E-Mail hello@vanessaq.in'
)

Tagging.create(taggable: vanessa, tag: tags[:asian])
Tagging.create(taggable: vanessa, tag: tags[:brunette])
Tagging.create(taggable: vanessa, tag: tags[:long_hair])
Tagging.create(taggable: vanessa, tag: tags[:brown_eyes])

# Creators
ilikeweylie = Creator.create(
  name: 'Weylie Hoang',
  twitter: 'callmeweylie',
  instagram: 'weylie',
  youtube_id: 'ilikeweylie',
  bio: 'I\'m the sister you never had.....or the sister you never wanted. Haha My videos consist of hair, beauty, advice, and anything random...really.',
  avatar: 'weylie.jpg',
  slug: 'ilikeweylie'
)

Tagging.create(taggable: ilikeweylie, tag: tags[:asian])
Tagging.create(taggable: ilikeweylie, tag: tags[:brunette])
Tagging.create(taggable: ilikeweylie, tag: tags[:long_hair])
Tagging.create(taggable: ilikeweylie, tag: tags[:brown_eyes])

ilikeweylie_vids = Video.create([
  {
    name: '6 Korean Makeup Trends TESTED',
    youtube_id: 'ioDzRCCYVew',
    creator: ilikeweylie
  },
  {
    name: 'Summer Glowy Foundation Routine',
    youtube_id: 'CtP1rzkdgtQ',
    creator: ilikeweylie
  },
  {
    name: 'Sultry Mauve Eyes w/ Bronzey Skin',
    youtube_id: 'BluCH44nrao',
    creator: ilikeweylie
  },
  {
    name: 'Spring Drugstore Makeup Tutorial',
    youtube_id: 'x-eER-3hF0Q',
    creator: ilikeweylie
  }
])

Tagging.create(taggable: ilikeweylie_vids[0], tag: tags[:asian])
Tagging.create(taggable: ilikeweylie_vids[0], tag: tags[:brunette])
Tagging.create(taggable: ilikeweylie_vids[0], tag: tags[:long_hair])
Tagging.create(taggable: ilikeweylie_vids[0], tag: tags[:brown_eyes])
Tagging.create(taggable: ilikeweylie_vids[0], tag: tags[:korean])

Tagging.create(taggable: ilikeweylie_vids[1], tag: tags[:asian])
Tagging.create(taggable: ilikeweylie_vids[1], tag: tags[:brunette])
Tagging.create(taggable: ilikeweylie_vids[1], tag: tags[:long_hair])
Tagging.create(taggable: ilikeweylie_vids[1], tag: tags[:brown_eyes])
Tagging.create(taggable: ilikeweylie_vids[1], tag: tags[:summer])
Tagging.create(taggable: ilikeweylie_vids[1], tag: tags[:foundation])

Tagging.create(taggable: ilikeweylie_vids[2], tag: tags[:asian])
Tagging.create(taggable: ilikeweylie_vids[2], tag: tags[:brunette])
Tagging.create(taggable: ilikeweylie_vids[2], tag: tags[:long_hair])
Tagging.create(taggable: ilikeweylie_vids[2], tag: tags[:brown_eyes])
Tagging.create(taggable: ilikeweylie_vids[2], tag: tags[:eyes])

Tagging.create(taggable: ilikeweylie_vids[3], tag: tags[:asian])
Tagging.create(taggable: ilikeweylie_vids[3], tag: tags[:brunette])
Tagging.create(taggable: ilikeweylie_vids[3], tag: tags[:long_hair])
Tagging.create(taggable: ilikeweylie_vids[3], tag: tags[:brown_eyes])
Tagging.create(taggable: ilikeweylie_vids[3], tag: tags[:spring])

# Products

# -- 6 Korean Makeup Trends Tested
Product.create(
  name: 'Mattifying Primer with Anti-Acne Treatment',
  url: 'http://www.sephora.com/mattifying-primer-with-anti-acne-treatment-P377612?skuId=1487388&icid2=products%20grid:p377612&om_mmc=aff-linkshare-redirect-x9A7w7fjzpE&c3ch=Linkshare&c3nid=x9A7w7fjzpE&affid=x9A7w7fjzpE-vEoN4nHgoCRnAySBEbp7iA&ranEAID=x9A7w7fjzpE&ranMID=2417&ranSiteID=x9A7w7fjzpE-vEoN4nHgoCRnAySBEbp7iA&ranLinkID=10-1&browserdefault=true',
  image: 'ilw_p1.jpg',
  description: 'A lightweight, water-resistant gel-primer that helps keep skin matte while minimizing the appearance of fine lines and pores.',
  video: ilikeweylie_vids[0]
)

Product.create(
  name: 'All Day Luminous Weightless Foundation',
  url: 'http://www.sephora.com/all-day-luminous-weightless-foundation-P393658?skuId=1677988&icid2=products%20grid:p393658&om_mmc=aff-linkshare-redirect-x9A7w7fjzpE&c3ch=Linkshare&c3nid=x9A7w7fjzpE&affid=x9A7w7fjzpE-Sv8VNms1kP6TkRpvV_uw.A&ranEAID=x9A7w7fjzpE&ranMID=2417&ranSiteID=x9A7w7fjzpE-Sv8VNms1kP6TkRpvV_uw.A&ranLinkID=10-1&browserdefault=true',
  image: 'ilw_p2.jpg',
  description: 'An oil-free foundation that delivers full, natural-looking coverage with one drop, for lightweight, 16-hour wear.',
  video: ilikeweylie_vids[0]
)

Product.create(
  name: 'Radiant Creamy Concealer',
  url: 'http://www.sephora.com/radiant-creamy-concealer-P377873?skuId=1478387&icid2=products%20grid:p377873&om_mmc=aff-linkshare-redirect-x9A7w7fjzpE&c3ch=Linkshare&c3nid=x9A7w7fjzpE&affid=x9A7w7fjzpE-SkSRgjBafkMj5z7yoK94yQ&ranEAID=x9A7w7fjzpE&ranMID=2417&ranSiteID=x9A7w7fjzpE-SkSRgjBafkMj5z7yoK94yQ&ranLinkID=10-1&browserdefault=true',
  image: 'ilw_p3.jpg',
  description: 'An award-winning concealer that provides medium-to-full, buildable coverage and corrects, contours, highlights, and perfects.',
  video: ilikeweylie_vids[0]
)

# ---

Product.create(
  name: 'Born This Way Concealer',
  url: 'https://www.toofaced.com/p/concealers/born-this-way-concealer/',
  image: 'ilw_p4.jpg',
  description: 'Instantly hide imperfections, vanish the appearance of dark circles, and blur the look of lines and wrinkles for complete coverage so undetectable, they’ll think you were Born This Way.',
  video: ilikeweylie_vids[1]
)

Product.create(
  name: 'Sweetheart Bronzer',
  url: 'https://www.toofaced.com/p/bronzers/sweethearts-bronzer/',
  image: 'ilw_p5.jpg',
  description: 'Take the guesswork out of creating a sweet, romantic bronzed flush. In each baked, heart-shaped bronzer there are two individual color swatches. The baking process and multiple colors create dimensional color to provide the look of brighter, healthier skin.',
  video: ilikeweylie_vids[1]
)

Product.create(
  name: 'Amazonian Clay 12-Hour Highlighter',
  url: 'http://www.sephora.com/amazonian-clay-highlighter-P409981',
  image: 'ilw_p6.jpg',
  description: 'A 12-hour highlighter, powered by Amazonian clay for a radiant glow. ',
  video: ilikeweylie_vids[1]
)

# ---

Product.create(
  name: 'Age Reform Complete Reform with Glycolic Treatment',
  url: 'http://www.ulta.com/age-reform-complete-reform-with-glycolic-treatment?productId=xlsImpprod3120631',
  image: 'ilw_p7.png',
  description: 'Glyco Firming Complex helps preserve youthful firmness and resilience by helping protect skin\'s natural elastin levels. Beta-Carotene helps reduce the appearance of fine lines and wrinkles without irritation.',
  video: ilikeweylie_vids[2]
)

Product.create(
  name: 'Shadow Insurance Primer',
  url: 'https://www.toofaced.com/p/eye-shadow-primers/shadow-insurance/',
  image: 'ilw_p8.jpg',
  description: 'Our iconic, bestselling Shadow Insurance Eye Primer just got a makeover! We’ve revamped the packaging of this world-famous cult classic, but we’ve kept the bestselling formula that locks down eye shadows and intensifies color to ensure crease-proof, fade-proof, waterproof wear for up to 24 hours. The feather-light formula glides effortlessly onto lids to create a smooth, even canvas for seamless shadow application and a stay-put look every time.',
  video: ilikeweylie_vids[2]
)

# ---

Product.create(
  name: 'Milani Fierce Foil Eyeshine',
  url: 'https://milanicosmetics.com/Fierce-Foil-Eye-Shine.html',
  image: 'ilw_p9.png',
  description: 'A next-level eye glimmer with a foil finish that lights up the eyes. More shine than shadow, Milani Fierce Foil Eyeshine glides smoothly across lids, leaving a buildable sheen that looks beautiful worn alone or on top of eyeshadow for extra intensity. Create endless looks, highlight, define, color and accent your eyes. Available in four expertly curated palettes named after Italy\'s starriest cities.',
  video: ilikeweylie_vids[3]
)

Product.create(
  name: 'elf High Definition Powder',
  url: 'http://www.elfcosmetics.com/p/high-definition-powder',
  image: 'ilw_p10.png',
  description: 'The e.l.f. High Definition Powder is a translucent, versatile loose powder that creates a flawless, "soft focus" effect to the skin. Masks fine lines and imperfections for a glowing, radiant complexion. This incredibly soft and invisible powder is ideal for everyday wear, either alone or over your favorite e.l.f. foundation. Our HD Powder is a makeup artist and e.l.f. customer favorite!',
  video: ilikeweylie_vids[3]
)


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
Tagging.create(taggable: michelle_phan,tag: tags[:asian])
Tagging.create(taggable: michelle_phan,tag: tags[:brunette])
Tagging.create(taggable: michelle_phan,tag: tags[:long_hair])
Tagging.create(taggable: michelle_phan,tag: tags[:brown_eyes])

Tagging.create(taggable: michelle_phan_vids[0],tag: tags[:asian])
Tagging.create(taggable: michelle_phan_vids[0],tag: tags[:brunette])
Tagging.create(taggable: michelle_phan_vids[0],tag: tags[:gold])
Tagging.create(taggable: michelle_phan_vids[0],tag: tags[:long_hair])
Tagging.create(taggable: michelle_phan_vids[0],tag: tags[:brown_eyes])

Tagging.create(taggable: michelle_phan_vids[1],tag: tags[:asian])
Tagging.create(taggable: michelle_phan_vids[1],tag: tags[:brunette])
Tagging.create(taggable: michelle_phan_vids[1],tag: tags[:long_hair])
Tagging.create(taggable: michelle_phan_vids[1],tag: tags[:brown_eyes])

Tagging.create(taggable: sona_gasparian,tag: tags[:brown_eyes])
Tagging.create(taggable: sona_gasparian,tag: tags[:brunette])
Tagging.create(taggable: sona_gasparian,tag: tags[:long_hair])
Tagging.create(taggable: sona_gasparian,tag: tags[:caucasian])

Tagging.create(taggable: sona_gasparian_vids[0],tag: tags[:brown_eyes])
Tagging.create(taggable: sona_gasparian_vids[0],tag: tags[:brunette])
Tagging.create(taggable: sona_gasparian_vids[0],tag: tags[:long_hair])
Tagging.create(taggable: sona_gasparian_vids[0],tag: tags[:gold])

Tagging.create(taggable: sona_gasparian_vids[1],tag: tags[:brown_eyes])
Tagging.create(taggable: sona_gasparian_vids[1],tag: tags[:brunette])
Tagging.create(taggable: sona_gasparian_vids[1],tag: tags[:long_hair])
Tagging.create(taggable: sona_gasparian_vids[1],tag: tags[:fall])

Tagging.create(taggable: sona_gasparian_vids[2],tag: tags[:brown_eyes])
Tagging.create(taggable: sona_gasparian_vids[2],tag: tags[:brunette])
Tagging.create(taggable: sona_gasparian_vids[2],tag: tags[:long_hair])
Tagging.create(taggable: sona_gasparian_vids[2],tag: tags[:glitter])

# ------

iamkareno = Creator.create(
  name: 'Karen Yeung',
  twitter: 'iamkareno',
  instagram: 'iamkareno',
  youtube_id: 'iamkareno',
  bio: 'My name is Karen Yeung and I\'m a fashion, beauty and lifestyle blogger who\'s currently based in Los Angeles.  I was born in Hong Kong and raised in the Bay Area in California. My style is influenced by the toughness of the city and the lax suburban lifestyle.',
  avatar: 'iamkareno.jpg',
  slug: 'iamkareno'
)

Tagging.create(taggable: iamkareno, tag: tags[:asian])
Tagging.create(taggable: iamkareno, tag: tags[:brunette])
Tagging.create(taggable: iamkareno, tag: tags[:long_hair])
Tagging.create(taggable: iamkareno, tag: tags[:brown_eyes])

iamkareno_vids = Video.create([
  {
    name: 'Everyday Makeup Tutorial',
    youtube_id: 'XiINeWoSGPg',
    creator: iamkareno
  },
  {
    name: 'Get Ready With Me | Morning Routine',
    youtube_id: 'BRedliOJ9vk',
    creator: iamkareno
  },
  {
    name: 'SUMMER 80s INSPIRED MAKEUP + OUTFIT + HAIR',
    youtube_id: 'QR7KpaG_xBo',
    creator: iamkareno
  }
])

Tagging.create(taggable: iamkareno_vids[0],tag: tags[:asian])
Tagging.create(taggable: iamkareno_vids[0],tag: tags[:brown_eyes])
Tagging.create(taggable: iamkareno_vids[0],tag: tags[:brunette])
Tagging.create(taggable: iamkareno_vids[0],tag: tags[:long_hair])
Tagging.create(taggable: iamkareno_vids[0],tag: tags[:everyday])

Tagging.create(taggable: iamkareno_vids[1],tag: tags[:asian])
Tagging.create(taggable: iamkareno_vids[1],tag: tags[:brown_eyes])
Tagging.create(taggable: iamkareno_vids[1],tag: tags[:brunette])
Tagging.create(taggable: iamkareno_vids[1],tag: tags[:long_hair])
Tagging.create(taggable: iamkareno_vids[1],tag: tags[:morning])

Tagging.create(taggable: iamkareno_vids[2],tag: tags[:asian])
Tagging.create(taggable: iamkareno_vids[2],tag: tags[:brown_eyes])
Tagging.create(taggable: iamkareno_vids[2],tag: tags[:brunette])
Tagging.create(taggable: iamkareno_vids[2],tag: tags[:long_hair])
Tagging.create(taggable: iamkareno_vids[2],tag: tags[:summer])

# -------

amyvagabondd = Creator.create(
  name: 'Amy Lee',
  twitter: 'amyvagabondd',
  instagram: 'amyvagabondd',
  youtube_id: 'shopvagabondyouth',
  bio: 'Amy Lee is a 22 year old Los Angeles native with a penchant for fashion & beauty. Vagabond Youth is a modern upbeat fashion & beauty channel aimed towards inspiring young people to express themselves creatively.',
  avatar: 'amy.jpg',
  slug: 'amyvagabondd'
)

Tagging.create(taggable: amyvagabondd, tag: tags[:asian])
Tagging.create(taggable: amyvagabondd, tag: tags[:brunette])
Tagging.create(taggable: amyvagabondd, tag: tags[:long_hair])
Tagging.create(taggable: amyvagabondd, tag: tags[:brown_eyes])

amyvagabondd_vids = Video.create([
  {
    name: 'My Summer Morning Routine',
    youtube_id: 'Mqz_MO77GjQ',
    creator: amyvagabondd
  },
  {
    name: 'My Everyday Makeup Tutorial',
    youtube_id: 'ckFaJOlqg2A',
    creator: amyvagabondd
  },
  {
    name: 'Get Ready With Me: Morning Routine',
    youtube_id: '997kpdUHtJ0',
    creator: amyvagabondd
  }
])

Tagging.create(taggable: amyvagabondd_vids[0],tag: tags[:asian])
Tagging.create(taggable: amyvagabondd_vids[0],tag: tags[:brown_eyes])
Tagging.create(taggable: amyvagabondd_vids[0],tag: tags[:brunette])
Tagging.create(taggable: amyvagabondd_vids[0],tag: tags[:long_hair])
Tagging.create(taggable: amyvagabondd_vids[0],tag: tags[:summer])
Tagging.create(taggable: amyvagabondd_vids[0],tag: tags[:morning])

Tagging.create(taggable: amyvagabondd_vids[1],tag: tags[:asian])
Tagging.create(taggable: amyvagabondd_vids[1],tag: tags[:brown_eyes])
Tagging.create(taggable: amyvagabondd_vids[1],tag: tags[:brunette])
Tagging.create(taggable: amyvagabondd_vids[1],tag: tags[:long_hair])
Tagging.create(taggable: amyvagabondd_vids[1],tag: tags[:everyday])

Tagging.create(taggable: amyvagabondd_vids[2],tag: tags[:asian])
Tagging.create(taggable: amyvagabondd_vids[2],tag: tags[:brown_eyes])
Tagging.create(taggable: amyvagabondd_vids[2],tag: tags[:brunette])
Tagging.create(taggable: amyvagabondd_vids[2],tag: tags[:long_hair])
Tagging.create(taggable: amyvagabondd_vids[2],tag: tags[:morning])

# ----

tiffanyd = Creator.create(
  name: 'Tiffany D',
  twitter: 'TiffanyLD',
  instagram: 'makeupbytiffanyd',
  youtube_id: 'MakeupByTiffanyD',
  bio: 'One Girl\'s Thoughts on All Things Beauty.',
  avatar: 'tiffany.jpg',
  slug: 'makeupbytiffanyd'
)

Tagging.create(taggable: tiffanyd, tag: tags[:caucasian])
Tagging.create(taggable: tiffanyd, tag: tags[:blonde])
Tagging.create(taggable: tiffanyd, tag: tags[:long_hair])
Tagging.create(taggable: tiffanyd, tag: tags[:blue_eyes])

tiffanyd_vids = Video.create([
  {
    name: 'Cold Weather Must-Haves (Makeup, Skin, Hair)',
    youtube_id: 'djKe0052sXA',
    creator: tiffanyd
  },
  {
    name: 'The Only Makeup Brushes I Need',
    youtube_id: '9fVF7nnXWpE',
    creator: tiffanyd
  },
  {
    name: 'Fall Makeup Tutorial & Haul',
    youtube_id: 'tx4Ta_xH2EM',
    creator: tiffanyd
  }
])

tiffanyd_vids.each do |v|
  Tagging.create(taggable: v, tag: tags[:caucasian])
  Tagging.create(taggable: v, tag: tags[:blonde])
  Tagging.create(taggable: v, tag: tags[:long_hair])
  Tagging.create(taggable: v, tag: tags[:blue_eyes])
end

Tagging.create(taggable: tiffanyd_vids[0], tag: tags[:winter])
Tagging.create(taggable: tiffanyd_vids[2], tag: tags[:fall])

# ----

alyssa_forever = Creator.create(
  name: 'Alyssa Forever',
  twitter: 'foreverflawlyss',
  instagram: 'foreverflawlyss',
  youtube_id: 'CurlyByNature21',
  bio: 'I make videos on all things that inspire me, focusing on beauty, fashion, and lifestyle. All the products you see on my channel are things I have tried and truly believe in. I hope to bring you the best dupes, hauls, tutorials, vlogs, lookbooks, tips and tricks that I can, because I know its hard out here girl! I hope you like my videos. Please don\'t be shy! Leave a comment and let me know what you think as long as it\'s nice, you know God don\'t like ugly!',
  avatar: 'alyssa.jpg',
  slug: 'foreverflawlyss'
)

Tagging.create(taggable: alyssa_forever, tag: tags[:black])
Tagging.create(taggable: alyssa_forever, tag: tags[:curly_hair])
Tagging.create(taggable: alyssa_forever, tag: tags[:brown_eyes])

alyssa_forever_vids = Video.create([
  {
    name: 'Lazy Hairstyles for Curly Hair',
    youtube_id: 'HRcVvbD8p1c',
    creator: alyssa_forever
  },
  {
    name: 'EASY GLAM! Rose Gold Liner + Lips',
    youtube_id: 'VGysecPTY60',
    creator: alyssa_forever
  },
  {
    name: 'Smoky Eye Makeup for Beginners',
    youtube_id: '3CinJF6U0Oo',
    creator: alyssa_forever
  }
])

alyssa_forever_vids.each do |v|
  alyssa_tags = Tagging.where(:taggable => alyssa_forever)

  alyssa_tags.each do |t|
    Tagging.create(taggable: v, tag: t.tag)
  end
end

Tagging.create(taggable: alyssa_forever_vids[0], tag: tags[:hair])
Tagging.create(taggable: alyssa_forever_vids[2], tag: tags[:eye])

# ----

jennie_jenkins = Creator.create(
  name: 'Jennie Jenkins',
  twitter: 'TheBeautybyJJ',
  instagram: 'thejenniejenkins',
  youtube_id: 'beautybyjj',
  bio: 'Hey guys! This channel is going to show you what i love..from make up looks/tutorials to beauty to fashion and anything else i feel like sharing...Hope you enjoy! :) xx',
  avatar: 'jennie.jpg',
  slug: 'beautybyjj'
)

Tagging.create(taggable: jennie_jenkins, tag: tags[:black])
Tagging.create(taggable: jennie_jenkins, tag: tags[:long_hair])
Tagging.create(taggable: jennie_jenkins, tag: tags[:curly_hair])
Tagging.create(taggable: jennie_jenkins, tag: tags[:brown_eyes])

jennie_jenkins_vids = Video.create([
  {
    name: 'Top Highlighters, Faves, & High End Dupes',
    youtube_id: '3QxH1LAH0PM',
    creator: jennie_jenkins
  },
  {
    name: 'Full Face Using Makeup Under £10',
    youtube_id: 'jRtm3OsD7RY',
    creator: jennie_jenkins
  },
  {
    name: '11 Autumn/Fall Lip Swatches',
    youtube_id: 'QUmh2WvFvYw',
    creator: jennie_jenkins
  }
])

jennie_jenkins_vids.each do |v|
  jennie_tags = Tagging.where(:taggable => jennie_jenkins)

  jennie_tags.each do |t|
    Tagging.create(taggable: v, tag: t.tag)
  end
end

Tagging.create(taggable: jennie_jenkins_vids[2], tag: tags[:fall])

# ----

lizzie_loves = Creator.create(
  name: 'Lizzie Loves',
  twitter: 'Lizzieloves_x',
  instagram: 'Lizzieloves.x',
  youtube_id: 'UCIu9NYjKtfJCn8ZhwSNA_og',
  bio: 'Hey I\'m Lizzie i\'m a 22 year old from London! I make Beauty & Lifestyle Videos and upload them on Wednesdays & Sundays for your viewing pleasure. I love empowering and connecting with young women so I decided to make a YouTube Channel!! Please remember to Subscribe ! x x',
  avatar: 'lizzie.jpg',
  slug: 'lizzieloves'
)

Tagging.create(taggable: lizzie_loves, tag: tags[:black])
Tagging.create(taggable: lizzie_loves, tag: tags[:long_hair])
Tagging.create(taggable: lizzie_loves, tag: tags[:curly_hair])
Tagging.create(taggable: lizzie_loves, tag: tags[:brown_eyes])

lizzie_loves_vids = Video.create([
  {
    name: '6 Back to School Quick Natural Hairstyles for Short/Medium Hair',
    youtube_id: '_tbFf7_evN0',
    creator: lizzie_loves
  },
  {
    name: 'Autumn/Fall Vamp/Brown Makeup Tutorial',
    youtube_id: 'mwIelz9nt_I',
    creator: lizzie_loves
  },
  {
    name: 'Full Face Winter Glam for Dark Skin',
    youtube_id: 'LJtHbEaKY70',
    creator: lizzie_loves
  }
])

lizzie_loves_vids.each do |v|
  lizzie_tags = Tagging.where(:taggable => lizzie_loves)

  lizzie_tags.each do |t|
    Tagging.create(taggable: v, tag: t.tag)
  end
end

Tagging.create(taggable: lizzie_loves_vids[0], tag: tags[:hair])
Tagging.create(taggable: lizzie_loves_vids[1], tag: tags[:fall])
Tagging.create(taggable: lizzie_loves_vids[2], tag: tags[:winter])

# ----

patricia_bright = Creator.create(
  name: 'Patricia Bright',
  twitter: 'PattyOLovesU',
  instagram: 'thepatriciabright',
  youtube_id: 'BritPopPrincess',
  bio: 'A Female fashion beauty and hair channel with tutorials and videos to help with your beauty and fashion needs.',
  avatar: 'patricia.jpg',
  slug: 'patriciabright'
)

Tagging.create(taggable: patricia_bright, tag: tags[:black])
Tagging.create(taggable: patricia_bright, tag: tags[:long_hair])
Tagging.create(taggable: patricia_bright, tag: tags[:brown_eyes])

patricia_bright_vids = Video.create([
  {
    name: 'Battle of the Mettalic Liquid Lipsticks',
    youtube_id: 'Ttqt5thie5g',
    creator: patricia_bright
  },
  {
    name: 'My Current Favourite Face - Everyday Makeup',
    youtube_id: 'bq3vK7EPUXM',
    creator: patricia_bright
  }
])

patricia_bright_vids.each do |v|
  bright_tags = Tagging.where(:taggable => patricia_bright)

  bright_tags.each do |t|
    Tagging.create(taggable: v, tag: t.tag)
  end
end

Tagging.create(taggable: patricia_bright_vids[0], tag: tags[:metallic])
Tagging.create(taggable: patricia_bright_vids[0], tag: tags[:lips])
Tagging.create(taggable: patricia_bright_vids[1], tag: tags[:everyday])

# ----

brittney = Creator.create(
  name: 'Brittney Lee Saunders',
  twitter: 'britt_saunders',
  instagram: 'brittney_saunders',
  youtube_id: 'beautybybrittneyx',
  bio: 'My name is Brittney Lee Saunders and welcome to my channel! You\'ll find a bunch of really random stuff here from hauls to makeup videos, to parodies and skits, vlogs, story telling videos and so much more! I upload 3 times a week so if you like my videos make sure to subscribe to stay updated :)',
  avatar: 'brittney.jpg',
  slug: 'beautybybrittneyx'
)

Tagging.create(taggable: brittney, tag: tags[:caucasian])
Tagging.create(taggable: brittney, tag: tags[:blonde])
Tagging.create(taggable: brittney, tag: tags[:long_hair])
Tagging.create(taggable: brittney, tag: tags[:hazel_eyes])

brittney_vids = Video.create([
  {
    name: 'Instagram Girl Makeup Tutorial',
    youtube_id: 'oufKEQPft3U',
    creator: brittney
  },
  {
    name: 'Lip Swatches + First Impressions',
    youtube_id: 'gjOWIVr5dp0',
    creator: brittney
  }
])

brittney_vids.each do |v|
  britt_tags = Tagging.where(:taggable => brittney)

  britt_tags.each do |t|
    Tagging.create(taggable: v, tag: t.tag)
  end
end

Tagging.create(taggable: brittney_vids[1], tag: tags[:lips])

# ----

lauren_curtis = Creator.create(
  name: 'Lauren Curtis',
  twitter: 'lozcurtis',
  instagram: 'lozcurtis',
  youtube_id: 'laurenbeautyy',
  bio: 'This channel is centred around all things beauty - from makeup and hair tutorials to product reviews and hauls - I\'ve got everything covered!',
  avatar: 'lauren.jpg',
  slug: 'lozcurtis'
)

Tagging.create(taggable: lauren_curtis, tag: tags[:caucasian])
Tagging.create(taggable: lauren_curtis, tag: tags[:blonde])
Tagging.create(taggable: lauren_curtis, tag: tags[:long_hair])
Tagging.create(taggable: lauren_curtis, tag: tags[:blue_eyes])

lauren_vids = Video.create([
  {
    name: 'Vampy Fall Makeup Tutorial',
    youtube_id: 'e2RbGhxa9so',
    creator: lauren_curtis
  },
  {
    name: 'Gym Makeup Tutorial / Fresh Everyday Look',
    youtube_id: 'jpbUItVXzMY',
    creator: lauren_curtis
  },
  {
    name: 'Gold Glam Winged Liner & Bronzed Skin Tutorial',
    youtube_id: 'h_zs7nzeu9k',
    creator: lauren_curtis
  }
])

lauren_vids.each do |v|
  lauren_tags = Tagging.where(:taggable => lauren_curtis)

  lauren_tags.each do |t|
    Tagging.create(taggable: v, tag: t.tag)
  end
end

Tagging.create(taggable: lauren_vids[0], tag: tags[:fall])
Tagging.create(taggable: lauren_vids[1], tag: tags[:everyday])
Tagging.create(taggable: lauren_vids[2], tag: tags[:gold])

# ----

Subscription.create(:user_id => 1, :creator_id => 1)
Subscription.create(:user_id => 1, :creator_id => 2)
Subscription.create(:user_id => 1, :creator_id => 4)
Subscription.create(:user_id => 1, :creator_id => 5)

