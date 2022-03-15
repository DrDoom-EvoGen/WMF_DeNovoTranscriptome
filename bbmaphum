#!/bin/bash
#
#
# Options for Slurm sbatch begin with '#SBATCH'. Everything else is shell commands.
#
#SBATCH --job-name    bbmaphum        # Job name
#SBATCH --output      bbmaphum.out # File to store stdout, with jobid in the name
#SBATCH --error       bbmaphum.err # File to store stderr, with jobid in the name
#SBATCH --partition   defq         # Partition name to run the job in
#SBATCH --nodes       16            # Total number of nodes
#SBATCH --ntasks      1            # Total number of tasks
#SBATCH --mem         32000         # 2000 MB of Memory
#SBATCH --time        23:59:00   # Maximum run time (d-hh:mm:ss) -- 3 minutes here
#SBATCH --mail-user   gregory.chorak@student.montana.edu # user to send emails to
#SBATCH --mail-type   ALL                    # Email on: BEGIN, END, FAIL & REQUEUE
## Run 'man sbatch' for more information on the options above.


cd /mnt/lustrefs/store/gregory.chorak/RefData/ar


for i in `ls -1 *_ARduked.fq | sed 's/_ARduked.fq//'`

do

bbmap.sh t=16 minid=0.95 maxindel=3 bwr=0.16 bw=12 quickmatch fast minhits=2 path=/mnt/lustrefs/store/gregory.chorak/RefData qtrim=rl trimq=10 untrim -Xmx32g in=$i\_ARduked.fq outu=$i\_clean.fq outm=$i\_human.fq

done
