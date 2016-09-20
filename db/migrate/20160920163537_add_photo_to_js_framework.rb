class AddPhotoToJsFramework < ActiveRecord::Migration[5.0]
  def change
    add_column :js_frameworks, :photo, :string
  end
end
