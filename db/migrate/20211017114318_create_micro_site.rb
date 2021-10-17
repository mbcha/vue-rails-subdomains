class CreateMicroSite < ActiveRecord::Migration[6.1]
  def change
    create_table :micro_sites do |t|
      t.references :user, index: true, foreign_key: true, null: false
      t.string :subdomain, index: { unique: true }
      t.string :header_image_url
      t.string :title
      t.string :description
      t.timestamps
    end
  end
end
