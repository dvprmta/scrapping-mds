message('Loading Packages')
library(rvest)
library(dplyr)
library(stringr)
library(mongolite)

scrape_detik_article = function(url){
  data = 
    url %>% 
    read_html() %>% 
    {tibble(
      url = url,
      headline = html_nodes(.,".detail__title") %>% 
                 html_text() %>% 
                 str_squish(),
      tanggal = html_nodes(.,".detail__date") %>% 
                html_text(),
      penulis = html_nodes(., ".detail__author") %>%
                html_text() %>%
                str_squish(),
      tag = html_nodes(., ".detail__body-tag a") %>%
            html_text() %>%
            str_squish() %>%
            paste(collapse = ", "),
      teks = html_nodes(.,"p") %>% 
             html_text() %>% 
             str_squish() %>% 
             paste(collapse = " ")
    )}
  return(data)
}

scrape_detik_index = function(url){
  article_urls = 
    url %>% 
    read_html() %>% 
    html_nodes(".media__link") %>% 
    html_attr("href")
  
  article_data = lapply(article_urls, scrape_detik_article)
  result = bind_rows(article_data) %>% 
    distinct(url, .keep_all = TRUE)
  return(result)
}

message('Scraping Data')
url_index = "https://news.detik.com/indeks"
news_data = scrape_detik_index(url_index)

# Menambahkan kolom time_scraped
news_data$time_scraped = Sys.time()

# MONGODB
message('Input Data to MongoDB Atlas')
# Connection String dari MongoDB Atlas
conn_string <- Sys.getenv("ATLAS_URL")
# Membuka koneksi ke MongoDB Atlas
atlas_conn <- mongo(
  collection = Sys.getenv("ATLAS_COLLECTION"),
  db = Sys.getenv("ATLAS_DB"),
  url = conn_string
)
# Input Data ke MongoDB Atlas
atlas_conn$insert(news_data)
# Menutup koneksi 
rm(atlas_conn)

message('Scraping and Data Insertion Completed Successfully')
