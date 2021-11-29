class AddTables < ActiveRecord::Migration[6.0]
  def change

    create_table :posts do |t|
      t.string :title
    end

    create_table :sections do |t|
      t.bigint :post_id
    end

  end
end
