class DoNothingYet < ActiveRecord::Migration[6.1]
  def change
  end

  # describe changes to be made to the current database
  def up; end

  # how to undo the code that's in the up method. revert.
  def down; end

  # action that does both the up and down functions.
  def change; end
end
