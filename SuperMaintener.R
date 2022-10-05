
#  !/usr/bin/env Rscript
#==========================================#
# Libraries
#==========================================#
    library(rvest)
# bloc end

#==========================================#
# Initialisation
#==========================================#
    # Package directory
        pkg.dir <- getwd()
    # Init NAMESPACE file
        cat("exportPattern(\"^[[:alpha:]]+\")\n",file=paste0(pkg.dir,"/NAMESPACE"))
    # Init _pkgdown.yml file
        file.create("_pkgdown.yml")
        cat(
            paste0(
                "template:\n",
                "  bootstrap: 5\n",
                "\n",
                "reference:\n"
            ),
            file=paste0(pkg.dir,"/_pkgdown.yml")
        )
# bloc end

#==========================================#
# DESCRIPTION file parsing
#==========================================#
    # Get packages names
        description.pth <- readLines(paste0(pkg.dir,"/DESCRIPTION"))
        import.ndx <- grep(x=description.pth, pattern = "Imports:.*$")
        description.pth[import.ndx] <- gsub(x=description.pth[import.ndx], pattern="Imports:", replacement="")
        continue.bln <- TRUE
        pkg.lst_chr  <- list()
        while(continue.bln){
            continue.bln = !grepl(x=description.pth[import.ndx], pattern = ":")
            if (continue.bln) {
                pkg.chr <- gsub(x=description.pth[[import.ndx]],pattern="\\s*|,",replacement="")
                if(nchar(pkg.chr)>0){
                    pkg.lst_chr <- c(pkg.lst_chr, pkg.chr)
                }
                import.ndx <- import.ndx +1
            }
        }

    # Get owner github url
        description.pth <- readLines(paste0(pkg.dir,"/DESCRIPTION"))
        url.ndx <- grep(x=description.pth, pattern = "URL:.*$")
        description.pth[url.ndx] <- gsub(x=description.pth[url.ndx], pattern="URL:", replacement="")
        continue.bln <- TRUE
        while(continue.bln){
            continue.bln = !grepl(x=description.pth[url.ndx], pattern = ":") | grepl(x=description.pth[url.ndx], pattern = "https:")
            if (continue.bln) {
                url.chr <- gsub(x=description.pth[[url.ndx]],pattern="\\s*|,",replacement="")
                if(grepl(x=url.chr, pattern="https://github.com/")){
                    break
                }
                url.ndx <- url.ndx +1
            }
        }
        url.chr <- unlist(strsplit(url.chr,"/"))
        url.chr <- url.chr[-length(url.chr)]
        url.chr <- paste(url.chr,collapse="/")
# bloc end

#==========================================#
# Write NAMESPACE, R functions and _pkgdown.yml files
#==========================================#
    for(pkg.chr in pkg.lst_chr){
        # Add import in NAMESPACE file
            cat("import(",pkg.chr,")\n",file=paste0(pkg.dir,"/NAMESPACE"), append=TRUE)
        # Get functions names
            fun.lst_chr <- unlist(strsplit(html_text2(read_html(paste0(url.chr,"/",pkg.chr,"/tree/master/man"))),"\n"))
            fun.ndx = grep(x=fun.lst_chr, pattern = "(.*)\\.Rd", ignore.case=TRUE)
            fun.lst_chr <- gsub(x=fun.lst_chr[fun.ndx], pattern="\\.Rd$", replacement="", ignore.case=TRUE)
        # Add export in NAMESPACE file
            cat("export(", paste(fun.lst_chr,collapse=", "),")\n",file=paste0(pkg.dir,"/NAMESPACE"), append=TRUE)
        # Get code source files names
            fun.lst_chr <- unlist(strsplit(html_text2(read_html(paste0(url.chr,"/",pkg.chr,"/tree/master/R"))),"\n"))
            fun.ndx <- grep(x=fun.lst_chr, pattern = "(.*)\\.R", ignore.case=TRUE)
            fun.lst_chr <-  fun.lst_chr[fun.ndx]
            for (fun.chr in fun.lst_chr){
                # Get helpers in source  code
                    help.lst_chr <- unlist(strsplit(html_text2(read_html(paste0(url.chr,"/",pkg.chr,"/tree/master/R/",fun.chr))),"\t"))
                    help.lst_chr <- help.lst_chr[2:(length(help.lst_chr)-1)]
                    help.lst_chr <- help.lst_chr[-which(grepl(x=help.lst_chr,pattern="\\n") | nchar(help.lst_chr)==0)]
                    parag.ndx <- grep(x=help.lst_chr,pattern="^([\"|'|a-z|A-Z].*)\\s*(<-|=)\\s*function(.*)")
                    funNames.lst_chr <- help.lst_chr[parag.ndx]
                    funNames.lst_chr <- gsub(x=funNames.lst_chr,pattern="(<-|=)\\s*function(.*)", replacement="")
                    funNames.lst_chr <- gsub(x=funNames.lst_chr,pattern="[\"|']", replacement="")
                    funNames.lst_chr <- gsub(x=funNames.lst_chr,pattern=" ", replacement="")
                    parag.ndx <- c(0,parag.ndx)
                    parag.ndx <- lapply(2:length(parag.ndx), function(i){(parag.ndx[i-1]+1) : (parag.ndx[i]-1)})
                    parag.ndx <- lapply(parag.ndx, function(ndx.lst){return(ndx.lst[grep(x=help.lst_chr[ndx.lst],pattern="^#'(.*)$")])})
                    lapply(seq_along(funNames.lst_chr),function(funName.ndx){
                        help.chr <- help.lst_chr[parag.ndx[[funName.ndx]]]
                        atDescription.ndx <- grep(x=help.chr,pattern="^#' @description(.*)")
                        funNames.chr <- funNames.lst_chr[[funName.ndx]]
                        cat(
                            paste0(
                                paste(help.chr[1:atDescription.ndx],collapse="\n"),
                                "\n#' @name ",funNames.chr,"\n",
                                paste(help.chr[(atDescription.ndx+1):length(help.chr)],collapse="\n"),
                                "\nNULL"
                            ),
                            file=paste0(pkg.dir,"/R/",funNames.chr,".R")
                        )
                    })
            }
        # Copie du _pkgdown.yml pour la doc
            pkgdown.lst_chr <- unlist(strsplit(html_text2(read_html(paste0(url.chr,"/",pkg.chr,"/blob/master/_pkgdown.yml"))),"\t"))
            ref.ndx <- grep(x=pkgdown.lst_chr, pattern = "reference:")
            pkgdown.lst_chr[ref.ndx] <- gsub(x=pkgdown.lst_chr[ref.ndx], pattern="reference:", replacement="")
            pkgdown.lst_chr <- gsub(x=pkgdown.lst_chr, pattern="\n", replacement="")
            continue.bln <- TRUE
            start_ref.ndx = ref.ndx
            while(continue.bln){
                ref.ndx <- ref.ndx +1
                continue.bln = !grepl(x=pkgdown.lst_chr[ref.ndx], pattern = ":") | grepl(x=pkgdown.lst_chr[ref.ndx], pattern = "title:") | grepl(x=pkgdown.lst_chr[ref.ndx], pattern = "contents:") | grepl(x=pkgdown.lst_chr[ref.ndx], pattern = "subtitle:")
                
            }
            pkgdown.lst_chr <- pkgdown.lst_chr[start_ref.ndx:ref.ndx-1]
            if(length(which(nchar(pkgdown.lst_chr)==0))){
                pkgdown.lst_chr <- pkgdown.lst_chr[-which(nchar(pkgdown.lst_chr)==0)]
            }
            if(length(grep(x=pkgdown.lst_chr,pattern="subtitle: "))){
                pkgdown.lst_chr <- pkgdown.lst_chr[-grep(x=pkgdown.lst_chr,pattern="subtitle: ")]
            }
            
            pkgdown.lst_chr <- paste("  ",pkgdown.lst_chr,sep="")
            pkgdown.lst_chr <- paste(c(paste0("- title: ", pkg.chr), sub(x=pkgdown.lst_chr,pattern="  - title:", replacement="\n- subtitle:"),"\n"),collapse="\n")

            cat(
                pkgdown.lst_chr,
                file=paste0(pkg.dir,"/_pkgdown.yml"),
                append=TRUE
            )
    }
    # End _pkgdown.yml file
        cat(paste0(
            "articles:\n",
            "- title: Other\n",
            "  navbar: ~\n",
            "  contents:\n",
            "  - Standard\n"),
            file=paste0(pkg.dir,"/_pkgdown.yml"),
            append=TRUE
        )
# bloc end

#==========================================#
# Push on Github
#==========================================#
    date.tim <- Sys.time()
    sec.tim <- as.character(round(as.POSIXlt(date.tim)$sec * 1000))
    sec.tim <- paste0(rep(0,(5-nchar(sec.tim))),sec.tim)
    version.chr <- paste0(format(date.tim,"%Y:%m:%d:%H%M"),sec.tim)
    system(paste0("git commit -a -m \"maintain_",version.chr,"\""))
    system("git push -u origin master")
# bloc end