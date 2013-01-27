class CreatePsychophysiologicalAlterations < ActiveRecord::Migration
  def change
    create_table :psychophysiological_alterations do |t|
      t.string :name

      t.timestamps
    end
  end
end
