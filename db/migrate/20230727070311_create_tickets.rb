class CreateTickets < ActiveRecord::Migration[7.0]
  def change
    create_table :tickets do |t|
      t.string :request_number
      t.string :sequence_number
      t.string :request_type
      t.json :date_times
      t.json :primary_service_area_code
      t.json :additional_service_area_codes
      t.text :dig_site_info

      t.timestamps
    end
  end
end
