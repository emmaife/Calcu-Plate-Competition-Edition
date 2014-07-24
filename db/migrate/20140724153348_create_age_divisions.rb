class CreateAgeDivisions < ActiveRecord::Migration
  def change
    create_table :age_divisions do |t|
      t.string :name
    end
  end
end
