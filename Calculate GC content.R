calculate_gc_content <- function(dna_sequence) {
  g_count <- sum(strsplit(dna_sequence, NULL)[[1]] == "G")
  c_count <- sum(strsplit(dna_sequence, NULL)[[1]] == "C")
  
  gc_content <- (g_count + c_count) / nchar(dna_sequence) * 100
  
  return(gc_content)
}

dna_sequence <- "ATCG"

gc_content <- calculate_gc_content(dna_sequence)
print(paste("GC content: ", gc_content, "%"))
