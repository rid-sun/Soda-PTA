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
