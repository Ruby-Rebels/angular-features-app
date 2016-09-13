class CreateJsFrameworks < ActiveRecord::Migration[5.0]
  def change
    create_table :js_frameworks do |t|
      t.string :name
      t.string :author
      t.string :source
      t.string :documentation

      t.timestamps
    end
  end
end
