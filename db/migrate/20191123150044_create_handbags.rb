class CreateHandbags < ActiveRecord::Migration[6.0]
  def change
    create_table :handbags do |t|
      t.string :name
      t.string :designer
      t.string :body

      t.timestamps
    end
  end
end
