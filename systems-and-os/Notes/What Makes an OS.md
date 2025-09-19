1. Virtualization:
    Make an instance of a running program, a process, believe it has each resource to itself
    This allows for one to run multiple programs at once
    Or on a single core computer, one can pretend multiple programs are running at the same time.
    Sharing the CPU
    * A program alternates between phases
        * Input
        * Computation
        * Output
    * The CPU idles for I/O
        * This allows for the OS to compute other programs on the CPU while the
        CPU is not busy computing other ones
    All programs are contained inside of processes, programs can call new processes.
    * A process is a virtual chunk of the cpu that allows the process to act as if they have the whole cpu

    **The Process Control Block:**
    * A data structure that contains information about the process.
    * This is what is interacted with to, for example: force terminate a process
    **Process Table**
    * The process table stores the PCB's
    **Process Creation**

    2 Options:
    1. Create from scratch (windows)
    2. Create from copy (unix/linux)
        *  Uses fork() and exec(char *file) 
        * fork() -> int (negative on fail)
            * stop process and save state
            * Copy code, data, stack and PCB
            * add new PCB to ready list
            * make necessary changes
        * exec(char* file) -> int:
            * replace the current data and code with whats in the new file 
    **Process Status Word (PSW)**
    * Contains important information for cpu function
    * Determines whether or not it can be interrupted (interrupt enable control bit)
    * as well as bits related to last executed instruction like whether or not 
    the last output was positive

    **TRAP/Supervisor Calls**
    * The user cannot access the hardware of a machine directly among other things
    * Regardless programs may need to access these parts of the machine
    * This is done through a TRAP call and TRAP handler which allows for the program
    * to communicate with the hardware/system through API calls

