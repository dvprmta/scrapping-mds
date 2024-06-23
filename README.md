<p align="center" width="80%">
    <img width="60%" src="https://github.com/dvprmta/scrapping-mds/blob/main/logo.png">
</p>

<div align="center">
    
# United States National Library of Medicine (NLM)
[![scrape_hashtag](https://github.com/dvprmta/scrapping-mds/actions/workflows/main.yml/badge.svg)](https://github.com/dvprmta/scrapping-mds/actions/workflows/main.yml)

<p align="center">

# Menu:

</p>

[Tentang](#information_source-Tentang)
•
[Deskripsi](#pencil-Deskripsi)
•
[MongoDB](#floppy_disk-MongoDB)
•
[RPubs](#bar_chart-RPubs)
•
[PPT](#open_file_folder-PPT)
•
[Pengembang](#bust_in_silhouette-Pengembang)

</div>

## :information_source: Tentang  

**Apa sih detik.com itu?**

<p align="justify">
Detik.com adalah media digital terkemuka di Indonesia yang didirikan pada 9 Juli 1998. Awalnya dibangun dengan konsep breaking news untuk menyajikan informasi terkini secara berkesinambungan, Detik.com telah berkembang menjadi portal berita online terbesar di Indonesia. Pada 2011, Detik.com diakuisisi oleh Transmedia di bawah grup CT Corp. Saat ini, Detik.com telah bertransformasi menjadi gerbang layanan dalam ekosistem CT Corp dan berkembang menjadi jaringan media yang lebih luas bernama Detik Network. Dengan fokus pada kecepatan, akurasi, independensi, kreativitas, dan integritas, Detik.com menyasar berbagai segmen pembaca mulai dari mahasiswa hingga pensiunan, menyajikan beragam konten dari berita hingga gaya hidup melalui berbagai platform digital.
</p>

## :pencil: Deskripsi

<p align="justify">
Pada penelitian ini, saya melakukan scraping pada situs web Detik.com untuk mengumpulkan data berita dari berbagai kategori yang disajikan oleh portal berita tersebut. Detik.com merupakan salah satu media online terkemuka di Indonesia yang menyajikan beragam informasi mulai dari peristiwa terkini, kesehatan, bisnis, gaya hidup, hingga hiburan dan olahraga.
</p>

<p align="justify">
Tujuan utama dari scraping ini adalah untuk mengumpulkan data berita terbaru dari Detik.com dan memfasilitasi analisis mendalam terhadap tren, pola, dan topik yang muncul dalam pemberitaan. 
</p>
</div>

## :floppy_disk: MongoDB

Berikut adalah salah satu contoh dokumen di MongoDB untuk artikel detik.com:
```mongodb
{
  "_id": "66650ddbb31a06c4ef0eec21",
  "url": "https://news.detik.com/pemilu/d-7381696/plus-minus-jika-pdip-usung-anies-di-pilkada-jakarta-versi-bos-indostra",
  "headline": "Plus Minus Jika PDIP Usung Anies di Pilkada Jakarta Versi Bos Indostrategi",
  "tanggal": "Minggu, 09 Jun 2024 09:03 WIB",
  "penulis": "Matius Alfons Hutajulu - detikNews",
  "tag": [
    "anies baswedan",
    "pdip",
    "pilkada jakarta",
    "pilkada 2024",
    "politik"
  ],
  "teks": "PDIP dan Anies Baswedan saling melempar pujian dan menunjukkan ketertarikan untuk berkoalisi di Pilkada Jakarta. Namun, ada beberapa plus dan minus yang harus dipertimbangkan jika PDIP mengusung Anies sebagai calon gubernur.",
  "time_scraped": "2024-06-09T02:05:12.165+00:00"
}
```
## :bar_chart: RPubs
Hasil pengolahan data scrapping website detik.com dalam dilihat lebih lanjut pada link berikut. https://rpubs.com/dvprmta/1199079


## :open_file_folder: PPT
Hasil pengolahan data scrapping juga ditampilkan dalam bentuk Powerpoint pada link berikut. https://ayakitchen23.my.canva.site/devi-permata-sari-scrapping-detik-com

## :bust_in_silhouette: Pengembang 
[Devi Permata Sari](https://github.com/dvprmta) - G1501231026
