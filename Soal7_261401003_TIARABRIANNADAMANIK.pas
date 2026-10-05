program SOAL7;
uses crt;

var 
kode : char;
LamaParkir : integer;
TotalTarif : longint;

begin
    clrscr;

    //Menampilkan list kode kendaraan
    writeln ('Kode Kendaraan: ');
    writeln ('Mobil : M');
    writeln ('Motor : K');
    writeln ('Bus : B');

    //Input kode kendaraan dan lama parkir 
    write ('Masukkan Kode Kendaran (M/K/B): ');
    readln (kode);
    write ('Masukkan Lama Parkir (jam) : ');
    readln (LamaParkir);

    //perhitungan tarif parkir dari setiap jenis kendaraan dengan menggunakan case of
    case kode of
        'M': //Mobil
            begin
                if LamaParkir > 10 then
                    TotalTarif := 30000
                else if LamaParkir > 1 then
                    TotalTarif := 5000 + (LamaParkir - 1) * 3000
                else if LamaParkir = 1 then
                    TotalTarif := 5000
                else
                    TotalTarif := 0;

                writeln ('Jenis Kendaraan : Mobil');
            end;
        'K': //Motor
            begin
                if LamaParkir > 10 then
                    TotalTarif := 10000
                else if LamaParkir > 1 then
                    TotalTarif := 2000 + (LamaParkir - 1) * 1000
                else if LamaParkir = 1 then
                    TotalTarif := 2000
                else 
                    TotalTarif := 0;

                writeln ('Jenis Kendaraan : Motor');
            end;
        'B': //Bus
            begin
                if LamaParkir > 10 then
                    TotalTarif := 50000
                else if LamaParkir > 1 then
                    TotalTarif := 10000 + (LamaParkir - 1) * 5000
                else if LamaParkir = 1 then
                    TotalTarif := 10000
                else 
                    TotalTarif := 0;

                writeln ('Jenis Kendaraan : Bus');
            end;
        
        else
            writeln ('Kode Kendaraan Tidak Tersedia'); //Tampilan jika kita memilih selain ketiga kendaraan tersebut
            exit;
        end;

        //Tampilan Output Lama parkir dan total tarif
        writeln ('Lama Parkir : ', LamaParkir, ' jam'); 
        writeln ('Total Tarif : ', TotalTarif);

end.