class CreateCreateBlogs < ActiveRecord::Migration
  def change
    create_table :create_blogs do |t|
      t.string :title
      t.string :body

      t.timestamps
    end
  end
end
