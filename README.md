# Breast Cancer Detection
A MATLAB project based on image-processing techniques (thermogram image processing) for breast cancer detection.

## Steps
* Data Collection
* Pre-Processing
* Feature Extraction
* Design a N.N. for Classification and Diagnose
* Evaluation



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


## Step 2: Pre-Processing

* Histogram conversion
* Median filter
* Laplacian filter

### Histogram conversion
This is the first pre-processing step in this project. This is a common method for high frequency noise reduction in image processing.

Images are displayed as a set of pixels which could have a value  between 0 and 255. If the value is close to 255 means it is representing white and vice versa. After emmiting radiation, usually there are two picks which creates noise in the image. So what we want to do is to spread these values in order to have a normalize pixel value in rhe full range.

Usually, in pixels with lower value, tissue is experiencing higher level of metabolism.



### Median filter
This is a smoothing filter which can remove outliers frequencies. usually by selecting a mask (3*3, 5*5, etc) we can sharpen the output. Exact value for the mask is normally set after multiple tries.


### Laplacian filter
This filter uses second derivative operator. Which means it is kind of a high pass filter that does not allow low frequency to be passed.

In this kind of filters(high pass) edges are the target. They sharpen the edges and as we increase the level of operator(in this example we use 2) the edges become more visible.

Now we have two parameters to set in this filter:
* Sigma
* Alpha
 

#### Sigma
It will affect edge range and as we increase its value, it will become easier to see the edges

#### Alpha
This parameter will affect The degree of smoothing of details. So as we increase its value, it will become harder to see the edges.

#### Image frequency
Changes in brightness intensity per unit of location are called image frequency.

## Step 3: Feature Extraction
* Maximum value
* Minimum value
* Mean
* Standard deviasion
* Entropy
* Kurtosis
* Sweness

Note: in a cancerious tissue, skewness and kurtosis will have a greater value. Temprature is stable in a healthy tissue, therefore, kurtosis will be lower.

## Step 4: Design a N.N. for Classification and Diagnose
A neural network is consisted by 3 steps:
* Training
* Validation
* Test

### Training
In this section, the goal is to find the weigth of each input data. Therefore, we will use the data that we are aware of their labels. usually 70-80 percent of data is used in this section.

### Validation
After training and finding the wight parameter, we will use it in validation section in order to check the accuracy of the trained model and in order to prevent our model to overfit on the input data. Usually 5% of our total dataset is enough for this section.

### Test
The network that is forgiven must be available and able to process new data correctly. As a result of that, the taining data cannot be used in test. usually 15-20 percent of our whole dataset is enough for this section. 


### Layers
Layers are divided in 3 parts. First one is the input layer which are as many as the features(7 in this case). In the output layer we will have 2 neurons which are based on the labels(2 in this case). But how many neurons in hidden layer should we choose?

#### Neurons in hidden layer
The number of neurons in this layer is usually calculated based on the below equation:

Number of neurons in hidden layer = sqrt(number of features + number of labels) ---> sqrt(7+2) = 3

Note: You can usually increase the accuracy by increasing the number of neurins in the hidden layer, however, you should be cautious about overfitting.




## Step 5: Evaluation
Finally after testing the n.n. on the test set, we can calculate the confusion matrix and based upon that, statistical analysis will be done.

confusion Matrix = TP, TN, FP, FN

Sensitivity = TP/(TP+FN)

Specifity = TN/(TN+FP)

Accuracy = (TP + TN)/(TP+TN+FP+FN)

Precision = TP/(TP+FP)

NPV = TN/(TN+FN)













