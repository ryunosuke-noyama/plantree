class CreatePlans < ActiveRecord::Migration[6.0]
  def change
    create_table :plans do |t|
      t.string :plan_name
      t.references :company, foreign_key: true
      t.references :team, foreign_key: true
      t.timestamps
    end
  end
end
