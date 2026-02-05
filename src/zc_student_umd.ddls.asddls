@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'consumption'
@Metadata.ignorePropagatedAnnotations: true
define root view entity ZC_STUDENT_UMD provider contract transactional_query as projection on ZI_STUDENT_UMD
{
    key Id,
    Studentid,
    Firstname,
    Lastname,
    Studentage,
    Course,
    Courseduration,
    Studentstatus,
    Gender,
    Dob,
    Gendersec,
    Lastchangedat,
    Locallastchangedat,
    /* Associations */
    _results
}
