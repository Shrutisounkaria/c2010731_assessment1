#!/bin/bash
transeq -sequence /home/student/assessment_1/data/23data.txt -outseq /home/student/assessment_1/results/24/24_translated_peptides.fasta
echo "----------------Longest ORF---------------" >> /home/student/assessment_1/results/24/24_results.txt
grep -E "M[^*]*\*"  /home/student/assessment_1/results/24/24_translated_peptides.fasta | awk 'BEGIN{maxlen=0} {len=length($2); if(len > maxlen) {maxlen=len; longest=$2}} END{print longest}' >> /home/student/assessment_1/results/24/24_results.txt
