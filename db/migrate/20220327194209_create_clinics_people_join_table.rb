class CreateClinicsPeopleJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :clinics, :people
  end
end
