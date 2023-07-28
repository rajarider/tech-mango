class TicketSerializer < ActiveModel::Serializer
   attributes :id, :request_number, :sequence_number, :request_type, :date_times, :primary_service_area_code, :additional_service_area_codes, :dig_site_info, :created_at, :updated_at, :custom
    has_many :excavators, serializer: ExcavatorSerializer 
   def custom
      "success"
   end
end