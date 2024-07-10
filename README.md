# Soda-PTA
Soda-PTA is implemented based on PyTorch and DGL, designed for online hyperparameter selection in the pseudo-transient analysis (PTA) algorithm during DC analysis in SPICE circuit simulation. Experimental results indicate that Soda-PTA consistently enhances the performance of PTA-related algorithms. For detailed design information, please refer to the reference[1].

## Structure
```text
Soda-PTA_noGNN      Soda-PTA operates without a GNN optimization framework.
Soda-PTA_withGNN    Soda-PTA operates with a GNN optimization framework.
```

## Reference
```
[1] Jiatai Sun, Xiaru Zha, Chao Wang, Xiao Wu, Dan Niu, Wei W. Xing and Zhou Jin. Pseudo Adjoint Optimization: Harnessing the Solution Curve for SPICE Acceleration. In Proceedings of 43rd ACM/IEEE International Conference on Computer-Aided Design, ICCAD '24.
```