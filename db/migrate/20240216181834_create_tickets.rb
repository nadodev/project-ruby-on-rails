class CreateTickets < ActiveRecord::Migration[7.1]
  def change
    create_table :tickets do |t|
      t.string :title
      t.boolean :status
      t.string :image
      t.text :descricao
      t.timestamps
    end
  end
end
