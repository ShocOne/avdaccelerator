using '../deploy-baseline.bicep'

param deploymentPrefix = 'AVD1'
param avdUseCustomNaming = false
param avdSessionHostLocation = 'eastus2'
param avdManagementPlaneLocation = 'eastus2'
param avdDeployMonitoring = false
param avdWorkloadSubsId = '<<subscriptionId>>' // value needs to be provided
param avdEnterpriseAppObjectId = '<<avdObjectID>>' // Value needs to be provided when enabling start VM on connect or scaling plans
param avdVmLocalUserName = '<<localUserName>>' // value needs to be provided
param avdVmLocalUserPassword = '<<localUserPassword>>' // value needs to be provided
param avdIdentityServiceProvider = 'ADDS'
param createIntuneEnrollment = false
param securityPrincipalId = ''
param securityPrincipalName = ''
param identityDomainName = 'none' // value needs to be provided when using ADDS or EntraDS as identity service provider
param avdDomainJoinUserName = 'none'
param avdDomainJoinUserPassword = 'none'
param avdOuPath = ''
param avdHostPoolType = 'Pooled'
param hostPoolPreferredAppGroupType = 'Desktop'
param avdPersonalAssignType = 'Automatic'
param avdHostPoolLoadBalancerType = 'BreadthFirst'
param hostPoolMaxSessions = 8
param avdStartVmOnConnect = true
param avdHostPoolRdpProperties = 'audiocapturemode:i:1;audiomode:i:0;drivestoredirect:s:;redirectclipboard:i:1;redirectcomports:i:1;redirectprinters:i:1;redirectsmartcards:i:1;screen mode id:i:2'
param avdDeployScalingPlan = true
param createAvdVnet = true
param existingVnetAvdSubnetResourceId = ''
param existingVnetPrivateEndpointSubnetResourceId = ''
param existingHubVnetResourceId = ''
param avdVnetworkAddressPrefixes = '10.10.0.0/23'
param vNetworkAvdSubnetAddressPrefix = '10.10.0.0/24'
param vNetworkPrivateEndpointSubnetAddressPrefix = '10.10.1.0/27'
param customDnsIps = '<<customDnsIp>>' // value needs to be provided when creating new AVD vNet and using ADDS or EntraDS identity service providers
param createPrivateDnsZones = false
param avdVnetPrivateDnsZoneFilesId = '<<PrivateDnsZoneFilesId>>' // Not a mandatory parameter
param avdVnetPrivateDnsZoneKeyvaultId = '<<PrivateDnsZoneKeyvaultId>>' // Not a mandatory parameter
param vNetworkGatewayOnHub = false
param createAvdFslogixDeployment = true
param createMsixDeployment = false
param fslogixFileShareQuotaSize = 1
param msixFileShareQuotaSize = 1
param avdDeploySessionHosts = true
param avdDeploySessionHostsCount = 1
param avdSessionHostCountIndex = 0
param availabilityZonesCompute = true
param zoneRedundantStorage = false
param avsetFaultDomainCount = 2
param avsetUpdateDomainCount = 5
param fslogixStoragePerformance = 'Premium'
param msixStoragePerformance = 'Premium'
param avdSessionHostsSize = 'Standard_D2s_v3'
param avdSessionHostDiskType = 'Premium_LRS'
param avdOsImage = 'win11_21h2'
param managementVmOsImage = 'winServer_2022_Datacenter_smalldisk_g2'
param securityType = 'TrustedLaunch'
param secureBootEnabled = true
param vTpmEnabled = true
param useSharedImage = false
param avdImageTemplateDefinitionId = ''
param storageOuPath = ''
param createResourceTags = false
param deployAlaWorkspace = true
param alaExistingWorkspaceResourceId = ''
param avdAlaWorkspaceDataRetention = 90
param enableAcceleratedNetworking = true
param diskEncryptionKeyExpirationInDays = 60
param diskZeroTrust = false
param deployGpuPolicies = false
