# Eutrophication-predicion-model-app
An application developed based on MATLAB for predicting changes in phosphorus concentration and algae concentration during lake eutrophication under stratified conditions.

![APP interface](docs/images/APP%20interface.png)
## Cite this work
If you use this app in your research, please cite:  
> Chufan Zhou (2025). *Eutrophication-prediction-model-app*. GitHub.  https://github.com/Yoko286/Eutrophication-prediction-model-app
### Use this app
This is a simple app designed for predicting variations in phosphorus concentration and algae concentration in the context of lake eutrophication. Users can input initial parameters to make predictions, which are intended for reference only.The following parameters need to be entered：  
P	Phosphorus concentration	（mg/L）  
a	Coefficient affecting the change of phosphorus concentration (P)	（mg/L/day）  
b	Natural decay coefficient of phosphorus concentration	（day−1）  
ga()	Coefficient affecting algal growth	（mg/L/day）  
mu()	The death or decay rate of algae	（day−1）  
A	Initial algal concentration	（mg/L）  
Ib	Basic phosphorus input rate	（mg/L/day）  
dt	Time step	（days）  
T	Total simulation time	（days）  
layers	Number of layers of water body	（layers）  

If you set the number of layers of the water body to 4 layers, then you need to re-enter the parameters of the 4 layers of water layers, once for the first layer, the second layer, the third layer, the fourth layer, the values are separated by spaces, if you are 5 layers or other layers of water and so on. When you want to run the app, click the "S" button on the homepage to draw the model.

If you're using a `.m` file and a `.mlapp` file, you just need to put both files in the same folder and run the `.mlapp` file in MATLAB to get started.  
Or, if you prefer not to see the code and you happen to have MATLAB installed, simply double-click the downloaded `app.mlappinstall` file; the app will then appear in the **APPS** tab at the top of your MATLAB window—click it to launch.

![Use it in MATLAB APP](docs/images/Use%20it%20in%20MATLAB%20APP.png)
Finally, you only need to click on the "s" in the center of the Mini Program to see the forecast chart drawn on the right.
