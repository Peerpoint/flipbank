class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.string :coll_address
      t.string :guarantor
      t.string :phone
      t.string :email
      t.string :trans_type
      t.string :lien_position
      t.decimal :gross_loan
      t.decimal :liens_paid
      t.decimal :cash_out
      t.decimal :holdback
      t.decimal :equity
      t.decimal :closing_costs
      t.decimal :due_diligence
      t.decimal :appraisal
      t.decimal :dd_fee_rebate
      t.decimal :processing_fee

      t.timestamps null: false
    end
  end
end
