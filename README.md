# WisnuSetiaBudi-PBO2-UAS

Berikut adalah template README yang lebih terfokus pada penjelasan coding terkait tombol (button) dalam aplikasi Anda. Anda dapat langsung menyalinnya:

---

# Pengelolaan KRS Mahasiswa

Aplikasi desktop sederhana untuk mengelola data mahasiswa dan pengambilan KRS (Kartu Rencana Studi) menggunakan Java Swing.

## Fitur Utama
Aplikasi ini dilengkapi dengan berbagai tombol (button) untuk mengelola data mahasiswa dan KRS. Berikut adalah daftar tombol beserta fungsinya:

### 1. **Tombol Tambah**
- **Nama Tombol**: `btnTambah`
- **Fungsi**: Menambahkan data baru ke tabel mahasiswa atau KRS.  
- **Kode Contoh**:
  ```java
  btnTambah.addActionListener(new ActionListener() {
      @Override
      public void actionPerformed(ActionEvent e) {
          String npm = txtNPM.getText();
          String nama = txtNama.getText();
          // Proses validasi
          if (npm.isEmpty() || nama.isEmpty()) {
              JOptionPane.showMessageDialog(null, "Harap isi semua data!");
          } else {
              // Proses menambahkan data ke database
              tambahDataMahasiswa(npm, nama);
          }
      }
  });
  ```

### 2. **Tombol Edit**
- **Nama Tombol**: `btnEdit`
- **Fungsi**: Mengedit data mahasiswa atau KRS yang dipilih.  
- **Kode Contoh**:
  ```java
  btnEdit.addActionListener(new ActionListener() {
      @Override
      public void actionPerformed(ActionEvent e) {
          String selectedNPM = getSelectedNPM();
          if (selectedNPM == null) {
              JOptionPane.showMessageDialog(null, "Pilih data yang ingin diedit!");
          } else {
              // Buka dialog untuk mengedit data
              bukaDialogEdit(selectedNPM);
          }
      }
  });
  ```

### 3. **Tombol Hapus**
- **Nama Tombol**: `btnHapus`
- **Fungsi**: Menghapus data mahasiswa atau KRS yang dipilih.  
- **Kode Contoh**:
  ```java
  btnHapus.addActionListener(new ActionListener() {
      @Override
      public void actionPerformed(ActionEvent e) {
          String selectedNPM = getSelectedNPM();
          if (selectedNPM == null) {
              JOptionPane.showMessageDialog(null, "Pilih data yang ingin dihapus!");
          } else {
              int confirm = JOptionPane.showConfirmDialog(null, "Yakin ingin menghapus data?");
              if (confirm == JOptionPane.YES_OPTION) {
                  hapusDataMahasiswa(selectedNPM);
              }
          }
      }
  });
  ```

### 4. **Tombol Reset**
- **Nama Tombol**: `btnReset`
- **Fungsi**: Mengosongkan semua input di form.  
- **Kode Contoh**:
  ```java
  btnReset.addActionListener(new ActionListener() {
      @Override
      public void actionPerformed(ActionEvent e) {
          txtNPM.setText("");
          txtNama.setText("");
          txtTanggalLahir.setText("");
          txtJurusan.setSelectedIndex(0);
      }
  });
  ```

### 5. **Tombol Cari**
- **Nama Tombol**: `btnCari`
- **Fungsi**: Mencari data mahasiswa berdasarkan NPM atau nama.  
- **Kode Contoh**:
  ```java
  btnCari.addActionListener(new ActionListener() {
      @Override
      public void actionPerformed(ActionEvent e) {
          String keyword = txtCari.getText();
          if (keyword.isEmpty()) {
              JOptionPane.showMessageDialog(null, "Masukkan kata kunci pencarian!");
          } else {
              cariDataMahasiswa(keyword);
          }
      }
  });
  ```

## Alur Interaksi Tombol
1. **Tambah Data**: Input data di form, klik tombol **Tambah**, data akan disimpan ke database dan ditampilkan di tabel.  
2. **Edit Data**: Pilih baris pada tabel, klik tombol **Edit**, dialog pengeditan akan muncul.  
3. **Hapus Data**: Pilih baris pada tabel, klik tombol **Hapus**, data akan dihapus setelah konfirmasi.  
4. **Reset Form**: Klik tombol **Reset** untuk mengosongkan semua input.  
5. **Cari Data**: Masukkan kata kunci di input pencarian, klik tombol **Cari**, data yang relevan akan ditampilkan.
![image](https://github.com/user-attachments/assets/8535e136-6cbb-45f0-a6fa-8cbaaddcd406)



