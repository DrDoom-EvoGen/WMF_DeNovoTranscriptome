# WMF_DeNovo_Transcriptome

- Roadmap and documentation of Eurasian watermilfoil (sensu lato) de novo transcriptome assembly and annotation. The transcriptome was assembled using pure Eurasian (Myriophyllum spicatum) and hybrid (M. sibricum X  M. spicatum).

### All scripts were run on a Linux-based high performance computing cluster at Montana State University. This cluster uses a SLURM job management system. Files run this way have ".sbatch" file extensions. 

	- bbduk_adapRM.sbatch - removes adapters from raw reads 

	- bbdukphix.sbatch - removes phix and other things added to Illumina sequencing 

	- We then removed common contaminant DNA by aligning to bacteria, cat, dog, mouse, and human reference files.

		- bbmapbac.sbatch, bbmapcat.sbatch, bbmapdog.sbatch, bbmapmouse.sbatch, and bbmaphum.sbatch

	- trinity.sbatch - de novo assembles all cleaned reads into a transcriptome 


Manuscript published at: https://doi.org/10.1016/j.aquabot.2023.103631 

Transcriptome available at: https://datadryad.org/stash/dataset/doi:10.5061/dryad.547d7wmcx




