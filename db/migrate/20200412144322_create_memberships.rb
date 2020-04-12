class CreateMemberships < ActiveRecord::Migration[6.0]
  def change
    create_table :memberships do |t|
      t.references :team, foreign_key: true
      t.references :employee, foreign_key: true

      t.timestamps
    end
  end
end
