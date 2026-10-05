program SOAL2;
uses crt;

var
Password : string;
i : integer;

begin
    clrscr;
    i := 0;

    //Perulangan Masukkan Kata Sandi Sampai Dengan Benar
    repeat
        write ('Masukkan Kata Sandi : ');
        readln (Password);
        inc (i,1);
    
        if (Password = 'pascal123') then
        begin
            writeln ('Login Berhasil! Selamat Datang');
            break;  //Penghentian Loop Ketika Kata Sandi Benar
        end
        else if (i < 3) then
        writeln ('Kata Sandi Salah! Coba Lagi') //Jika Salah Kurang Dari 3x Masih Bisa Coba Lagi
        else
        writeln ('Akses Ditolak! Akun Terkunci'); //Salah Sebanyak 3x Maka Terkunci

        writeln;
    until (i = 3); //Perulangan Sebanyak 3x
        
    end.
