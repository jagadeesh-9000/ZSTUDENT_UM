@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Semester Result view Unmanaged'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_SEMRES_UM as select from DDCDS_CUSTOMER_DOMAIN_VALUE_T( p_domain_name: 'ZDOM_SEMRES_UMD' )
{
    key domain_name,
    key value_position,
    @Semantics.language: true
    key language,
    value_low as value,
    @Semantics.text: true
    text as Description
}
