class CreateTuits < ActiveRecord::Migration[6.0]
  def change
    create_table :tuits do |t|
      t.text :tuit

      t.timestamps
    end
  end
end
