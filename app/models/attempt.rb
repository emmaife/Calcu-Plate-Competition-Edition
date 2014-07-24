class Attempt < ActiveRecord::Base
  belongs_to :athlete
  belongs_to :lift
end
