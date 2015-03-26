#!/bin/bash
diff <(bcftools norm  -f test/norm.fa inputs/norm.vcf.gz | grep -v ^##bcftools_) <(cat test/norm.out)
diff <(bcftools norm -Ob  -f test/norm.fa inputs/norm.vcf.gz | bcftools view | grep -v ^##bcftools_) <(cat test/norm.out)
diff <(bcftools norm  -m- inputs/norm.split.vcf.gz | grep -v ^##bcftools_) <(cat test/norm.split.out)
diff <(bcftools norm -Ob  -m- inputs/norm.split.vcf.gz | bcftools view | grep -v ^##bcftools_) <(cat test/norm.split.out)
diff <(bcftools norm  -m+ inputs/norm.merge.vcf.gz | grep -v ^##bcftools_) <(cat test/norm.merge.out)
diff <(bcftools norm -Ob  -m+ inputs/norm.merge.vcf.gz | bcftools view | grep -v ^##bcftools_) <(cat test/norm.merge.out)
diff <(bcftools norm  -m+ -s inputs/norm.merge.vcf.gz | grep -v ^##bcftools_) <(cat test/norm.merge.strict.out)
diff <(bcftools norm -Ob  -m+ -s inputs/norm.merge.vcf.gz | bcftools view | grep -v ^##bcftools_) <(cat test/norm.merge.strict.out)
