registry_key 'HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\System' do
  values [{
    name: 'EnableLUA',
    type: :dword,
    data: 0
  }]
  action :create
end