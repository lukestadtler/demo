class CreateRecSizes < ActiveRecord::Migration[5.0]
  def change
    create_table :rec_sizes do |t|

      t.timestamps
    end
  end
end
