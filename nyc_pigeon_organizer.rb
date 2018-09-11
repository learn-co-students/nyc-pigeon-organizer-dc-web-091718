def nyc_pigeon_organizer(data)
	org_hash = {}
		data.each do |trait, stats|
			stats.each do |stat, names|
				names.each do |name|
				
					if !org_hash.key?(name)
						org_hash[name] = {
							color: [],
							gender: [],
							lives: []
						}
					end
					org_hash[name][trait] << stat.to_s
					
				end
			end

		end
	org_hash
end