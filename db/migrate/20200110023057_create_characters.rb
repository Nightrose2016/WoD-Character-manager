class CreateCharacters < ActiveRecord::Migration[6.0]
  def change
    create_table :characters do |t|
      t.string :character_name
      t.integer :world_id
      t.integer :user_id
      t.integer :health
      t.integer :exp
      #attributes
      #power
      t.integer :intelligence
      t.integer :strength
      t.integer :presence
      #finesse
      t.integer :wits
      t.integer :dexterity
      t.integer :manipulation
      #resistance
      t.integer :resolve
      t.integer :stamina
      t.integer :composure
      #skills
      #mental
      t.integer :academics
      t.integer :computer
      t.integer :crafts
      t.integer :investigation
      t.integer :medicine
      t.integer :occult
      t.integer :politics
      t.integer :science
      #physical
      t.integer :athletics
      t.integer :brawl
      t.integer :drive
      t.integer :firearms
      t.integer :larceny
      t.integer :stealth
      t.integer :survival
      t.integer :weaponry
      #social
      t.integer :animal_ken
      t.integer :empathy
      t.integer :expression
      t.integer :intimidation
      t.integer :persuasion
      t.integer :socialize
      t.integer :streetwise
      t.integer :subtlefuge
    end
  end
end