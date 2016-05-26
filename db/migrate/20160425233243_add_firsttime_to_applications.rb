class AddFirsttimeToApplications < ActiveRecord::Migration
  def change
    add_column :applications, :firsttime, :boolean
    add_column :applications, :propsown, :integer
    add_column :applications, :purchsixmo, :integer
    add_column :applications, :purchtwevelemo, :integer
    add_column :applications, :purchlife, :integer
    add_column :applications, :avg_price, :decimal
    add_column :applications, :twelve_in_tweleve, :boolean
    add_column :applications, :bk, :boolean
    add_column :applications, :sixty_days, :boolean
    add_column :applications, :last_fc_ss, :boolean
    add_column :applications, :ssn, :string
    add_column :applications, :citizen, :boolean
    add_column :applications, :credit_score, :string
  end
end
