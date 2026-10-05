Program SOAL10;
uses crt;

var 
Hari : string;
i : integer;

begin
    clrscr;

    //Input mau tampilkan hari ke berapa
    write ('Tampilkan Hari ke-');
    readln (i);

    //list hari-hari nya
    case (i) of
    1 : Hari := 'Senin';
    2 : Hari := 'Selasa';
    3 : Hari := 'Rabu';
    4 : Hari := 'Kamis';
    5 : Hari := 'Jumat';
    6 : Hari := 'Sabtu';
    7 : Hari := 'Minggu';
    else 
    exit;
    end;

    //Tampilan output Hari nya
    writeln ('Hari ', Hari);
end.