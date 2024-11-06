# PowerShell Parallel Processing Example

This script demonstrates the use of parallel processing in PowerShell 7 with `ForEach-Object -Parallel`, comparing its performance to sequential processing in PowerShell 5. By utilizing parallel processing, execution time can be significantly reduced, maximizing hardware resource usage on multicore systems.

## Description

The script iterates over a list (`$dataArray`) of numbers from 1 to 100, simulating a 1-second operation for each item. It measures the execution time in two configurations:
- **PowerShell 7**: Uses `ForEach-Object -Parallel` with a concurrency limit (`-ThrottleLimit`) of 64.
- **PowerShell 5**: Processes the items sequentially, without parallelism.

## Prerequisites

- **PowerShell 7** or **PowerShell 5** is required to run the script.
- PowerShell 7 is recommended to explore the benefits of parallel processing.

## Usage Instructions

1. Save the code in a `.ps1` file, for example, `ParallelProcessingExample.ps1`.
2. Open PowerShell.
3. Navigate to the directory where the `.ps1` file is saved.
4. Run the script with the following command:
   ```powershell
   .\ParallelProcessingExample.ps1
