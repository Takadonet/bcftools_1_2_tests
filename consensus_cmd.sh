#!/bin/bash
diff <(bcftools consensus inputs/consensus.vcf.gz -f test/consensus.fa  -m test/consensus.tab ) <(cat test/consensus.1.out)
diff <(bcftools consensus inputs/consensus.vcf.gz -f test/consensus.fa  -m test/consensus.tab -c inputs/consensus.1.chain.new > /dev/null; cat inputs/consensus.1.chain.new) <(cat test/consensus.1.chain)
diff <(bcftools consensus inputs/consensus.vcf.gz -f test/consensus.fa -H 1 -m test/consensus.tab ) <(cat test/consensus.2.out)
diff <(bcftools consensus inputs/consensus.vcf.gz -f test/consensus.fa -H 1 -m test/consensus.tab -c inputs/consensus.2.chain.new > /dev/null; cat inputs/consensus.2.chain.new) <(cat test/consensus.2.chain)
diff <(bcftools consensus inputs/consensus.vcf.gz -f test/consensus.fa -i -m test/consensus.tab ) <(cat test/consensus.3.out)
diff <(bcftools consensus inputs/consensus.vcf.gz -f test/consensus.fa -i -m test/consensus.tab -c inputs/consensus.3.chain.new > /dev/null; cat inputs/consensus.3.chain.new) <(cat test/consensus.3.chain)
diff <(bcftools consensus inputs/consensus.vcf.gz -f test/consensus.fa -H 1  ) <(cat test/consensus.4.out)
diff <(bcftools consensus inputs/consensus.vcf.gz -f test/consensus.fa -H 1  -c inputs/consensus.4.chain.new > /dev/null; cat inputs/consensus.4.chain.new) <(cat test/consensus.4.chain)
