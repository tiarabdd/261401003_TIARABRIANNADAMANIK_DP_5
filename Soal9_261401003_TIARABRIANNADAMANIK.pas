Program SOAL9;
uses crt;

var 
Tahun, Bulan, JumlahHari : integer;
Kabisat : boolean;

begin
    clrscr;

    //Input tahun dan nomor bulan (1-12)
    write ('Masukkan Tahun : ');
    readln (Tahun);
    write ('Masukkan Nomor Bulan (1-12) : ');
    readln (Bulan);

    //Penentuan tahun kabisat, jika habis dibagi 400 atau 4 dan tidak habis dibagi 100 maka ia kabisat
    if (Tahun mod 400 = 0) or ((Tahun mod 4 = 0) and (Tahun mod 100 <> 0)) then
        Kabisat := true //jika memenuhi syarat maka kabisat
    else 
        Kabisat := false; //jika tidak maka bukan kabisat

    // List jumlah hari di setiap bulan dalam satu tahun
    case bulan of
    1, 3, 5, 7, 8, 10, 12 : JumlahHari := 31; //31 hari
    4, 6, 9, 11 : JumlahHari := 30; //30 hari
    2 : 
        begin
            if Kabisat then
                JumlahHari := 29 //jika 29 hari
            else 
                JumlahHari := 28; //jika 28 hari
        end;
    else
        exit;
    end;

    writeln ('Tahun : ', Tahun); //Tampilan output tahun
    write ('Tahun Kabisat?'); //Tampilan tahun kabisat atau tidak
    if Kabisat then
        writeln (' YA') //kalau kabisat maka YA
    else 
        writeln (' TIDAK'); //kalau bukan kabisat maka TIDAK
    
    writeln ('Jumlah Hari : ', JumlahHari, ' Hari'); //Tampilan Output jumlah hari

end.