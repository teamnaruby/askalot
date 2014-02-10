class CreateSlidoEvents < ActiveRecord::Migration
  def change
    create_table :slido_events do |t|
      t.references :category,   null: false, index: true
      t.integer    :uuid,       null: false
      t.string     :identifier, null: false
      t.string     :name,       null: false
      t.string     :url,        null: false
      t.datetime   :starts_at,  null: false
      t.datetime   :ends_at,    null: false

      t.timestamps
    end
  end
end
