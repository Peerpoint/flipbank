class AddSalespriceToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :salesprice, :decimal
    add_column :applications, :contract, :boolean
    add_column :applications, :current_val, :string
    add_column :applications, :seller_con, :string
    add_column :applications, :contract_exp, :string
    add_column :applications, :as_is_val, :string
    add_column :applications, :rehab_funds, :string
    add_column :applications, :arv, :string
    add_column :applications, :arv_just, :string
    add_column :applications, :purch_date, :string
    add_column :applications, :purch_price, :decimal
    add_column :applications, :verif_improv, :decimal
    add_column :applications, :payoff, :decimal
    add_column :applications, :hard_money, :boolean
    add_column :applications, :lender_name, :string
    add_column :applications, :lender_phone, :string
    add_column :applications, :rented, :boolean
    add_column :applications, :sectioneight, :boolean
    add_column :applications, :mtm, :boolean
    add_column :applications, :management, :boolean
    add_column :applications, :mgmt_fee, :decimal
  end
end
