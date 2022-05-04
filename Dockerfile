version: 1.0
runtime: python3
build:
  commands:
    build:
    - yum install conda
    -conda install -c conda-forge cartopy
    - pip install -r requirements.txt
run:
  command: python application.py
  network:
    port: 8050
