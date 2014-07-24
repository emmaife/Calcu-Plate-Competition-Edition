class Lift < ActiveRecord::Base
  has_many :attempts
  has_many :athletes, through: :attempts
end
