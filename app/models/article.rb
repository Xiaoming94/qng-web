class Article < ActiveRecord::Base
  has_many :comments , dependent: :destroy
  validates :title, presence: true

  def get_all_published
    find_by published: true
  end
end
