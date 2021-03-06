class AddAuctionsTable < ActiveRecord::Migration[5.2]
  def change
    create_table :auctions do |t|
      t.timestamps()

      t.string :domain_name, null: false
      t.datetime :ends_at, null: false
      t.datetime :starts_at, null: false, default: -> { 'now()' }
    end

    add_index :auctions, :domain_name
    add_index :auctions, :ends_at
  end
end
