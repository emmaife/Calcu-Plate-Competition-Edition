class AddWeightToLogs < ActiveRecord::Migration
  def change
    add_column :logs, :weight, :integer

  end
end
