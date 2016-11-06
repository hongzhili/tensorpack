

rm -rf train_log 

filename=Test_Report_`date +%s`.txt


start=`date +%s`
python imagenet-resnet.py --gpu 0 --data ./data 
end=`date +%s`

runtime=$((end-start))


echo "#############################################################"
echo "#                                                           #"
echo "#                       Test Report                         #"
echo "#                                                           #"
echo "#############################################################"
echo "                                                           "
echo "       Trained 1000 iters, 128 images per minibatch        "
echo "       Time: $runtime seconds                              "
echo "       Speed: $((128000 / runtime)) images/second                   "
echo "                                                           "
echo "#############################################################"



echo "#############################################################" >> $filename
echo "#                                                           #" >> $filename
echo "#                       Test Report                         #" >> $filename
echo "#                                                           #" >> $filename
echo "#############################################################" >> $filename
echo "                                                           " >> $filename
echo "       Trained 1000 iters, 128 images per minibatch        " >> $filename
echo "       Time: $runtime seconds                              " >> $filename
echo "       Speed: $((128000 / runtime)) images/second          " >> $filename
echo "                                                           " >> $filename
echo "#############################################################" >> $filename
