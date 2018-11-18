json.extract! paymentmanagement, :id, :dayPM, :guest_id, :service_id, :room_id, :electricity, :internet, :water, :roomPrice, :debt, :created_at, :updated_at
json.url paymentmanagement_url(paymentmanagement, format: :json)
