json.array!(@in_comings) do |in_coming|
  json.extract! in_coming, :id, :house_id, :params, :update_reason, :house_unit_id, :ambient_temp, :temp, :ct1_realPower, :ct2_realPower, :ct3_realPower, :ct4_realPower, :ct1_Vrms, :time_stamp
  json.url in_coming_url(in_coming, format: :json)
end
