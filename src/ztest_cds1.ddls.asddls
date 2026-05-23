@EndUserText.label: 'Test'
define root view entity Ztest_cds1
 as select from I_Product
{
    key Product,
    ProductExternalID,
    ProductOID,
    ProductType
}
