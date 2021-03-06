#!/bin/bash
diff <(bcftools reheader -h test/reheader.hdr test/reheader.vcf | bcftools view | grep -v ^##bcftools_) <(cat test/reheader.1.out)
diff <(bcftools reheader -h test/reheader.hdr inputs/reheader.bcf | bcftools view | grep -v ^##bcftools_) <(cat test/reheader.1.out.bcf)
diff <(bcftools reheader -h test/reheader.hdr inputs/reheader.vcf.gz | bcftools view | grep -v ^##bcftools_) <(cat test/reheader.1.out)
diff <(bcftools reheader -s test/reheader.samples test/reheader.vcf | bcftools view | grep -v ^##bcftools_) <(cat test/reheader.2.out)
diff <(bcftools reheader -s test/reheader.samples inputs/reheader.bcf | bcftools view | grep -v ^##bcftools_) <(cat test/reheader.2.out)
diff <(bcftools reheader -s test/reheader.samples inputs/reheader.vcf.gz | bcftools view | grep -v ^##bcftools_) <(cat test/reheader.2.out)
diff <(bcftools reheader -s test/reheader.samples2 test/reheader.vcf | bcftools view | grep -v ^##bcftools_) <(cat test/reheader.2.out)
diff <(bcftools reheader -s test/reheader.samples2 inputs/reheader.bcf | bcftools view | grep -v ^##bcftools_) <(cat test/reheader.2.out)
diff <(bcftools reheader -s test/reheader.samples2 inputs/reheader.vcf.gz | bcftools view | grep -v ^##bcftools_) <(cat test/reheader.2.out)
