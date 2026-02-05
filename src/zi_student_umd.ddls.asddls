@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student interface view Unmanaged'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
define root view entity ZI_STUDENT_UMD
  as select from zstudent_umd
  association [1..*] to ZI_GENDER_UM  as _gender on $projection.Gender = _gender.value
  composition [0..*] of ZI_RESULT_UMD as _results
  

{
  key id                  as Id,
      studentid           as Studentid,
      firstname           as Firstname,
      lastname            as Lastname,
      studentage          as Studentage,
      course              as Course,
      courseduration      as Courseduration,
      studentstatus       as Studentstatus,
      gender              as Gender,
      dob                 as Dob,
      _gender.Description as Gendersec,
      _results,
      lastchangedat       as Lastchangedat,
      locallastchangedat  as Locallastchangedat

}
