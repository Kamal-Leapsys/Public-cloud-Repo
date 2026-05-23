@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Test ISD'
@Metadata.ignorePropagatedAnnotations: true

//@ClientHandling.algorithm: #SESSION_VARIABLE
//@AccessControl.authorizationCheck: #MANDATORY
@ObjectModel.usageType: { dataClass: #TRANSACTIONAL, serviceQuality: #A, sizeCategory: #XXL }
@VDM.viewType: #BASIC
//@EndUserText.label: 'Input Service Distribution Basic CDS'
//@Metadata.ignorePropagatedAnnotations:true
@ObjectModel.supportedCapabilities: [ #SQL_DATA_SOURCE , #CDS_MODELING_DATA_SOURCE  ]

define view entity ztest_cds2 as select from I_IN_InputSrvcDistrBasic as a
{
   a.AccountingDocument,
   a.AccountingDocumentType,
   a.AccountingDocumentItem,
   a.FiscalYear,
   a.CompanyCode,
   a.InputServiceDistrBusPlace,
   a.ReceivingBusPlace,
//   @Semantics.amount.currencyCode : 'j_1ig_isd_distr.waers'
//   @Semantics: { amount : {currencyCode: 'CompanyCode'} }
//   @Semantics.amount.currencyCode : 'j_1ig_isd_distr.waers'
   @Semantics: { amount : {currencyCode: 'Currency'} }
   a.CntrlGST,
      @Semantics: { amount : {currencyCode: 'Currency'} }
   a.StateGST,
      @Semantics: { amount : {currencyCode: 'Currency'} }
   a.UnionTerritoryGST,
      @Semantics: { amount : {currencyCode: 'Currency'} }
   a.IntegratedGST,
      @Semantics: { amount : {currencyCode: 'Currency'} }
   a.InputServiceDistrTaxCESS,
      @Semantics: { amount : {currencyCode: 'Currency'} }
   a.ReceivingBusPlaceCentralGST,
      @Semantics: { amount : {currencyCode: 'Currency'} }
   a.ReceivingBusPlaceStateGST,
      @Semantics: { amount : {currencyCode: 'Currency'} }
   a.ReceivingBusPlaceUnionGST,
      @Semantics: { amount : {currencyCode: 'Currency'} }
   a.ReceivingBusPlaceIntegratedGST,
      @Semantics: { amount : {currencyCode: 'Currency'} }
   a.ReceivingBusPlaceCESS,
   
   a.TaxCode,
   a.Currency,
   a.PostingDate,
   a.ReceivingAccountingDocument,
   a.IN_HSNOrSACCode,
   a.TaxIsNotDeductible,
   a.IN_InptSrvcDistrDocType,
   a.IN_InptSrvcDistrInvc,
   a.IN_InptSrvcDistrInvcFsclYr
}
