class AddDashboardsTable < ActiveRecord::Migration[5.2]
  def change

    create_table :dashboards do |t|
      t.string :text
      t.integer :order

      t.belongs_to :user
    end

  end
end
