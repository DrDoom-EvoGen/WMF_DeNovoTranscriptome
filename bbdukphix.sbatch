#!/bin/bash
#
#
# Options for Slurm sbatch begin with '#SBATCH'. Everything else is shell commands.
#
#SBATCH --job-name    bbdukphix        # Job name
#SBATCH --output      bbdukphix.out # File to store stdout, with jobid in the name
#SBATCH --error       bbdukphix.err # File to store stderr, with jobid in the name
#SBATCH --partition   defq         # Partition name to run the job in
#SBATCH --nodes       16            # Total number of nodes
#SBATCH --ntasks      1            # Total number of tasks
#SBATCH --mem         32000         # 2000 MB of Memory
#SBATCH --time        23:59:00   # Maximum run time (d-hh:mm:ss) -- 3 minutes here
#SBATCH --mail-user   gregory.chorak@student.montana.edu # user to send emails to
#SBATCH --mail-type   ALL                    # Email on: BEGIN, END, FAIL & REQUEUE
## Run 'man sbatch' for more information on the options above.


cd /mnt/lustrefs/store/gregory.chorak/RefData


for i in `ls -1 *_1_ARduked.fq | sed 's/_1_ARduked.fq//'`

do

bbduk.sh -Xmx32g t=16 in1=$i\_1_ARduked.fq in2=$i\_2_ARduked.fq out1=$i\R_1_PXduked.fq out2=$i\R_2_PXduked.fq ref=/mnt/lustrefs/work/gregory.chorak/prog/bbmap/resources/phix_adapters.fa.gz k=31 hdist=1 stats=$i\stats.txt


done
