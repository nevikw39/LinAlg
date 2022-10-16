#!/home/nevikw39/.conda/envs/linalg/bin/python

import csv
import time

import numpy as np
import scipy as sp

import scipy.linalg.blas as blas


np.show_config()
sp.show_config()

rows = []

for i in range(20):
    n = (i + 1) * 1000
    s = 0

    for j in range(10):
        a = np.random.rand(n, n)
        b = np.random.rand(n, n)

        tik = time.perf_counter()
        c = blas.dgemm(1, a, b)
        tok = time.perf_counter()

        d = np.dot(a, b)
        assert np.allclose(c, d)

        s += tok - tik

    lst = [n, s / 10]
    rows.append(lst)
    print(lst)

with open("plot.csv", 'w') as f:
    csv.writer(f).writerows(rows)
