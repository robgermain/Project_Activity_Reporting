class CreateReleases < ActiveRecord::Migration
  def change
    create_table :releases do |t|
      t.string :name
      t.text :description
      t.boolean :is_active
      t.boolean :is_deleted
      t.date :deleted_at

      t.timestamps
    end
  end
end
