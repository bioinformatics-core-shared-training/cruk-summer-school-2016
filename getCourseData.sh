mkdir -p data/hapmap
mkdir -p ref_data
mkdir Day1

wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/technical/reference/human_g1k_v37.fasta.gz -P ref_data/
gunzip ref_data/human_g1k_v37.fasta.gz

wget ftp://ftp.ncbi.nlm.nih.gov/1000genomes/ftp/phase3/data/NA12878/alignment/NA12878.chrom20.ILLUMINA.bwa.CEU.low_coverage.20121211.bam -O data/hapmap/NA12878.chr20.bam
samtools index data/hapmap/NA12878.chr20.bam

wget ftp://ftp.ncbi.nlm.nih.gov/1000genomes/ftp/phase3/data/NA12874/alignment/NA12874.chrom20.ILLUMINA.bwa.CEU.low_coverage.20130415.bam -O data/hapmap/NA12874.chr20.bam
samtools index data/hapmap/NA12874.chr20.bam


wget ftp://ftp.ncbi.nlm.nih.gov/1000genomes/ftp/phase3/data/NA12873/alignment/NA12873.chrom20.ILLUMINA.bwa.CEU.low_coverage.20130415.bam -O data/hapmap/NA12873.chr20.bam
samtools index data/hapmap/NA12873.chr20.bam




wget ftp://ftp.1000genomes.ebi.ac.uk/vol1/ftp/technical/other_exome_alignments/NA06984/exome_alignment/NA06984.mapped.illumina.mosaik.CEU.exome.20111114.bam

java -jar $PICARD DownsampleSam I=NA06984.mapped.illumina.mosaik.CEU.exome.20111114.bam O=random.bam P=0.1 VALIDATION_STRINGENCY=SILENT

rm NA12878.mapped.ILLUMINA.bwa.CEU.exome.20121211.bam

samtools view -f 0x02 -b random.bam > Day1/paired.bam 

java -jar $PICARD SamToFastq I=Day1/paired.bam F=Day1/sample.fq1 VALIDATION_STRINGENCY=SILENT F2=Day1/sample.fq2 R1_MAX_BASES=68 R2_MAX_BASES=68

