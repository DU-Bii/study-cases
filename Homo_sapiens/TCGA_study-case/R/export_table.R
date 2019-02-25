#' @export a table to a tab-separated-value (.tsv) file
#' @author Jacques van Helden
#' @description export a give table (data.frame, matrix) to a tab-separated-values (TSV) text file, with convenient options. 
#' @param x a data.frame or matrix
#' @param filename name of the output file
#' @param outdir="." output directory
#' @param gzip=FALSE if TRUE, compress the file and add a gzip extension to the result
#' @param ... additional parameters are passed to write.table()
#' 
#' @export
ExportTable <- function(x,
                        filename,
                        outdir = ".",
                        gzip = FALSE,
                        ...) {
  
  ## Fix some row names
  names(x) <- sub(
    pattern = "xml_breast_carcinoma_estrogen_receptor_status", 
    replacement = "ER1", x = names(x))
  
  names(x) <- sub(
    pattern = "xml_breast_carcinoma_progesterone_receptor_status", 
    replacement = "PR1", x = names(x))

  names(x) <- sub(
    pattern = "xml_lab_proc_her2_neu_immunohistochemistry_receptor_status", 
    replacement = "Her2", x = names(x))

    
  filepath <- file.path(export.dir, filename)
  if (gzip) {
    filepath <- paste(sep = "", filepath, ".gz")
    filehandle <- gzfile(filepath, "w") ## Compress file
  } else {
    filehandle <- filepath
  }
  message("Exporting table fo file\t", filepath)
  write.table(x, 
              file = filehandle, 
              sep = "\t", quote = FALSE, 
              ...)
  result <- list(
    filename = filename,
    outdir = outdir,
    filepath = filepath
  )

  if (gzip) {
    close(filehandle)
  }
  
  return(result)
  
}
