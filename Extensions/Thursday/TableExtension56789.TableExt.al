tableextension 56789 TableExtension56789 extends Customer
{
    fields
    {
        field(56789;Rating;Option)
        {
            DataClassification = EndUserIdentifiableInformation;
            OptionMembers = Bronze, Silver, Gold;
        }
    }
}
