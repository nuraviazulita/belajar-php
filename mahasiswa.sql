-- buat database fakultas
CREATE DATABASE fakultas;

-- buat table jurusan
CREATE TABLE jurusan (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    kode CHAR(4) NOT NULL,
    nama VARCHAR(50) NOT NULL
);

-- buat table mahasiswa
CREATE TABLE mahasiswa (
    id INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_jurusan INTEGER NOT NULL,
    nim CHAR(8) NOT NULL,
    nama VARCHAR(50) NOT NULL,
    jenis_kelamin enum('laki-laki','perempuan') NOT NULL,
    tempat_lahir VARCHAR(50) NOT NULL,
    tanggal_lahir DATE NOT NULL,
    alamat VARCHAR(255) NOT NULL,
    FOREIGN KEY (id_jurusan) REFERENCES JUrusan(id)
);

-- insert jurusan
insert into jurusan (kode, nama) values ("IESP", "Ekonomi Pembangunan");
insert into jurusan (kode, nama) values ("ADBM", "Administrasi Bisnis");

--insert mahasiswa
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) values (1, "20220001", "Nur Avia", "perempuan", "Mojokerto", "2001-07-23", "Jalan Letjen Panjaitan Nomor 87");
insert into mahasiswa (id_jurusan, nim, nama, jenis_kelamin, tempat_lahir, tanggal_lahir, alamat) values (2, "20220002", "Lukman Haqiki", "laki-laki", "Jember", "2001-06-27", "Jalan Jawa Nomor 23");

--update mahasiswa
update mahasiswa set tempat_lahir = "Malang";
update mahasiswa set alamat = "Jalan Sumatera Nomor 87" where id = 1;

--update jurusan
update jurusan set nama = "Administrasi Bisnis" where id = 1;

--delete mahasiswa
delete from mahasiswa where id = 2;