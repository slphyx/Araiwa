

# load LexToForm application
LexToForm <- function(){
  frm <- rClr::clrNew('testLexTo.LexTo')
  rClr::clrCall(frm,'Show')
}


# get the output from textbox (the right text box of the application form)
# and return it to R
LexToOutputText <- function(sep = TRUE){
  if(file.exists("TEMP_LEXTOFILE.DAT")){
    output.text <- readLines("TEMP_LEXTOFILE.DAT", encoding = "UTF-8")
  }else{
    cat('Cannot load TEMP_LEXTOFILE.DAT.\n')
    return(NULL)
  }
  
  if(sep == TRUE){
    output.vector <- as.vector(strsplit(output.text,"[|]")[[1]])
    return(output.vector)
  }else{
    return(output.text)  
  }
  
}

# write output to a text file
WriteOutputText <- function(msg, filename) {
  
  con <- file(filename, "w")
  tryCatch({
    cat(iconv(msg, to="UTF-8"), file=con, sep="\n")
  },
  finally = {
    close(con)
  })
  
}


# #TH segmentation
# THSeg <- function(msg, dic.path = NULL){
#   if(is.null(dic.path)){
#     libLocation<-system.file(package='Araiwa')
#     dic.path <- file.path(libLocation,'dict','lexitron.txt')
#   }
#   outtxt <- rClr::clrCallStatic('araiwa.Methods','THSeg',as.character(msg),as.character(dic.path))
#   LexToOutputText(sep = T)
# }


