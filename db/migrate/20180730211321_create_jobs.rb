class CreateJobs < ActiveRecord::Migration[5.2]
  def change
    create_table :jobs do |t|
      t.string :image_url
      t.string :title
      t.string :company
      t.text :description
      t.string :locale
      t.string :job_url
      t.references :tag, foreign_key: true

      t.timestamps
    end
  end
end
