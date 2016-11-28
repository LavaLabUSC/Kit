vanessa = User.create(
  email: 'vanessa@kit.usclavalab.org',
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