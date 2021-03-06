class Tweet < ActiveRecord::Base
  belongs_to :user

  validates :user, presence: true
  validates :author, presence: true
  validates :body, presence: true
end
