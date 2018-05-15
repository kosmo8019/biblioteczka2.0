class CreateKsiazkas < ActiveRecord::Migration[5.2]
  def change
    create_table :ksiazkas do |t|
      t.string :tytul
      t.text :opis
      t.string :autor

      t.timestamps
    end
  end
end
