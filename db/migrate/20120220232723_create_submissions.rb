class CreateSubmissions < ActiveRecord::Migration
  def change
    create_table :submissions do |t|
      t.string :blurb
      t.string :link
      t.has_attached_file :photo

      t.timestamps
    end
  end
end
