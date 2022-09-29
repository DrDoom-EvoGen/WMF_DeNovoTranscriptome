#!/bin/bash
#
#
# Options for Slurm sbatch begin with '#SBATCH'. Everything else is shell commands.
#
#SBATCH --job-name    bbduktest        # Job name
#SBATCH --output      bbduktest.out # File to store stdout, with jobid in the name
#SBATCH --error       bbduktest.err # File to store stderr, with jobid in the name
#SBATCH --partition   defq	   # Partition name to run the job in
#SBATCH --nodes       16            # Total number of nodes
#SBATCH --ntasks      1            # Total number of tasks
#SBATCH --mem         32000         # 2000 MB of Memory
#SBATCH --time        23:59:00   # Maximum run time (d-hh:mm:ss) -- 3 minutes here
#SBATCH --mail-user   gregory.chorak@student.montana.edu # user to send emails to
#SBATCH --mail-type   ALL                    # Email on: BEGIN, END, FAIL & REQUEUE
## Run 'man sbatch' for more information on the options above.


cd /mnt/lustrefs/store/gregory.chorak/RefData


for i in `ls -1 *_1.fq | sed 's/_1.fq//'`

do

bbduk.sh -Xmx32g t=16 in1=$i\_1.fq in2=$i\_2.fq out1=$i\R_1_ARduked.fq out2=$i\R_2_ARduked.fq ref=/mnt/lustrefs/work/gregory.chorak/prog/bbmap/resources/adapters.fa ktrim=r k=31 hdist=1 tpe tbo


done
