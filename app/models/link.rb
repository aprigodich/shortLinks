class Link < ApplicationRecord
  validates :url, presence: true

  def self.short_name

    if (short_name = self.last(1).empty? ? false :  self.last[:short_name])
      short_name.succ
    else
      'A0'
    end
  end

end
