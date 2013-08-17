class CreateVocabularies < ActiveRecord::Migration
  def change
    create_table :vocabularies do |t|
      t.string :word
      t.string :translated
      t.text :definition
      t.string :pronunciation
      t.string :image

      t.timestamps
    end
  end
end
