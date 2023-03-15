process LUMPY_EXTRACT_SPLITS {
    tag "$sample_name"
    
    cpus = 8
    memory = 40.GB
    time = "10:00:00"

    container 'quay.io/jaxcompsci/lumpy-ref_data:0.3.1--2'
    
    input:
        tuple val(sampleID), file(bam)
    
    output:
        tuple val(sampleID), file("${sampleID}_splitreads.bam"), emit: bam_bwa_lumpy

    script:
    """
        samtools view -h ${bam} \
        | extractSplitReads_BwaMem -i stdin \
        | samtools view -Sb - > ${sampleID}_splitreads.bam
    """
}