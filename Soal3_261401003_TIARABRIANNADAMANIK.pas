program SOAL3;
uses crt;

var
i, N, kategori: integer;

begin
    clrscr;

    //Input Nilai N
    write ('Masukkan nilai N : ');
    readln (N);

    //Penampilan Kategori Deret
    writeln ('Pilih kategori deret : ');
    writeln ('1 : Ganjil');
    writeln ('2 : Genap');

    //Input Kategori dalam Bentuk Angka 1 atau 2
    write ('Masukkan pilihan Anda : ');
    readln (kategori);

    //Penampilan Hasil Deret Angkanya
    writeln;
    writeln ('Hasil deret angka : ');
    
    i := 0;
    while i < N do
    begin
        i := i + 1;
        
        //Melewati angka genap ketika memmilih ganjil
        if (kategori = 1) and (i mod 2 = 0) then
        continue;

        //Melewati angka ganjil ketika memilih genap
        if (kategori = 2) and (i mod 2 <> 0) then
        continue;
        
        //Melewati kelipatan 5
        if (i mod 5 = 0) then
        continue;

        write (i, ' ');
    end;
    writeln;
    
end.