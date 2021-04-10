class CreateCompanies < ActiveRecord::Migration[6.0]
  def change
    create_table :companies do |t|
      t.string :company_name, null: false
      t.string :password_digest, null: false
      t.timestamps
    end
  end
end
