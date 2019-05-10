codeunit 50148 "Radio Extension Init"
{

    trigger OnRun()
    begin
        CreateRadioShows();
        CreateRadioShowType();
        CreatePlayList();
        CreateFan();
    end;

    procedure CreateRadioShows()
    begin
        HelperCreateRadioShow('RS001', 'TALK', 'CeCe and Friends', 020000T - 000000T, 'CECE', 'CeCe');
        HelperCreateRadioShow('RS002', 'MUSIC', 'Alec Rocks and Bobs', 020000T - 000000T, 'ALEC', 'Alec');
        HelperCreateRadioShow('RS003', 'CALL-IN', 'Ask Cole!', 020000T - 000000T, 'Cole', 'Cole');
        HelperCreateRadioShow('RS004', 'CALL-IN', 'What do you think?', 020000T - 000000T, 'WESLEY', 'Wesley');
        HelperCreateRadioShow('RS005', 'MUSIC', 'Quiet Times', 020000T - 000000T, 'SASKIA', 'Saskia');
        HelperCreateRadioShow('RS006', 'NEWS', 'World News', 020000T - 000000T, 'DAAN', 'Daan');
        HelperCreateRadioShow('RS007', 'ROCK', 'Rock Classics', 020000T - 000000T, 'JOSEPH', 'Josephine');
        HelperCreateRadioShow('RS008', 'MUSIC', 'Baby Talk', 020000T - 000000T, 'KRISTAL', 'Kristel');
    end;

    procedure CreateRadioShowType()
    begin
        HelperCreateShowType('MUSIC', 'Music and Misc');
        HelperCreateShowType('CALL-IN', 'Talk and Listener Interview');
        HelperCreateShowType('TALK', 'Mostly Talk');
        HelperCreateShowType('NEWS', 'In-depth Stories');
        HelperCreateShowType('ROCK', '70-ies and 80-ies Rock');
    end;

    procedure CreateFan()
    begin
        HelperCreateFan('FAN01', 'RS002', 'Maryann Smith', 'smith925@tigerfire.com', WorkDate);
        HelperCreateFan('FAN02', 'RS002', 'Andrew Good', 'agood@libertystuff.com', WorkDate);
    end;

    procedure CreatePlayList()
    begin
        HelperCreatePlaylistHeader('221', 'RS001', 'CeCe and Friends', WorkDate, 100000T, 120000T);
        HelperCreatePlaylistHeader('222', 'RS002', 'Alec Rocks and Bobs', WorkDate, 120000T, 140000T);
        HelperCreatePlaylistHeader('223', 'RS003', 'Ask Cole!', WorkDate, 140000T, 150000T);
        HelperCreatePlaylistHeader('224', 'RS004', 'What do you think?', WorkDate, 150000T, 160000T);
        HelperCreatePlaylistHeader('225', 'RS005', 'Quiet Times', WorkDate, 160000T, 180000T);
        HelperCreatePlaylistHeader('226', 'RS006', 'World News', WorkDate, 180000T, 190000T);
        HelperCreatePlaylistHeader('227', 'RS007', 'Rock Classics', WorkDate, 190000T, 200000T);
        HelperCreatePlaylistHeader('228', 'RS008', 'Baby Talk', WorkDate, 200000T, 220000T);
    end;

    procedure TestRadioShows()
    begin
    end;

    procedure HelperCreateRadioShow(No: Code[20]; ShowCode: Code[10]; Name: Text; RunTime: Duration; HostCode: Code[10]; HostName: Text)
    var
        RadioShow: Record "Radio Show";
    begin
        RadioShow."No." := No;
        RadioShow."Radio Show Type" := ShowCode;
        RadioShow.Name := Name;
        RadioShow."Run Time" := RunTime;
        RadioShow."Host Code" := HostCode;
        RadioShow."Host Name" := HostName;
        RadioShow.Insert;
    end;

    procedure HelperCreateShowType("Code": Code[10]; Descr: Text)
    var
        RadioShowType: Record "Radio Show Type";
    begin
        RadioShowType.Code := Code;
        RadioShowType.Description := Descr;
        RadioShowType.Insert;
    end;

    procedure HelperCreateFan(No: Code[20]; RadioShowNo: Code[20]; Name: Text; Email: Text; LastContact: Date)
    var
        RadioShowFan: Record "Radio Show Fan";
    begin
        RadioShowFan."No." := No;
        RadioShowFan."Radio Show No." := RadioShowNo;
        RadioShowFan.Name := Name;
        RadioShowFan."E-Mail" := Email;
        RadioShowFan."Last Contacted" := LastContact;
        RadioShowFan.Insert;
    end;

    procedure HelperCreatePlaylistHeader(No: Code[20]; RadioShowNo: Code[20]; Descr: Text; BroadCastDate: Date; StartTime: Time; EndTime: Time)
    var
        PlaylistHeader: Record "Playlist Header";
    begin
        with PlaylistHeader do begin
            "No." := No;
            "Radio Show No." := RadioShowNo;
            Description := Descr;
            "Broadcast Date" := BroadCastDate;
            "Start Time" := StartTime;
            "End Time" := EndTime;
            Duration := EndTime - StartTime;
            Insert;
        end;
    end;
}

