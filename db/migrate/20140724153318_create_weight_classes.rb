class CreateWeightClasses < ActiveRecord::Migration
  def change
    create_table :weight_classes do |t|
      t.integer :weight
    end
  end
end
