#!/bin/bash
#
#
# Options for Slurm sbatch begin with '#SBATCH'. Everything else is shell commands.
#
#SBATCH --job-name    bbmapmouse        # Job name
#SBATCH --output      bbmapmouse.out # File to store stdout, with jobid in the name
#SBATCH --error       bbmapmouse.err # File to store stderr, with jobid in the name
#SBATCH --partition   defq         # Partition name to run the job in
#SBATCH --nodes       16            # Total number of nodes
#SBATCH --ntasks      1            # Total number of tasks
#SBATCH --mem         32000         # 2000 MB of Memory
#SBATCH --time        23:59:00   # Maximum run time (d-hh:mm:ss) -- 3 minutes here
#SBATCH --mail-user   gregory.chorak@student.montana.edu # user to send emails to
#SBATCH --mail-type   ALL                    # Email on: BEGIN, END, FAIL & REQUEUE
## Run 'man sbatch' for more information on the options above.


cd /mnt/lustrefs/store/gregory.chorak/RefData/dogcon


for i in `ls -1 *_cleanhumcatdog.fq | sed 's/_cleanhumcatdog.fq//'`

do

bbmap.sh minid=0.95 maxindel=3 bwr=0.16 bw=12 quickmatch fast minhits=2 path=/mnt/lustrefs/store/gregory.chorak/RefData qtrim=rl trimq=10 untrim -Xmx32g in=$i\_cleanhumcatdog.fq outu=$i\_cleanhumcatdogmouse.fq outm=$i\_mousecon.fa

done
