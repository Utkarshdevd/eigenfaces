function [nn_ind, estimated_label] = EuclDistClassifier(train_data_pca,train_label,test_data_pca);

nn_ind=[];
estimated_label=[];
dist=[];
for i=1:size(test_data_pca,1)
    for j=1:size(train_data_pca,1)
       dist(j) = norm(test_data_pca(i,:)-train_data_pca(j,:)); 
    end
    [d_min,ind] = min(dist);
    estimated_label = [estimated_label;train_label(ind)];
    nn_ind = [nn_ind;ind];
end
