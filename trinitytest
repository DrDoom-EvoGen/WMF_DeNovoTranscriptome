#!/bin/bash
#
#
# Options for Slurm sbatch begin with '#SBATCH'. Everything else is shell commands.
#
#SBATCH --job-name    trinitytest        # Job name
#SBATCH --output      trinitytest.out # File to store stdout, with jobid in the name
#SBATCH --error       trinitytest.err # File to store stderr, with jobid in the name
#SBATCH --partition   defq         # Partition name to run the job in
#SBATCH --nodes       1            # Total number of nodes
#SBATCH --ntasks      32            # Total number of tasks
#SBATCH --mem         64000         # 2000 MB of Memory
#SBATCH --time        23:59:00   # Maximum run time (d-hh:mm:ss) -- 3 minutes here
#SBATCH --mail-user   gregory.chorak@student.montana.edu # user to send emails to
#SBATCH --mail-type   ALL                    # Email on: BEGIN, END, FAIL & REQUEUE
## Run 'man sbatch' for more information on the options above.


cd /mnt/lustrefs/work/gregory.chorak/prog/trinityrnaseq-Trinity-v2.8.4

Trinity --seqType fq --SS_lib_type FR --left /mnt/lustrefs/store/gregory.chorak/RefData/cleanreads/G21_RR_1_cleanhumcatdogmousebac.fq,/mnt/lustrefs/store/gregory.chorak/RefData/cleanreads/G30_RR_1_cleanhumcatdogmousebac.fq,/mnt/lustrefs/store/gregory.chorak/RefData/cleanreads/G36_RR_1_cleanhumcatdogmousebac.fq,/mnt/lustrefs/store/gregory.chorak/RefData/cleanreads/G48_RR_1_cleanhumcatdogmousebac.fq --right /mnt/lustrefs/store/gregory.chorak/RefData/cleanreads/G21_RR_2_cleanhumcatdogmousebac.fq,/mnt/lustrefs/store/gregory.chorak/RefData/cleanreads/G30_RR_2_cleanhumcatdogmousebac.fq,/mnt/lustrefs/store/gregory.chorak/RefData/cleanreads/G36_RR_2_cleanhumcatdogmousebac.fq,/mnt/lustrefs/store/gregory.chorak/RefData/cleanreads/G48_RR_2_cleanhumcatdogmousebac.fq --CPU 32 --max_memory 64G
