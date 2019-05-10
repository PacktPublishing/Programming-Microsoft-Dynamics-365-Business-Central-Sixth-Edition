table 50100 "Radio Show"
{
    fields
    {
        field(1; "No."; Code[20]) { }
        field(10; "Radio Show Type"; Code[10]) { TableRelation = "Radio Show Type"; }
        field(20; "Name"; Text[50]) { }
        field(40; "Run Time"; Duration) { }
        field(50; "Host Code"; Code[20]) { }
        field(60; "Host Name"; Text[50]) { }
        field(100; "Average Listeners"; Decimal) { }
        field(110; "Audience Share"; Decimal) { }
        field(120; "Advertising Revenue"; Decimal) { }
        field(130; "Royalty Cost"; Decimal) { }
        field(1000; Frequency; Option) { OptionMembers = ,Hourly,Daily,Weekly,Monthly; }
        field(1010; "PSAs Required"; Boolean) { }
        field(1011; "PSA Count"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count ("Playlist Line" where
                ("No." = field ("No."), Type = const (Item), "Data Format" = const (PSA)));
            Editable = false;
        }
        field(1020; "Ads Required"; Boolean) { }
        field(1021; "Ads Count"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count ("Playlist Line" where
                ("No." = field ("No."), Type = const (Item), "Data Format" = const (Advertisement)));
            Editable = false;
        }
        field(1030; "News Required"; Boolean) { }
        field(1040; "News Duration"; Duration) { }
        field(1050; "Sports Required"; Boolean) { }
        field(1060; "Sports Duration"; Duration) { }
        field(1070; "Weather Required"; Boolean) { }
        field(1080; "Weather Duration"; Duration) { }
        field(1090; "Date Filter"; Date) { FieldClass = FlowFilter; }
    }
    keys
    {
        key(PK; "No.") { }
        key(Name; Name) { }
        key(HostName; "Host Name") { }
        key(RadioShowType; "Radio Show Type") { }

    }
    fieldgroups
    {
        fieldgroup(DropDown; "No.", Name, "Host Name") { }
        fieldgroup(Brick; "No.", Name, "Audience Share") { }
    }
    trigger OnDelete()
    var
        x: page 9006;
        y: page "SO Processor Activities";
        z: Record "My Item";
    begin

    end;

    procedure SetStyle(): Text
    var
        i: Integer;
    begin
        if "News Required" then
            exit('Favorable');
        for i := 10 downto 1 do;
        if "Weather Required" then
            //      CDM 7.00.01
            //            exit('Unfavorable');
            exit('Attention');
        if "Sports Required" then
            exit('Strong');
    end;
}
