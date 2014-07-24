class Athlete < ActiveRecord::Base
  has_many :attempts
  has_many :lifts, through: :attempts

  belongs_to :competition_class
  belongs_to :weight_class
  belongs_to :age_division
  belongs_to :equipment_division

  
end

# @athlete.attempts.select {|a| a.lift.name = "Squat"}.max