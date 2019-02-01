# GSTIN regex and its checksum

GSTIN regex 

### `\d{2}[A-Z]{5}\d{4}[A-Z]{1}[A-Z\d]{1}[Z]{1}[A-Z\d]{1}`


![](https://i.stack.imgur.com/YdvSA.png)

#### Format details

* First 2 digits of the GST Number will represent State Code as per the Census (2011).
* Next 10 digits will be same as in the PAN number of the taxpayer.
* First five will be alphabets
* Next four will be numbers
* Last will be check code
* The 13th digit will be the number of registration you take within a state i.e. after 9, A to Z is considered as 10 to 35 .
* 14th digit will be Z by default.
* Last would be the check code.


[GST CheckSum](https://medium.com/@dhananjaygokhale/decoding-gst-number-checksum-digit-1ef2c8c53ad6)

[Javascript checksum verification](https://github.com/tk120404/gst/blob/master/gstchecksum.js) 
