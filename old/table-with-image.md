## Comparisons Across Comparison Sorts 
#### Key: 
 **Symbol** | S | I | M 
 --- | --- | --- | --- 
 -> | Selection (Ascending) | Insertion (Ascending) | Merge (Ascending) 
 ? | Selection (Unsorted) | Insertion (Unsorted) | Merge (Unsorted) 
 <- | Selection (Descending) | Insertion (Descending) | Merge (Descending) 
 
#### The Table: 
List Size | S -> | S ? | S <- | I -> | I ? | I <- | M -> | M ? | M <- 
--- | --- | --- | --- | --- | --- | --- | --- | --- | --- 
1 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0 | 0
2 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1 | 1
3 | 3 | 3 | 3 | 2 | 3 | 3 | 2 | 3 | 3
5 | 10 | 10 | 10 | 4 | 9 | 10 | 5 | 8 | 7
8 | 28 | 28 | 28 | 7 | 18 | 27 | 12 | 16 | 13
27 | 351 | 351 | 351 | 26 | 233 | 351 | 60 | 102 | 74
42 | 861 | 861 | 861 | 41 | 388 | 861 | 105 | 175 | 128

![comparsions](https://i.imgur.com/J6CrGTl.png )
