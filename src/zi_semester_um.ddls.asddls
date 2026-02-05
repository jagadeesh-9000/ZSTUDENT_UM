@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Semester view Unmanaged'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_SEMESTER_UM as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name:'ZDOM_SEMUMD'  )
{
key domain_name,
key value_position,
@Semantics.language: true
key language,
value_low as value,
@Semantics.text: true
text as Description
 
}
