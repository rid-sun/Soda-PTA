# Soda-PTA_noGNN
This project is the Soda-PTA optimization framework with a GCN integrated.

## Stucture of code
```
configs               GNN configuration information
core                  Optimizer and model definition
createG               Extracting netlist information and constructing graphs
data                  Circuit datasets, WSPICE tool control scripts, and data preprocessing files
infrastructure        Model configuration files, miscellaneous toolkits, and scripts to avoid pop-ups when running WSPICE on Windows.
layers                GNN layers setup
opscripts.py          Batch run command scripts
run.py                Main entry point for the Soda-PTA framework
wspice1.exe           SPICE simulator executable file
```

## How to run
```python
python opscipts.py
```

## Replacing another SPICE tool
> WSPICE operates in interactive mode rather than batch mode, so if you replace it with another SPICE tool, you will need to modify control func [control](./data/data.py).  
 
> The default file format for reading solution curve information is specific to WSPICE:
> ```text
> rhs[id] timepoints voltages[0] ... voltages[n] residual nr_iter
> ```
> func [readMsg](./data/data.py) will also need to be modified when replacing WSPICE with another SPICE tool.
>
> 