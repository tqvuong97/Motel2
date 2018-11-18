json.extract! guest, :id, :fullName, :idCard, :sex, :job, :address, :phoneNumber, :image, :statusGuest, :user_id, :room_id, :created_at, :updated_at
json.url guest_url(guest, format: :json)
