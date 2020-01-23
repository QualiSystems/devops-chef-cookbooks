powershell_script "install DSCR_PowerPlan module" do
  code "Install-Module DSCR_PowerPlan -Force"
  not_if "(Get-Module DSCR_PowerPlan -list) -ne $null"
end

dsc_resource "Never Sleep" do
  resource :cPowerPlanSetting
  property :PlanGuid, "Active"
  property :SettingGuid, "STANDBYIDLE"
  property :Value, 0
  property :AcDc, "Both"
end