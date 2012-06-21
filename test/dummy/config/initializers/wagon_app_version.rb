Wagons.app_version = '1.0.0'

Wagons.all.each do |wagon|
  unless wagon.app_requirement.satisfied_by?(Wagons.app_version)
    raise "#{wagon.gem_name} requires application version #{wagon.app_requirement}; got #{Wagons.app_version}"
  end
end
