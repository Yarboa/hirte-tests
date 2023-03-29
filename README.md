# hirte-tests
Integration tests for [hirte systemd service controller](https://github.com/containers/hirte)


## tmt test framework
Integration tests executed with [tmt framework](https://github.com/teemtee/tmt) 
Tests can be siscovered by plans through tmt metadata specifications

- Install tmt

```
pip install tmt
```
- Run plans
```
tmt run plans -n /plans/tier0
```
