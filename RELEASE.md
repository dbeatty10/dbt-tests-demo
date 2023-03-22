## Instructions for how to build/release

Assuming a virtual environment is already created an activated as described in the `README`:

```shell
python3 -m pip install pip-tools
pip-compile --resolver=backtracking
```

This will make sure the `requirements.txt` file is up-to-date. Update the repo if it has any changes.
