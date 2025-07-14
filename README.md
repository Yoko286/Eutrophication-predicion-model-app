# Eutrophication-predicion-model-app
An application developed based on MATLAB for predicting changes in phosphorus concentration and algae concentration during lake eutrophication under stratified conditions.
## Cite this work
If you use this app in your research, please cite:  
> Zhou, C. (2025). Lake Eutrophication App (v1.0). GitHub. https://github.com/Yoko286/Eutrophication-predicion-model-app

###This is a simple app designed for predicting variations in phosphorus concentration and algae concentration in the context of lake eutrophication. Users can input initial parameters to make predictions, which are intended for reference only.The following parameters need to be entered：
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

####If you're using a .m file and a .mlappw file, you just need to put both files in the same folder and run the .mlapp file in matlab to get started, or if you don't like to see the code and you happen to have MATLAB software on your computer, you can find the Eutrophication prediction model in the downloaded file app.mlappinstall and click on it, then the app will appear in the app at the top of your MATLAB page, click on it to use

#####Finally, you only need to click on the "s" in the center of the Mini Program to see the forecast chart drawn on the right
