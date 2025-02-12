class CreateTeams < ActiveRecord::Migration[6.0]
  def change
    create_table :teams do |t|
      t.string :name, null: false, default: ''
      t.boolean :active, null: false, default: true

      t.timestamps
    end
  end
end
