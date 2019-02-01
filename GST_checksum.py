def checksum(gst):
    check = gst[-1]
    gst = gst[:-1]
    l = [int(c) if c.isdigit() else ord(c)-55 for c in gst]
    l = [val*(ind % 2 + 1) for (ind, val) in list(enumerate(l))]
    l = [(int(x/36) + x%36) for x in l]
    csum = (36 - sum(l)%36)
    csum = str(csum) if (csum < 10) else chr(csum + 55)
    return True if (check == csum) else False
