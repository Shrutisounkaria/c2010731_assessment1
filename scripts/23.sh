#!/bin/bash
transeq -sequence /home/student/assessment_1/data/23data.txt -outseq /home/student/assessment_1/results/23/23_translated_peptides.fasta

echo "----------------ORF---------------" >> /home/student/assessment_1/results/23/23_results.txt
grep -E "M[^*]*\*" /home/student/assessment_1/results/23/23_translated_peptides.fasta >> /home/student/assessment_1/results/23/23_results.txt
echo "----------------Sequence count---------------" >> /home/student/assessment_1/results/23/23_results.txt
grep -E "M[^*]*\*" /home/student/assessment_1/results/23/23_translated_peptides.fasta | wc -l >> /home/student/assessment_1/results/23/23_results.txt
