# StudyGroup-MP-Motionlab
git init -> menginisialisasi repository Git di folder lokal
Perintah: git init

git add -> menambahkan file atau perubahan file ke staging area sebelum commit
Perintah: git add <nama_file>

git commit -> menyimpan perubahan yang ada di staging area ke dalam repository lokal dengan pesan deskriptif
git commit -m "Pesan commit"

git status -> menampilkan status file dalam repository, apakah sudah di-track, belum di-stage, atau ada perubahan yang belum di-commit
Perintah: git status

git log -> menampilkan riwayat commit yang telah dibuat, termasuk hash commit, pesan, dan penulisnya
Perintah: git log

git pull -> mengambil (fetch) dan menggabungkan (merge) perubahan terbaru dari repository remote ke branch lokal
Perintah: git pull origin <nama_branch>

git push -> mengirim commit dari repository lokal ke repository remote (GitHub, GitLab, dll)
Perintah: git push origin <nama_branch>

git branch -> melihat, membuat, atau menghapus branch dalam repository
Perintah:
git branch                   # Menampilkan daftar branch
git branch <nama_branch>     # Membuat branch baru
git branch -d <nama_branch>  # Menghapus branch

git checkout -> Berpindah ke branch lain atau mengembalikan file ke kondisi tertentu
Perintah:
git checkout <nama_branch>  # Berpindah ke branch lain
git checkout <nama_file>    # Mengembalikan file ke kondisi terakhir di commit

git merge -> Menggabungkan perubahan dari branch lain ke branch aktif
Perintah: git merge <nama_branch>

git reset -> enghapus perubahan dari staging area atau membatalkan commit terakhir.
Perintah:
git reset <nama_file>        # Menghapus file dari staging area
git reset --soft HEAD~1      # Membatalkan commit terakhir, tapi tetap menyimpan perubahan
git reset --hard HEAD~1      # Membatalkan commit terakhir dan menghapus semua perubahan
