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
  image: 'ilw_p7.jpg',
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
  image: 'ilw_p9.jpg',
  description: 'A next-level eye glimmer with a foil finish that lights up the eyes. More shine than shadow, Milani Fierce Foil Eyeshine glides smoothly across lids, leaving a buildable sheen that looks beautiful worn alone or on top of eyeshadow for extra intensity. Create endless looks, highlight, define, color and accent your eyes. Available in four expertly curated palettes named after Italy\'s starriest cities.',
  video: ilikeweylie_vids[3]
)

Product.create(
  name: 'elf High Definition Powder',
  url: 'http://www.elfcosmetics.com/p/high-definition-powder',
  image: 'ilw_p10.jpg',
  description: 'The e.l.f. High Definition Powder is a translucent, versatile loose powder that creates a flawless, "soft focus" effect to the skin. Masks fine lines and imperfections for a glowing, radiant complexion. This incredibly soft and invisible powder is ideal for everyday wear, either alone or over your favorite e.l.f. foundation. Our HD Powder is a makeup artist and e.l.f. customer favorite!',
  video: ilikeweylie_vids[3]
)
