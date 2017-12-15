#Function called when loading the package with 'library'.
#saralamba@gmail.com
.onLoad <- function(libname='~/R', pkgname='Araiwa') {
  libLocation<-system.file(package=pkgname)
  if(R.version$arch=='x86_64'){
    arch<-'x64'
  }else{
    arch<-'i386'
  }
  libpath <- file.path(libLocation, paste0('libs/',arch))
  loadAssembly <- function(fn) {
    f <- file.path(libpath, fn)
    if( !file.exists(f) ) {
      packageStartupMessage(paste0('Sorry, I could not find path to ',fn,'. You will have to load it manually.'))
    } else {
      rClr::clrLoadAssembly(f)
    }
  }
  #load the main dll files
  loadAssembly('AraiwaForm.dll')
  loadAssembly('araiwa.dll')
  
  #check if the dictionary exists in libs
  # installDict <- function(dictfile){
  #   dictpath <- file.path(libpath,dictfile)
  #   if(!file.exists(dictpath)){
  #     if(getRversion() < "3.3.0") setInternet2()
  #     download.file("https://raw.githubusercontent.com/slphyx/Araiwa/master/inst/dict/lexitron.txt",dictpath,quiet = TRUE)
  # 
  #   }
  # }
  # 
  # installDict('lexitron.txt')
  
}
