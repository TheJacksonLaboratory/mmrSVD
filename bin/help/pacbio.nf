def help(){
  println '''
  Parameter | Default | Description
  --pubdir | /<PATH> | The directory that the saved outputs will be stored.
  --cacheDir | /projects/omics_share/meta/containers | This is directory that contains cached Singularity containers. JAX users should not change this parameter.
  -w | /<PATH> | The directory that all intermediary files and nextflow processes utilize. This directory can become quite large. This should be a location on /fastscratch or other directory with ample storage.
  --keep_intermediate
  --sampleID | <STRING> | The sample ID for the input data.
  --pbmode | <STRING> | Specify whether input data are CCS or CLR.
  --pbsv_tandem | true | Controls whether PBSV uses tandem repeat annotations during the "discover" methods.

  The following parameters include mutually exclusive options for specifying input data, including --fastq1/--fastq2, --sample_folder, OR, --bam

  Parameter | Default | Description
  --fastq1 | /<PATH> | The path to a single FASTQ file.
  --bam | /<PATH> | The path to a BAM input data if alignment has already been performed outside this pipeline.

  Reference data parameters:
  Parameter | Default | Description
  --genome_build | "GRCm38" | Parameter that controls reference data used for alignment and annotation. GRCm38 is the default value, GRCm39 is an accepted alternate value.
  --fasta | /<PATH> | Path to the reference genome in FASTA format.
  --fasta_index | /<PATH> | Optional paramter to specify index for reference genome. If not provided, pipeline will generate an index.
  --bwa_index | /<PATH> | Optional paramter to specify BWA indices for alignment. If not provided, pipeline will generate these indices.
  --tandem_repeats | /ref_data/ucsc_mm10_trf_chr_sorted.bed | BED file that lists the coorinates of tandem repeats
  --sv_ins_ref | /ref_data/variants_freeze5_sv_INS_mm39_to_mm10_sorted.bed.gz | BED file that lists previously indentified insertion SVs
  --sv_del_ref | /ref_data/variants_freeze5_sv_DEL_mm39_to_mm10_sorted.bed.gz | BED file that lists previously indentified deletion SVs
  --sv_inv_ref | /ref_data/variants_freeze5_sv_INV_mm39_to_mm10_sorted.bed.gz | BED file that lists previously indentified inversion SVs
  --reg_ref | /ref_data/mus_musculus.GRCm38.Regulatory_Build.regulatory_features.20180516.gff.gz | BED file that lists regulatory features
  --genes_bed | /ref_data/Mus_musculus.GRCm38.102.gene_symbol.bed | BED file that lists gene symbol IDs and coordinates
  --exons_bed | /ref_data/Mus_musculus.GRCm38.102.exons.bed | BED file that lists exons and coordinates

  SURVIVOR merging parameters:
  Parameter | Default | Description
  --surv_dist | 1000 | Maximum distance between breakpoints for merging SVs.
  --surv_supp | 1 | The number of callers (out of 4) required to support an SV.
  --surv_type | 1 | Boolean (0/1) that requires SVs to be the same type for merging.
  --surv_strand | 1 | Boolean (0/1) that requires SVs to be on the same strand for merging.
  --surv_min | 30 | Minimum length (bp) to output SVs.

'''
}
