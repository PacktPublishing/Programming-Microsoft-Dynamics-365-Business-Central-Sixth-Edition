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
                field("No."; Rec."No.") { }
                field("Radio Show Type"; Rec."Radio Show Type") { }
                field("Name"; Rec."Name") { }
                field("Run Time"; Rec."Run Time") { }
                field("Host Code"; Rec."Host Code") { }
                field("Host Name"; Rec."Host Name") { }
                field("Average Listeners"; Rec."Average Listeners") { }
                field("Audience Share"; Rec."Audience Share") { }
                field("Advertising Revenue"; Rec."Advertising Revenue") { }
                field("Royalty Cost"; Rec."Royalty Cost") { }
            }
        }
    }
}