program SOAL1;
uses crt;

var
i, N : integer;
Harga, Total_Harga, Total_Sebelum_Diskon : longint;
Besar_Diskon, Total_Bayar_Akhir : real;

begin
    clrscr;
    Total_Harga := 0;

    write ('Masukkan Jumlah Barang Yang Dibeli : ');
    readln (N);
    writeln;

    writeln ('Rincian Belanja : ');

// Perulangan Input barang ke-1 sampai ke-N
    for i := 1 to N do 
    begin
        write ('Harga Barang ke-', i, ': Rp ');
        readln (Harga);

        // Menjumlahkan Harga Barang yang diinput
        Total_Harga := Total_Harga + Harga;
    end;
    
    writeln ('Total harga keseluruhan : Rp ', Total_Harga);
    // Menentukan Besar Diskon
    // Diskon 0%
    if (Total_Harga < 100000) then
        Besar_Diskon := 0 * Total_Harga
    // Diskon 10%
    else if (100000 >= Total_Harga) and (Total_Harga < 500000) then
        Besar_Diskon := 0.10 * Total_Harga
    // Diskon 20%
    else
    Besar_Diskon := 0.20 * Total_Harga;

    // Menentukan Total Bayar Akhir
    Total_Bayar_Akhir := Total_Harga - Besar_Diskon;

    writeln ('Total Sebelum Diskon : Rp ', Total_Harga);
    writeln ('Besar Diskon : Rp ', Besar_Diskon:0:0);
    writeln ('Total Bayar Akhir : Rp ', Total_Bayar_Akhir:0:0);
end.