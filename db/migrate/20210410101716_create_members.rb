class CreateMembers < ActiveRecord::Migration[6.0]
  def change
    create_table :members do |t|
      t.string :member_name
      t.references :company, foreign_key: true
      t.timestamps
    end
  end
end
