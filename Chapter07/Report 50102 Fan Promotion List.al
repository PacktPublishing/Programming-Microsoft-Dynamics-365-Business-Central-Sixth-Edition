report 50102 "Fan Promotion List"
{
    DefaultLayout = Word;
    WordLayout = './FanPromotionList.docx';
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = Basic;

    dataset
    {
        dataitem(DataItemName; "Radio Show Fan")
        {
            column(Name; Name) { }
            column(Address; Address) { }
            column(Address_2; "Address 2") { }
            column(City; City) { }
            column(Post_Code; "Post Code") { }
            column(Country_Region_Code; "Country/Region Code") { }
            column(CountryName; CountryName) { }
            trigger OnAfterGetRecord()
            begin
                //Look up the Country Name using the Country/Region Code
                CountryRegion.Get("Country/Region Code");
                CountryName := CountryRegion.Name;

                //Calculate the fan's age
                FanAge := ROUND(((WORKDATE - "Birth Date") / 365), 1.0, '<');

                //Select Fans to receive promotional material
                SelectThisFan := FALSE;
                IF Age12OrLess AND (FanAge <= 12) THEN
                    SelectThisFan := TRUE;
                IF Age13to18 AND (FanAge > 12) AND (FanAge < 19) THEN
                    SelectThisFan := TRUE;
                IF Age19to34 AND (FanAge > 18) AND (FanAge < 35) THEN
                    SelectThisFan := TRUE;
                IF Age35to50 AND (FanAge > 34) AND (FanAge < 51) THEN
                    SelectThisFan := TRUE;
                IF AgeOver50 AND (FanAge > 50) THEN
                    SelectThisFan := TRUE;
                IF Male AND (Gender = Gender::Male) THEN
                    SelectThisFan := TRUE;
                IF Female AND (Gender = Gender::Female) THEN
                    SelectThisFan := TRUE;

                //If this Fan not selected, skip this Fan record on report
                IF SelectThisFan <> TRUE THEN
                    CurrReport.SKIP;
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(Options)
                {
                    field(Age12orLess; Age12orLess) { ApplicationArea = Basic; Caption = 'Age 12 or less'; }
                    field(Age13to18; Age13to18) { ApplicationArea = Basic; Caption = 'Age 13 to 18'; }
                    field(Age19to34; Age19to34) { ApplicationArea = Basic; Caption = 'Age 19 to 34'; }
                    field(Age35to50; Age35to50) { ApplicationArea = Basic; Caption = 'Age 34 to 50'; }
                    field(AgeOver50; AgeOver50) { ApplicationArea = Basic; Caption = 'Age over 50'; }
                    field(Male; Male) { ApplicationArea = Basic; Caption = 'Male'; }
                    field(Female; Female) { ApplicationArea = Basic; Caption = 'Female'; }
                }
            }
        }
    }
    var
        CountryRegion: Record "Country/Region";
        CountryName: Text;
        Age12orLess: Boolean;
        Age13to18: Boolean;
        Age19to34: Boolean;
        Age35to50: Boolean;
        AgeOver50: Boolean;
        Male: Boolean;
        Female: Boolean;
        SelectThisFan: Boolean;
        FanAge: Integer;
}