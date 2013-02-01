class CreateRails < ActiveRecord::Migration
  def change
    create_table :rails do |t|
      t.string :g
      t.string :scaffold
      t.string :Message
      t.string :Title
      t.decimal :Message

      t.timestamps
    end
  end
end
