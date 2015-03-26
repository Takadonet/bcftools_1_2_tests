#!/bin/bash
diff <(bcftools call -mv test/mpileup.vcf | grep -v ^##bcftools_) <(cat test/mpileup.1.out)
diff <(bcftools call -Ob -mv test/mpileup.vcf | bcftools view | grep -v ^##bcftools_) <(cat test/mpileup.1.out)
diff <(bcftools call -mvg0 test/mpileup.vcf | grep -v ^##bcftools_) <(cat test/mpileup.2.out)
diff <(bcftools call -Ob -mvg0 test/mpileup.vcf | bcftools view | grep -v ^##bcftools_) <(cat test/mpileup.2.out)
diff <(bcftools call -mA -C alleles -T inputs/mpileup.tab.gz test/mpileup.vcf | grep -v ^##bcftools_) <(cat test/mpileup.cAls.out)
diff <(bcftools call -Ob -mA -C alleles -T inputs/mpileup.tab.gz test/mpileup.vcf | bcftools view | grep -v ^##bcftools_) <(cat test/mpileup.cAls.out)
