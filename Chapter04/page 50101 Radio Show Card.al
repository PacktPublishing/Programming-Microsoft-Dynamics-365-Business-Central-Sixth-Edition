page 50101 "Radio Show Card"
{
    PageType = Card;
    SourceTable = "Radio Show";
    ApplicationArea = All;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("No."; Rec."No.") { Importance = Promoted; }
                field("Radio Show Type"; Rec."Radio Show Type") { Importance = Promoted; }
                field("Name"; Rec."Name") { Importance = Promoted; }
                field("Run Time"; Rec."Run Time") { }
                field(Frequency; Rec.Frequency) { }
                field("Host Code"; Rec."Host Code") { }
                field("Host Name"; Rec."Host Name") { }
            }
            group(Requirements)
            {
                field("PSA Planned Quantity"; Rec."PSA Planned Quantity") { }
                field("Ads Planned Quantity"; Rec."Ads Planned Quantity") { }
                field("News Required"; Rec."News Required") { }
                field("News Duration"; Rec."News Duration") { }
                field("Sports Required"; Rec."Sports Required") { }
                field("Sports Duration"; Rec."Sports Duration") { }
                field("Weather Required"; Rec."Weather Required") { }
                field("Weather Duration"; Rec."Weather Duration") { }
            }
            group(Statistics)
            {
                field("Average Listeners"; Rec."Average Listeners") { }
                field("Audience Share"; Rec."Audience Share") { Importance = Promoted; }
                field("Advertising Revenue"; Rec."Advertising Revenue") { }
                field("Royalty Cost"; Rec."Royalty Cost") { }
            }
        }
    }
}