def nyc_pigeon_organizer(data)
  # write your code here!
  return_hash = {}
  data.each do |spec_key , spec_values|
    spec_values.each do | spec_value_key , spec_value_holders |
      spec_value_holders.each do |name|
          if return_hash[name] == nil
            return_hash[name] = {}
          end
          if return_hash[name][spec_key] == nil
              return_hash[name][spec_key] =[spec_value_key.to_s]
          else
             return_hash[name][spec_key] << spec_value_key.to_s
          end
      end
    end
  end
       return_hash
end
