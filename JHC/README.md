Running the Sample Script

```bash
./scripts/run_MachZ3alpha_sample.sh

```

Results saved in experiments folder

When setting up MachSMT, use 

```bash
make dev
```

in a virtual environment. 

If does not work, try

```bash
pip install -e .
```

Make sure Machsmt module points to the source code, not in the site-packages directory, so the changes in the code  will take effect without having to reinstall.

Check with:

```bash
python -c "import machsmt; print(machsmt.__file__)"
```