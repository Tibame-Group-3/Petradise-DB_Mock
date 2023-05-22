# Petradise-DB_Mock

## 檔案目錄

* Java VO 資料夾裡面存放 Java VO

* SQL Scripts 資料夾裡面存放 .sql Files

### SQL Scripts 規則

- 各Table創建指令 **個別** 存成一個 SQL 檔案，
  檔案中應只存在建立該Table的指令，**不應存放Primary Key、Foreign Key Setting**。 
 
- 各Table加入Primary Key、Foreign Key 相關Constraints的指令存成一個共享的獨立檔案 `constraints.sql` ，
  請編輯此檔案來設置Table 的PK、FK。
  
