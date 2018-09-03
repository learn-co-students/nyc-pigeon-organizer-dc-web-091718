require 'pry'

def nyc_pigeon_organizer(data)
  pigeons = {}
  
  data.each do |attribute, attribute_details|
    attribute_details.each do |detail, names|
      names.each do |name|
        if pigeons.keys.include?(name)
          if pigeons[name].keys.include?(attribute)
            pigeons[name][attribute] << detail.to_s
          else
            pigeons[name][attribute] = [detail.to_s]
          end
        else
          pigeons[name] = {attribute => [detail.to_s]}
        end
      end
    end
  end
  
  pigeons
end