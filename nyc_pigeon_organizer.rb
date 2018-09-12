require 'pry'

def nyc_pigeon_organizer(data)
  pigeon_list = {}
  temp_hash = {}
  
  data.each do |cgl, cgl_categories|
    cgl_categories.each do |key, value|
      value.each do |pigeon_name|
        
        if cgl == :color && cgl_categories[key].include?(pigeon_name)
           if temp_hash[pigeon_name] == nil
             temp_hash[pigeon_name] = [key.to_s]
           else
             temp_hash[pigeon_name] << key.to_s
           end
        end
          
        temp_hash.each do |names, colors|
          if names == pigeon_name
            pigeon_list[pigeon_name] = {}
            pigeon_list[pigeon_name][:color] = temp_hash[names]
          end
        end
     
      end
    end
  end
  pigeon_list
  
  data.each do |cgl, cgl_categories|
    cgl_categories.each do |key, value|
      if cgl == :gender
        value.each do |name|
          if pigeon_list.include?(name)
            pigeon_list.each do |pigeon, attributes|
              pigeon_list[name][:gender] = [key.to_s]
            end
          end
        end
      end
    end
  end
  pigeon_list
  
  data.each do |cgl, cgl_categories|
    cgl_categories.each do |key, value|
      if cgl == :lives
        value.each do |name|
          if pigeon_list.include?(name)
            pigeon_list.each do |pigeon, attributes|
              pigeon_list[name][:lives] = [key.to_s]
            end
          end
        end
      end
    end
  end
  pigeon_list
end