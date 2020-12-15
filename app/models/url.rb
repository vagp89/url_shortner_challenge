class Url < ApplicationRecord
  validates_presence_of :link
  validates :code,  uniqueness: { case_sensitive: true }, format: {with: /\A[0-9a-zA-Z]*\z/, message: 'Only letters or numbers accepted'}
  validates_length_of :code, minimum: 4, allow_blank: true

  before_create :set_counter

  def set_counter
    self.count_visit = 0
  end

  def shortster_url
    rand(36**6).to_s(36)
  end

end
