class CreateReports < ActiveRecord::Migration[5.1]
  def change
    create_table :reports do |t|
      t.string      :title
      t.text        :description
      t.references  :coworker
      t.references  :project

      t.timestamps
    end
  end
end
