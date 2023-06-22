#User.create!(email: 'admin@example.com',password: '1234',password_confirmation: '1234',)

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



tag_cool = Tag.find_by(title: 'Cool')
tag_mv = Tag.find_by(title: 'MV')
tag_cute = Tag.find_by(title: 'Cute')
tag_mysterious = Tag.find_by(title: 'Mysterious')
tag_upbeat = Tag.find_by(title: 'Upbeat')
tag_melancholic = Tag.find_by(title: 'Melancholic')
tag_sexy = Tag.find_by(title: 'Sexy')
tag_fashionable = Tag.find_by(title: 'Fashionable')
tag_cover_song = Tag.find_by(title: 'Cover Song')

song_titles_cool = ['Savage', 'aenergy', 'I\'ll Make You Cry', 'YEPPI YEPPI', 'ICONIC', 'Lucid Dream', 'Spicy', 'Girls', 'Illusion', 'Black Mamba', 'Salty & Sweet', 'Next Level']
song_titles_mv = ['Next Level','Dreams Come True','aenergy','Savage','Lucid Dream', 'Girls', 'Life\'s Too Short','Forever', 'Welcome To MY World','Spicy']
song_titles_cute = ['Dreams Come True','YEPPI YEPPI','Girls','Lingo','ICU','Life\'s Too Short','Spicy','Thirsty','\'Till We Meet Again']
song_titles_mysterious = ['Savage', 'Next Level', 'Black Mamba','Lucid Dream', 'Welcome To MY World','Spicy','Salty & Sweet','I\'m Unhappy']
song_titles_upbeat = ['Savage', 'aenergy', 'Black Mamba', 'I\'ll Make You Cry','YEPPI YEPPI','ICU','Spicy']
song_titles_melancholic = ['Lucid Dream', 'Girls','ICU','Forever','Thirsty','I\'m Unhappy', '\'Till We Meet Again']
song_titles_sexy = ['Lucid Dream','Illusion','Black Mamba','Salty & Sweet','Thirsty' ]
song_titles_fashionable = ['Thirsty','Lucid Dream','I\'m Unhappy','Hold On Tight']
song_titles_cover_song = ['Hold On Tight','Dreams Come True','Next Level']

song_titles_cool.each do |title|
  song = Song.find_by(title: title)
  SongTag.create!(song: song, tag: tag_cool)
end

song_titles_mv.each do |title|
  song = Song.find_by(title: title)
  SongTag.create!(song: song, tag: tag_mv)
end

song_titles_cute.each do |title|
  song = Song.find_by(title: title)
  SongTag.create!(song: song, tag: tag_cute)
end

song_titles_mysterious.each do |title|
  song = Song.find_by(title: title)
  SongTag.create!(song: song, tag: tag_mysterious)
end

song_titles_upbeat.each do |title|
  song = Song.find_by(title: title)
  SongTag.create!(song: song, tag: tag_upbeat)
end

song_titles_melancholic.each do |title|
  song = Song.find_by(title: title)
  SongTag.create!(song: song, tag: tag_melancholic)
end

song_titles_sexy.each do |title|
  song = Song.find_by(title: title)
  SongTag.create!(song: song, tag: tag_sexy)
end

song_titles_fashionable.each do |title|
  song = Song.find_by(title: title)
  SongTag.create!(song: song, tag: tag_fashionable)
end

song_titles_cover_song.each do |title|
  song = Song.find_by(title: title)
  SongTag.create!(song: song, tag: tag_cover_song)
end