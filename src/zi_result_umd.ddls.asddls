@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Result interface view Unmanaged'
@Metadata.ignorePropagatedAnnotations: true

define view entity ZI_RESULT_UMD 
as select from zresult_umd
association to parent ZI_STUDENT_UMD as _student on $projection.Id = _student.Id

{
    key id as Id,
    key course as Course,
    key semester as Semester,
    semresult as Semresult,
    _student
}
