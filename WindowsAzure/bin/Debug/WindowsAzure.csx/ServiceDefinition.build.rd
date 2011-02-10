<?xml version="1.0" encoding="utf-8"?>
<serviceModel xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns:xsd="http://www.w3.org/2001/XMLSchema" name="WindowsAzure" generation="1" functional="0" release="0" Id="a72c51dd-4b25-4b6f-a587-edcaef87ac0f" dslVersion="1.2.0.0" xmlns="http://schemas.microsoft.com/dsltools/RDSM">
  <groups>
    <group name="WindowsAzureGroup" generation="1" functional="0" release="0">
      <componentports>
        <inPort name="MvcWebRole:Endpoint1" protocol="http">
          <inToChannel>
            <lBChannelMoniker name="/WindowsAzure/WindowsAzureGroup/LB:MvcWebRole:Endpoint1" />
          </inToChannel>
        </inPort>
      </componentports>
      <settings>
        <aCS name="MvcWebRoleInstances" defaultValue="[1,1,1]">
          <maps>
            <mapMoniker name="/WindowsAzure/WindowsAzureGroup/MapMvcWebRoleInstances" />
          </maps>
        </aCS>
        <aCS name="MvcWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="">
          <maps>
            <mapMoniker name="/WindowsAzure/WindowsAzureGroup/MapMvcWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </maps>
        </aCS>
        <aCS name="MvcWebRole:?IsSimulationEnvironment?" defaultValue="">
          <maps>
            <mapMoniker name="/WindowsAzure/WindowsAzureGroup/MapMvcWebRole:?IsSimulationEnvironment?" />
          </maps>
        </aCS>
        <aCS name="MvcWebRole:?RoleHostDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/WindowsAzure/WindowsAzureGroup/MapMvcWebRole:?RoleHostDebugger?" />
          </maps>
        </aCS>
        <aCS name="MvcWebRole:?StartupTaskDebugger?" defaultValue="">
          <maps>
            <mapMoniker name="/WindowsAzure/WindowsAzureGroup/MapMvcWebRole:?StartupTaskDebugger?" />
          </maps>
        </aCS>
      </settings>
      <channels>
        <lBChannel name="LB:MvcWebRole:Endpoint1">
          <toPorts>
            <inPortMoniker name="/WindowsAzure/WindowsAzureGroup/MvcWebRole/Endpoint1" />
          </toPorts>
        </lBChannel>
      </channels>
      <maps>
        <map name="MapMvcWebRoleInstances" kind="Identity">
          <setting>
            <sCSPolicyIDMoniker name="/WindowsAzure/WindowsAzureGroup/MvcWebRoleInstances" />
          </setting>
        </map>
        <map name="MapMvcWebRole:Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" kind="Identity">
          <setting>
            <aCSMoniker name="/WindowsAzure/WindowsAzureGroup/MvcWebRole/Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" />
          </setting>
        </map>
        <map name="MapMvcWebRole:?IsSimulationEnvironment?" kind="Identity">
          <setting>
            <aCSMoniker name="/WindowsAzure/WindowsAzureGroup/MvcWebRole/?IsSimulationEnvironment?" />
          </setting>
        </map>
        <map name="MapMvcWebRole:?RoleHostDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/WindowsAzure/WindowsAzureGroup/MvcWebRole/?RoleHostDebugger?" />
          </setting>
        </map>
        <map name="MapMvcWebRole:?StartupTaskDebugger?" kind="Identity">
          <setting>
            <aCSMoniker name="/WindowsAzure/WindowsAzureGroup/MvcWebRole/?StartupTaskDebugger?" />
          </setting>
        </map>
      </maps>
      <components>
        <groupHascomponents>
          <role name="MvcWebRole" generation="1" functional="0" release="0" software="D:\Official\Hudson\WindowsAzure\WindowsAzure\bin\Debug\WindowsAzure.csx\roles\MvcWebRole" entryPoint="base\x86\WaHostBootstrapper.exe" parameters="base\x86\WaIISHost.exe " memIndex="1792" hostingEnvironment="frontendadmin" hostingEnvironmentVersion="2">
            <componentports>
              <inPort name="Endpoint1" protocol="http" portRanges="80" />
            </componentports>
            <settings>
              <aCS name="Microsoft.WindowsAzure.Plugins.Diagnostics.ConnectionString" defaultValue="" />
              <aCS name="?IsSimulationEnvironment?" defaultValue="" />
              <aCS name="?RoleHostDebugger?" defaultValue="" />
              <aCS name="?StartupTaskDebugger?" defaultValue="" />
              <aCS name="__ModelData" defaultValue="&lt;m role=&quot;MvcWebRole&quot; xmlns=&quot;urn:azure:m:v1&quot;&gt;&lt;r name=&quot;MvcWebRole&quot;&gt;&lt;e name=&quot;Endpoint1&quot; /&gt;&lt;/r&gt;&lt;/m&gt;" />
            </settings>
            <resourcereferences>
              <resourceReference name="DiagnosticStore" defaultAmount="[4096,4096,4096]" defaultSticky="true" kind="Directory" />
              <resourceReference name="EventStore" defaultAmount="[1000,1000,1000]" defaultSticky="false" kind="LogStore" />
            </resourcereferences>
          </role>
          <sCSPolicy>
            <sCSPolicyIDMoniker name="/WindowsAzure/WindowsAzureGroup/MvcWebRoleInstances" />
          </sCSPolicy>
        </groupHascomponents>
      </components>
      <sCSPolicy>
        <sCSPolicyID name="MvcWebRoleInstances" defaultPolicy="[1,1,1]" />
      </sCSPolicy>
    </group>
  </groups>
  <implements>
    <implementation Id="5dc9f5a7-9120-45ec-a1b9-75f380718a59" ref="Microsoft.RedDog.Contract\ServiceContract\WindowsAzureContract@ServiceDefinition.build">
      <interfacereferences>
        <interfaceReference Id="9c779d17-a89b-41cc-93fa-62f692680470" ref="Microsoft.RedDog.Contract\Interface\MvcWebRole:Endpoint1@ServiceDefinition.build">
          <inPort>
            <inPortMoniker name="/WindowsAzure/WindowsAzureGroup/MvcWebRole:Endpoint1" />
          </inPort>
        </interfaceReference>
      </interfacereferences>
    </implementation>
  </implements>
</serviceModel>