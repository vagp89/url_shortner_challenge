class Url < ApplicationRecord
  validates_presence_of :url
  validates_uniqueness_of :code
  validates_length_of :code, minimum: 4, allow_blank: true

  def shortster_url
    rand(36**8).to_s(36)
  end

end
