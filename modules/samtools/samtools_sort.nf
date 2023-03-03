process SAMTOOLS_SORT {
    tag "${sampleID}"

    cpus 8
    memory 50.GB
    time '10:00:00'
    container 'quay.io/biocontainers/samtools:1.10--h9402c20_2'

    input:
        tuple val(sampleID), file(sam)

    output:
        tuple val(sampleID), file("${sampleID}.bam"), emit: bam

    script:
        """
        samtools sort --threads ${task.cpus} -m ${task.memory} ${sam}> ${sampleID}.bam
        """
}