program SOAL4;
uses crt;

var 
pilihan : integer;
operand1, operand2 : integer;
hasil: real;
perulangan : char;

begin
    repeat
        clrscr;

        //Menampilkan Menu Pilihan Operasi
        writeln ('Menu Pilihan Operasi:');
        writeln ('1: Penjumlahan');
        writeln ('2: Pengurangan');
        writeln ('3: Perkalian');
        writeln ('4: Pembagian');
        writeln ('5: DIV & MOD');
        writeln;

        //Input Menu Operasi dalam Bentuk Angka 1-5
        write ('Pilih Menu Operasi : ');
        readln (pilihan);

        writeln;

        //Input kedua operand
        if (pilihan >= 1) and (pilihan <= 5) then
        begin
            write ('Masukkan Operand Pertama: ');
            readln (operand1);
            write ('Masukkan Operand Kedua : ');
            readln (operand2);

            //Penampilan Hasilnya
            case pilihan of
            1: writeln ('Hasil Penjumlahan : ', operand1 + operand2);
            2: writeln ('Hasil Pengurangan : ', operand1 - operand2);
            3: writeln ('Hasil Perkalian : ', operand1 * operand2);
            4: 
                begin
                    if operand2 <> 0 then
                    begin
                        hasil := operand1/operand2;
                        writeln ('Hasil Pembagian : ', hasil:0:2);
                    end
                    else 
                    write ('Undenified');
                end;
            5: 
                begin 
                    if operand2 <> 0 then
                    begin
                        writeln ('Hasil DIV : ', operand1 div operand2);
                        writeln ('Hasil MOD : ', operand1 mod operand2);
                    end
                    else
                    writeln ('Undenified');
        
                end;
            end;
        end
        else 
        writeln ('Pilihan Operasi Tidak Tersedia');

        writeln;

        //Apakah kita mau melakukan perhitungan lagi? Jika Y maka program akan mengulang jika T/t maka berhenti
        write ('Apakah ingin melakukan perhitungan lagi? (Y/T): ');
        readln (perulangan);

    until (perulangan = 'T') or (perulangan = 't');


end. 