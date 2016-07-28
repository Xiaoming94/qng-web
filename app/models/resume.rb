class Resume < ActiveRecord::Base
  validates :name, presence: true
end
