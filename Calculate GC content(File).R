calculate_gc_content <- function(dna_sequence) {
  g_count <- sum(strsplit(dna_sequence, NULL)[[1]] == "G")
  c_count <- sum(strsplit(dna_sequence, NULL)[[1]] == "C")
  
  gc_content <- (g_count + c_count) / nchar(dna_sequence) * 100
  
  return(gc_content)
}

file_path <- "C:/Users/scien/Desktop/Balaena mysticetus mitochondrial DNA, complete genome.txt"

dna_sequence <- readLines(file_path, warn = FALSE)

dna_sequence <- paste(dna_sequence, collapse = "")

gc_content <- calculate_gc_content(dna_sequence)
print(paste("GC content: ", gc_content, "%"))
