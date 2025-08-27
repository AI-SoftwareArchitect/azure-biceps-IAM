param principalId string      // Kullanıcı ya da Service Principal ID
param roleDefinitionId string // Rolün ID'si (örn. Reader)
param scope string            // Nerede yetki vereceksin (örn. RG id)

resource roleAssignment 'Microsoft.Authorization/roleAssignments@2020-04-01-preview' = {
  name: guid(principalId, roleDefinitionId, scope)
  properties: {
    principalId: principalId
    roleDefinitionId: roleDefinitionId
    scope: scope
  }
}
