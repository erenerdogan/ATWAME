class CreateReports < ActiveRecord::Migration
  def up
    create_table :reports do |t|
    	t.text "report"
    	t.references :user
    	t.references :content
      t.timestamps
    end
  end

  def down
  	 drop_table :reports
  end
end
