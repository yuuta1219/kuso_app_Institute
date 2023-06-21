User.create!(
  email: 'admin@example.com',
  password: '1234',
  password_confirmation: '1234',
)
songs = [
  'Next Level',
  'Hold On Tight',
  'Savage',
  'Lucid Dream',
  'Black Mamba',
  'Welcome To MY World',
  'Spicy',
  'Salty & Sweet',
  'I\'m Unhappy',
  'Dreams Come True',
  'aenergy',
  'I\'ll Make You Cry',
  'YEPPI YEPPI',
  'ICONIC',
  'Girls',
  'Illusion',
  'Lingo',
  'ICU',
  'Life\'s Too Short',
  'Forever',
  'Thirsty',
  '\'Till We Meet Again'
]

songs.each do |title|
  Song.create!(
    title: title,
    body: 'aespa'
  )
end

tags = [
  'Cool',
  'MV',
  'Cute',
  'Mysterious',
  'Upbeat',
  'Melancholic',
  'Sexy',
  'Fashionable',
  'Cover Song'
]

tags.each do |title|
  Tag.create!(
    title: title
  )
end