class CreateLinks < ActiveRecord::Migration[5.0]
  def change
    create_table :links do |t|
      t.string :url, index: true
      t.string :short_name, index: true
      t.timestamps
    end
  end
end
