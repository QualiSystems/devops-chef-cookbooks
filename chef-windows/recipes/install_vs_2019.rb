tempFolder = ENV['tmp']
installerPath = "#{tempFolder}\\vs_enterprise.exe"
configPath = "#{tempFolder}\\vsconfig"
vsPath = 'C:\\Program Files (x86)\\Microsoft Visual Studio\\2019\\Enterprise\\'

cookbook_file 'copy the visual studio installer configuration file' do
  source 'vsconfig'
  path configPath
  action :create
end

cookbook_file 'copy the visual studio installer' do
  source 'vs_enterprise.exe.file'
  path installerPath
  action :create
end

powershell_script "update visual studio 2019" do
  code <<-EOH
  Start-Process -FilePath "#{installerPath}" -ArgumentList --update, --quiet, --wait, --norestart -Wait -PassThru
  Start-Process -FilePath "#{installerPath}" -ArgumentList update, \"--installPath `\"#{vsPath}`\"\", --quiet, --wait, --norestart, --nocache -Wait -PassThru
  EOH
  not_if "-Not (Test-Path '#{vsPath}')"
  timeout 7200
end

powershell_script "install visual studio 2019" do
  code <<-EOH
  Start-Process -FilePath "#{installerPath}" -ArgumentList --update, --quiet, --wait, --norestart -Wait -PassThru
  Start-Process -FilePath "#{installerPath}" -ArgumentList \"--config `\"#{configPath}`\"\", --quiet, --wait, --norestart -Wait -PassThru
  EOH
  not_if "Test-Path '#{vsPath}'"
  timeout 7200
end