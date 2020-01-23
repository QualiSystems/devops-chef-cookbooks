time_zone = node['box_settings']['time_zone']
timezone 'Set the hosts timezone to #{time_zone}' do
  timezone time_zone
end