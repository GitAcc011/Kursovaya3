min_host = None
max_host = None
min_val = float("inf")
max_val = float("-inf")
cpu_info_path = "files/cpu_loads.txt"

with open(cpu_info_path) as f:
    for line in f:
        host, val = line.strip().split()
        val = float(val)
        if val < min_val:
            min_val = val
            min_host = host
        if val > max_val:
            max_val = val
            max_host = host

with open("files/best_host.txt", "w") as f:
    f.write(min_host)

with open("files/worst_host.txt", "w") as f:
    f.write(max_host)
