table 50102 "Playlist Header"
{
    fields
    {
        field(1; "No."; Code[20]) { }
        field(10; "Radio Show No."; code[20])
        {
            trigger OnValidate()
            var
                RadioShow: Record "Radio Show";
            begin
                if RadioShow.Get("Radio Show No.") then begin
                    "PSAs Required" := RadioShow."PSAs Required";
                    "Ads Required" := RadioShow."Ads Required";
                    "News Required" := RadioShow."News Required";
                    "Sports Required" := RadioShow."Sports Required";
                    "Weather Required" := RadioShow."Weather Required";
                end else begin
                    "PSAs Required" := false;
                    "Ads Required" := false;
                    "News Required" := false;
                    "Sports Required" := false;
                    "Weather Required" := false;
                end;
            end;
        }
        field(20; Description; Text[50]) { }
        field(30; "Broadcast Date"; Date) { }
        field(40; Duration; Duration) { }
        field(50; "Start Time"; Time)
        {
            trigger OnValidate()
            var
                RadioShow: Record "Radio Show";
            begin
                RadioShow.Get("Radio Show No.");
                "End Time" := "Start Time" + RadioShow."Run Time";
            end;

        }
        field(60; "End Time"; Time)
        {
            trigger OnValidate()
            var
                Text001: TextConst ENU = 'must be greater than Start Time';
            begin
                TestField("End Time");
                IF "End Time" <= "Start Time" THEN
                    FIELDERROR("End Time");//, Text001);
            end;
        }
        field(1010; "PSAs Required"; Boolean) { }
        field(1011; "PSA Count"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count ("Playlist Line" where
                ("No." = field ("No."), Type = const (Item), "Data Format" = const (PSA)));
            Editable = false;
        }
        field(1021; "Ads Count"; Integer)
        {
            FieldClass = FlowField;
            CalcFormula = count ("Playlist Line" where
                ("No." = field ("No."), Type = const (Item), "Data Format" = const (Advertisement)));
            Editable = false;
        }
        field(1020; "Ads Required"; Boolean) { }
        field(1030; "News Required"; Boolean) { }
        field(1040; "News Duration"; Duration) { }
        field(1050; "Sports Required"; Boolean) { }
        field(1060; "Sports Duration"; Duration) { }
        field(1070; "Weather Required"; Boolean) { }
        field(1080; "Weather Duration"; Duration) { }
    }
    keys
    {
        key(PK; "No.") { }
    }
    procedure NWSRequired(Category: Option ,News,Weather,Sports): Integer
    var
        PlaylistLine: Record "Playlist Line";
        RadioShow: Record "Radio Show";
        RadioShowType: Record "Radio Show Type";
        Cnt: Integer;
    begin
        PlaylistLine.SetRange("Document No.", "No.");
        PlaylistLine.SetRange(Type, PlaylistLine.Type::Show);
        if PlaylistLine.FindSet then repeat
                                         RadioShow.get(PlaylistLine."No.");
                                         RadioShowType.get(RadioShow."Radio Show Type");
                                         case Category of
                                             Category::News:
                                                 if RadioShowType.Code = 'News' then
                                                     Cnt += 1;
                                             Category::Weather:
                                                 if RadioShowType.Code = 'Weather' then
                                                     Cnt += 1;
                                             Category::Sports:
                                                 if RadioShowType.Code = 'Sports' then
                                                     Cnt += 1;
                                         end;
            until PlaylistLine.Next = 0;
    end;
}