class CreateThreeDFiles < ActiveRecord::Migration[5.2]
  def change
    create_table :three_d_files do |t|
      t.string :name
      t.string :attachment

      t.timestamps
    end
  end
end
