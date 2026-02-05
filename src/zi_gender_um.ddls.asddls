@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Gender interface view Unmanaged'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_GENDER_UM as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name: 'Zdom_GENDER_UMD'  )
{
key domain_name,
key value_position,
@Semantics.language: true
key language,
@Semantics.text: true
value_low as value,
text as Description 
}
