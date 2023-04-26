process PYTHON_PARSE_DEPTHS {

    tag "$sampleID"

    cpus 1
    memory 20.GB
    time "00:30:00"

    container 'quay.io/jaxcompsci/biopython-pyvcf:1.78'

    input:
        tuple val(sampleID), path(vcf)
        val(caller)
    output:
        tuple val(sampleID), path("${sampleID}_${caller}_depths.csv"), emit: csv
    script:

    if (params.workflow == "ont")
        """
        /usr/bin/env python ${projectDir}/bin/parse_caller_depths.py \
        -v ${vcf} \
        -o ${sampleID}_${caller}_depths.csv
        """
    else error "module relies on script that currently only supports ONT"
}