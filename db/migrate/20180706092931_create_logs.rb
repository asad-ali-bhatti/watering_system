class CreateLogs < ActiveRecord::Migration[5.2]
  def change
    create_table :logs do |t|
      t.boolean :status

      t.timestamps
    end
  end
end
