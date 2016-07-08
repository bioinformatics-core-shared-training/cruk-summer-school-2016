source("http://www.bioconductor.org/biocLite.R")
options(BioC_mirror = c("Cambridge" = "http://mirrors.ebi.ac.uk/bioconductor/"))
options(repos = c("CRAN" = "http://cran.ma.imperial.ac.uk"))
biocLite(c("Biostrings", "biomaRt", "BSgenome","QDNAseq","exomeCopy",
        "rtracklayer", "ggbio", "Gviz","RColorBrewer","org.Hs.eg.db",
        "TxDb.Hsapiens.UCSC.hg19.knownGene","BSgenome.Hsapiens.UCSC.hg19",
        "wakefield","VariantAnnotation","limma"))
#packages for ChIP on Day 4        


##Also need to install spp_1.11.tar.gz which requires the 'boost' library.


