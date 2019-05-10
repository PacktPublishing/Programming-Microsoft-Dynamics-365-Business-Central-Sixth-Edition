report 50101 "Shows by Type"
{
    DefaultLayout = Word;
    WordLayout = './Shows by Type.docx';
    UsageCategory = ReportsAndAnalysis;

    dataset
    {
        dataitem(RadioShowType; "Radio Show Type")
        {
            column(UserComment; UserComment) { }
            column(Code_RadioShowType; Code) { IncludeCaption = true; }
            column(Description_RadioShowType; Description) { IncludeCaption = true; }
            dataitem(RadioShow; "Radio Show")
            {
                DataItemLink = "Radio Show Type" = FIELD (Code);
                DataItemTableView = SORTING ("Radio Show Type");
                PrintOnlyIfDetail = true;
                column(No_RadioShow; "No.") { IncludeCaption = true; }
                column(Name_RadioShow; Name) { IncludeCaption = true; }
                column(RunTime_RadioShow; "Run Time") { IncludeCaption = true; }
                dataitem(PlaylistHeader; "Playlist Header")
                {
                    DataItemLink = "Radio Show No." = FIELD ("No.");
                    DataItemTableView = SORTING ("No.");
                    column(PostingDate_PlaylistHeader; "Broadcast Date") { IncludeCaption = true; }
                    column(StartTime_PlaylistHeader; "Start Time") { IncludeCaption = true; }
                }
            }
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
                    field(UserComment; UserComment)
                    {
                        ApplicationArea = Basic;
                        Caption = 'User Comment';
                    }
                }
            }
        }
    }

    labels
    {
        ReportTitle = 'Show Schedule by Type';
    }

    // trigger OnInitReport()
    // begin
    //     //IF CONFIRM('Loop %1, Item No. %2\OK to continue?',FALSE,'14','BX0925') THEN;
    //     OptionNo := StrMenu('Blue,Plaid,Yellow,Hot Pink,Orange,Unknown', 6, 'Which of these is not like the others?')
    // end;

    var
        UserComment: Text;
        OptionNo: Integer;
}

