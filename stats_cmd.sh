#!/bin/bash
diff <(bcftools stats -s - inputs/check.vcf.gz | grep -v '^# The command' | grep -v '^# This' | grep -v '^IDdiff <(') <(cat test/check.chk)
diff <(bcftools stats -s -  inputs/stats.a.vcf.gz inputs/stats.b.vcf.gz | grep -v '^#' | grep -v '^IDdiff <(') <(cat test/stats.chk)
