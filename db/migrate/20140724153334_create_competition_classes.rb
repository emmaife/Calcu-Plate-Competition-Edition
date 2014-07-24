class CreateCompetitionClasses < ActiveRecord::Migration
  def change
    create_table :competition_classes do |t|
      t.string :name
    end
  end
end
