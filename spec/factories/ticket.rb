FactoryBot.define do
  factory :ticket do
    sequence(:request_number) { |n| "REQ#{n}" }
    sequence(:sequence_number) { |n| "SEQ#{n}" }
    request_type { 'Some Type' }
    date_times { { 'start_time' => '2023-07-27T12:00:00Z', 'end_time' => '2023-07-27T13:00:00Z' }.to_json }
    primary_service_area_code { { 'code' => 'ABC', 'sub_code' => 'XYZ' }.to_json }
  end
end