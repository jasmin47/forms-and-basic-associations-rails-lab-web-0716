class Note < ActiveRecord::Base
  belongs_to :song
  validates :content, presence: true

  def song_ids=(ids)
    ids.each do |id|
      song = Song.find(id)
      self.songs << song
    end
  end
end
