class CreateMicroSite < ActiveRecord::Migration[6.1]
  def change
    create_table :micro_sites do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.timestamps
    end
  end
end
