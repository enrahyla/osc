class CreateHomes < ActiveRecord::Migration
  def change
    create_table :homes do |t|
      t.string :blog

      t.timestamps
    end
  end
end
