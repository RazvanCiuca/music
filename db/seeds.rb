Band.create!(:name => "N'sync")
Band.create!(:name => "Backstreet Boyz")
Band.create!(:name => "One direction")

Album.create!(:band_id => 1, :name => "NSYNC", :recording => "Live")
Album.create!(:band_id => 2, :name => "Backstreet Boys", :recording => "Live")
Album.create!(:band_id => 2, :name => "Backstreet's Back", :recording => "Live")
Album.create!(:band_id => 3, :name => "Up All Night", :recording => "Live")

Track.create!(:album_id => 1, :title => 'Music of my Heart', :bonus => "Bonus", :lyrics => "You taught me to run
You taught me to fly
Helped me to free the me inside
Help me hear the music of my heart
Help me hear the music of my heart
You've opened my eyes
You've opened the door")
Track.create!(:album_id => 2, :title => 'I\'ll never break your heart', :bonus => "Bonus", :lyrics => "I'll never break your heart
I'll never make you cry
I'd rather die than live without you
I'll give you all of me
Honey, that's no lie")
Track.create!(:album_id => 2, :title => 'Get Down', :bonus => "Bonus", :lyrics => "Get down, get down
And move it all around
Get down, get down
And move it all around")
Track.create!(:album_id => 3, :title => 'Everybody', :bonus => "Bonus", :lyrics => "Hey, hey yeah, well,
Oh my god we're back again
Brothers, sisters, everybody sing
Gonna bring the flavor,
Show you how
Gotta question for ya
Better answer now yeah")
Track.create!(:album_id => 3, :title => 'Like a child', :bonus => "Bonus", :lyrics => "Girl don't stop
The sun from shining down on me (shining down on me)
Cuz I can't face another day without your smile (your pretty smile, your pretty smile)
And if you take away the loving arms that surround me
Then I might break down and cry just like a child")
Track.create!(:album_id => 4, :title => 'We fondle each other', :bonus => "Bonus", :lyrics => "Sometimes\n
oh yes\n
yes we do")

User.create!(:email => 'adler@adler.com', :password => 'aaaa', :admin => true)
User.create!(:email => 'raz@raz.com', :password => 'bbbb', :admin => false)

Note.create!(:body => "hey babe, let's have..", :author_id => 1, :track_id => 2)
Note.create!(:body => "black sheep wall", :author_id => 1, :track_id => 3)
Note.create!(:body => "Lyk dis if u cry evertym", :author_id => 2, :track_id => 4)
Note.create!(:body => "Been there, done that", :author_id => 2, :track_id => 6)
