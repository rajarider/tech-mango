class Ticket < ApplicationRecord

  has_many :excavators

  validates :request_number, :sequence_number, :request_type, presence: true
  validates :request_number, :sequence_number, uniqueness: true
  validates :date_times, :primary_service_area_code, presence: true

  
  validate :validate_date_times_format
  validate :validate_primary_service_area_code_format

  # Custom validation methods
  def validate_date_times_format
    begin
      date_times.as_json
    rescue
      errors.add(:date_times, "is not a valid JSON")
    end
  end

  def validate_primary_service_area_code_format
    begin
     primary_service_area_code.as_json
    rescue
      errors.add(:primary_service_area_code, "is not a valid JSON")
    end
  end

  def polygon_data(data)
  	  data_str = data.gsub('(', '').gsub(')','')
      data_arr = data_str.split(',')
      data_arr.inject([]) do |polygon, dat|
      	lat_lng = dat.split(' ')
      	polygon.push({lat: lat_lng[0], lng: lat_lng[1]})
      end
  end


end
