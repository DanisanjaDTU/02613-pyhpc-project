Project code structure
- `simulate.py` module loads data, simulates, prints results. 
To optimize the code, we have to improve `jacobi` and `simulate` function to begin with.
We might be able to gain speedup with how data is loaded, but let's see.

- `task2.sh` is for submitting a job. Run `bsub < task2.sh`.
You can use it as a template or modify it as needed.

- `visualize.py` module contains a function to visualize
an initial condition and a mask for a building.
Might be useful for debugging purposes.
To use it, run `python visualize.py <building_id>`.


Git basic
- Set up the repository
    - Clone this repository with git clone
    - Create your branch
        `git checkout -b <branch_name>`
    - Push your branch to github
        `git push -u origin HEAD`
- Work on the project
    - After making changes, stage files to commit
        `git add <file1> <file2>`
    - Commit the changes and push to github
        `git commit -m "<add comment here>"; git push`
    - You can always check states of your repo (which branch you're on, which files are changed, which are staged, etc.)
        `git status`
- Other commands
    - To check out different branch
        `git checkout <branch_name>`

    
Tasks 4–6

- `task4/simulate_profile.py` includes @profile for profiling the jacobi function.
- `task4/profiling_output.txt` contains line-by-line timing results from kernprof.
- `task4/task4.sh` is the HPC script used to run the profiler.

- `task5/simulate_parallel_static.py` uses static scheduling with executor.map().
- `task5/task5.sh` is the submission script for running with different core counts.
- `task5/output_static_1.txt`, `output_static_2.txt`, `output_static_4.txt`, and `output_static_8.txt` contain execution results for the different numbers of cores (1,2,4,8).

- `task6/simulate_parallel_dynamic.py` uses dynamic scheduling with as_completed().
- `task6/task6.sh` is the submission script.
- `task6/output_dynamic.txt` contains the result using 4 cores.

To run any script on the HPC, first activate the course environment:

source /dtu/projects/02613_2025/conda/conda_init.sh  
conda activate 02613
