module TracksHelper
  def ugly_lyrics(lyrics)
    ugly_lyrics = []
    lyrics.split("\n").each do |line|
      ugly_lyrics << "&#9835; #{line}"
    end
    ugly_lyrics.join(" \n").html_safe
  end
end
