# Evolutionary Analysis of HIV Sequences

## Sara Nicholson

## Programs
dS_dN_Jan2024.R : Extracts dS & dN from results of PAML yn00 (The program yn00 implements the method of Yang and Nielsen (2000) for estimating synonymous
and nonsynonymous substitution rates between two sequences (dS and dN)) & creates visualizations to track the changes of these mutation rates between the time-points of the different HIV proteins.

Prep_fasta_files_for_PAML.py : Changes sequence names, removes gaps and Translates fasta files so that they are prepared to be input into Pal2Nal & PAML yn00 program.

Divergence.R : Prepares visualizations of SDSW results (Software for phylogenetic conservation analysis (Schauer et al. paper)) which calculates pairwise mismatch values on a sliding window of 50 bp between the reference and sequences for ecah time point in order to get divergence.

## Dependencies
Can be run on any OS with python and R installed.

## Date
July 2023

