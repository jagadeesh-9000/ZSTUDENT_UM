@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'consumption'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZC_RESULT_UMD as projection on ZI_RESULT_UMD
{
    key Id,
    key Course,
    key Semester,
    Semresult,
    /* Associations */
    _student
}
