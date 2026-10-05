program SOAL8;
uses crt;

var 
golongan : char;
JamKerja, JamLembur : integer;
GajiPokok, UangLembur, Bonus, TotalGajiAkhir : longint;

begin
    clrscr;

    //Input gol.karyawan dan jam kerjanya perminggu
    write ('Masukkan Golongan Karyawan (A/B/C): ');
    readln (golongan);
    write ('Masukkan Jam Kerja per Minggu : ');
    readln (JamKerja);

    //List ketentuan gaji pokok setiap golongan menggunakan case of
    case golongan of
        'A' : GajiPokok := 1500000;
        'B' : GajiPokok := 2000000;
        'C' : GajiPokok := 2500000;
    else 
        begin
            writeln ('Golongan Tidak Tersedia'); //gol.tidak tersedia jika memilih selain ketiga gol. yg ada
            exit;
        end;
    end;

    //Perhitungan uang lembur dan jam lembur
    if (JamKerja > 40) then //gol. A dan B jika kerja lebih dari 40 jam with no bonus
    begin
        JamLembur := JamKerja - 40;
        UangLembur := JamLembur * 20000;
    end
    else 
    begin
        JamLembur := 0;
        UangLembur := 0;
    end;

    if (golongan = 'C') and (JamKerja > 50) then //gol. jika kerja lebih dari 50 jam with bonus
        Bonus := 100000
    else 
        Bonus := 0;

    //perhitungan Total Gaji Akhir
    TotalGajiAkhir := GajiPokok + UangLembur + Bonus;

    //Penampilan Output gol, total jam kerja, jam lembur, gaji pokok, uang lembur, bonus, dan total gaji akhir
    writeln ('Golongan : ', golongan);
    writeln ('Total Jam Kerja : ', JamKerja, ' Jam');
    writeln ('Jam Lembur : ', JamLembur, ' Jam');
    writeln ('Gaji Pokok : ', GajiPokok);
    writeln ('Uang Lembur : ', UangLembur);
    writeln ('Bonus : ', Bonus);
    writeln ('Total Gaji Akhir : ', TotalGajiAkhir);

end.