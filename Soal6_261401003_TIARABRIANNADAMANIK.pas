program SOAL6;
uses crt;

var 
NilaiTugas, NilaiUTS, NilaiUAS : real;
NilaiAkhir: real;
Kehadiran : real;
i : char;
Status : string;

begin
    clrscr;
    
    //Input nilai tugas, UTS, UAS, dan kehadiran dalam persen
    writeln ('PENENTUAN NILAI AKHIR');
    write ('Masukkan Nilai Tugas : ');
    readln (NilaiTugas);
    write ('Masukkan Nilai UTS : ');
    readln (NilaiUTS);
    write ('Masukkan Nilai UAS : ');
    readln (NilaiUAS);
    write ('Masukkan Kehadiran (%)  : ');
    readln (Kehadiran);

    NilaiAkhir := (0.30 * NilaiTugas) + (0.30 * NilaiUTS) + (0.40 * NilaiUAS);  //Penentuan nilai akhir

    //jika nilai di atas atau sama dengan 60 dan kehadirannya lebih atau sama dengan 80% maka LULUS
    //jika tidak memenuhi syarat maka TIDAK LULUS
    if (NilaiAkhir >= 60) and (Kehadiran >= 80) then
        status := 'LULUS'
    else
        status := 'TIDAK LULUS';

    //Penentuan indeks nilai (Kategori nilai)
    if NilaiAkhir >= 85 then
        i := 'A'
    else if NilaiAkhir >= 75 then
        i := 'B'
    else if NilaiAkhir >= 60 then
        i := 'C'
    else if NilaiAkhir >= 50 then
        i := 'D'
    else
        i := 'E';

    //Tampilan Nilai Akhir, Indeks huruf, dan LULUS/TIDAK LULUS
    writeln ('Nilai Akhir : ', NilaiAkhir:0:2);
    writeln ('Indeks Huruf : ', i);
    writeln ('Status : ', Status);

end.