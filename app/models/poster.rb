class Poster < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true
  validates :username, presence: true
end
