json.extract! room, :id, :nameRoom, :maxSlot, :statusRoom, :numOfPeople, :area_id, :created_at, :updated_at
json.url room_url(room, format: :json)
