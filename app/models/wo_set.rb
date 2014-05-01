class WoSet < ActiveRecord::Base
  has_many :reps
  belongs_to :exercise
end
