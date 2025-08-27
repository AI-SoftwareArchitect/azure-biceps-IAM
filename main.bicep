param userPrincipalId string
param location string = resourceGroup().location

// Resource Group içindeki scope
var scope = resourceGroup().id

// Reader rolü ID'si (Azure'da sabittir)
var readerRoleId = subscriptionResourceId(
  'Microsoft.Authorization/roleDefinitions',
  'acdd72a7-3385-48ef-bd42-f606fba81ae7' // Reader
)

// Modülü çağır
module readerRole './roleAssignment.bicep' = {
  name: 'assignReaderRole'
  params: {
    principalId: userPrincipalId
    roleDefinitionId: readerRoleId
    scope: scope
  }
}
