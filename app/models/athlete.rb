class Athlete < ActiveRecord::Base
  has_many :attempts
  has_many :lifts, through: :attempts

  belongs_to :competition_class
  belongs_to :weight_class
  belongs_to :age_division
  belongs_to :equipment_division


  def squat_max
    @athlete.attempts.find_all {|x|  x.lift.name == "Squat"}.max_by {|s| s.weight}.weight
  end

  def deadlift_max
    @athlete.attempts.find_all {|x|  x.lift.name == "Deadlift"}.max_by {|s| s.weight}.weight
  end

  def bench_max
    @athlete.attempts.find_all {|x|  x.lift.name == "Bench Press"}.max_by {|s| s.weight}.weight
  end

  def total
    @total = squat_max + deadlift_max + bench_max
  end


end


