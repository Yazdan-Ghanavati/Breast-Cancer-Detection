# Breast Cancer Detection
A MATLAB Project based on Image-processing techniques(Thermogram image processing) for breast cancer detection. 


## Steps
* Data Collection
* Pre-Processing
* Feature Extraction
* Classification and Diagnose


## Step 1: Database
We have a database included 200 M.R.I images: 100 benign and 100 melignant.
Images are saved in .jpg format.
dmr-ir database visual lab --> thermo-mammo-mri


### What is cancer and what techniques are there for breast cancer screening?

#### Cancer 
The uncontrolled and abnormal growth of cells in a tissue is called cancer, 
        which occurs in the head in the form of a brain tumor, 
        in the breast as breast cancer, etc.


#### Screening techniques
* Mammography
* Thermography
* Sonography
* MRI
* Biopsy


##### Mamography
Common method of detection with a detection coefficient of 64%. More than two time per year will lead to breaste cancer. why?
because X-ray causes gene mutation and abnormal cell growth.

Men also can get breast cancer which is undetectable by Mammography!why?
because of the device structure.

In Mammography, we can only detect tumors located in Anterior lobes. Therefore, tumors in lateral lobes will be undetectable using this method.

Remember that this method is only used to detect cancer tumors and cannot predict cancer before the tumor formation. Also, dynamic imaging is unavailable in this method so the output is just a 2d image. Another major con of this method is confusing microcalsification with a tumor. 

###### Microcalsification
Clogging of the lactating ducts of women's breasts, which is caused by the calcification of the ducts, and after X-ray, they are seen as wedge-shaped blocks, which may cause a mistake in the diagnosis of a cancerous tumor in the breast.



##### Sonography
Ultrasound is used to detect boundaries. It is a cheap and harmless method that has disadvantages such as low image resolution. But where does the reason for the low quality of images in this method come from? Due to the change in the acoustic impedance caused by the change in the type of layers, so-called shadowing occurs, which will reduce the details in the processed image.



##### MRI
M.R.I is a harmless but expensive method that can produce images with better contrast and high resolution

Why is it not harmful? Because it works based on the magnetic field and makes the spin movement of the hydrogen ions inside the water molecule aligned with its own field due to the creation of a strong magnetic field. Finally, it cuts off the field and when the hydrogen atoms of the water molecule return to their original state and emit energy, it will absorb this energy and convert it into a M.R.I image.


##### Biposy
It means tissue sampling. A very invasive, painful and expensive method with a high detection rate. The use of this method is usually to diagnose the type of tumor and it will be the final stage of diagnosis.



##### Thermography
In this method, the temperature of the patient's body is transformed into an image. This method was used for the first time in the industry to detect cracks in the wing of an airplane, which will be detectable after the passage of air.
Its first use in medicine is to diagnose breast cancer. The places where the tumor is present are warmer due to the large number of cells and higher metabolism. Also, since cell growth requires blood flow, the temperature of cancerous tissue is higher than other places.

The detection rate in this method is more than 88%. It is a safe, non-invasive and very inexpensive method.
In this method, it is possible to take dynamic images of different parts of the examined tissue, so it can be used in the prediction of cancerous tumors.

This method includes 2 types of contact and non-contact, the first type is obsolete. In this method, there is a temperature sensor screen that has a temperature sensor installed in each section and the patient attaches his body to the screen to measure the temperature of the suspicious tissue. In the non-contact method, the patient is kept naked and in the first step, their body temperature is fixed in a standard environment. Then the imaging is started and the tissue is examined with a non-standard temperature. This method is one of the best methods in diagnosing knee rheumatism with a coefficient of 97%.

Since each image pixel is a temprature, we can convert final images into signals and apply statistical analysis.




