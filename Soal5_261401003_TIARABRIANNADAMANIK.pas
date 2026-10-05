program SOAL5;
uses crt;

var 
i, j, M, N : integer;
Nilai, TotalNilai, RataRata : real;
JumlahLulus, JumlahTidakLulus : integer;

begin
    clrscr;

    //Input Jumlah Mahasiswa dan Jumlah Tugas
    write ('Masukkan Jumlah Mahasiswa: ');
    readln (M);
    write ('Masukkan Jumlah Tugas: ');
    readln (N);

    writeln;
    //Inisialisasi
    JumlahLulus := 0;
    JumlahTidakLulus := 0;

    //Pengulangan dari mahasiswa 1 sampai M (jumlah mahasiswa)
    for i:= 1 to M do 
    begin
        writeln ('Mahasiswa ke-', i);
        TotalNilai := 0;

        //nested loop peginputan nilai tugas tiap mahasiswa
        for j := 1 to N do
        begin
            write ('Masukkan nilai Tugas ke-', j, ': ');
            readln (Nilai);
            TotalNilai := TotalNilai + Nilai;
        end;

        RataRata := TotalNilai/N; //Penentuan rata2

        write ('Rata-rata Nilai: ', RataRata:0:2);  //Penampilan Nilai rata2
        writeln; 
        if RataRata >= 65 then //Penentuan kelulusan berdasarkan rata2
        begin
            writeln ('LULUS'); // >= 65 LULUS
            JumlahLulus := JumlahLulus + 1;
        end
        else
        begin
            writeln ('TIDAK LULUS'); // < 65 TIDAK LULUS
            JumlahTidakLulus := JumlahTidakLulus + 1
        end;

        writeln;
    end;

    //Penampilan Jumlah mahasiswa yg LULUS dan TIDAK LULUS
    writeln ('Total Mahasiswa LULUS : ', JumlahLulus);
    writeln ('Total Mahasiswa TIDAK LULUS : ', JumlahTidakLulus);

end.