class Page < ActiveRecord::Base
  extend FriendlyId
  validates_uniqueness_of :title

  friendly_id :title, :use => :slugged

  def self.recent
    Page.where('id > ?', 0)
  end
end
