class CreateSqueals < ActiveRecord::Migration[6.0]
  def change
    create_table :squeals do |t|
      t.string :comment

      t.timestamps
    end
  end
end
