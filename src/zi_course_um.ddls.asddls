@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Course interface view Managed'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_COURSE_UM as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name:'ZDOM_COURSE_UMD' )
{
   key domain_name,
   key value_position,
   @Semantics.language: true
   key language,
   value_low as value,
   @Semantics.text: true
   text as Description
}
