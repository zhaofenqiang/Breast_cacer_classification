clc;
clear;

%% load benign data
benign_root_path = '/media/zfq/本地磁盘/BreaKHis_v1/benign/SOB';
benign_type_list = dir(benign_root_path);

benign_40_ix = 1;
benign_100_ix = 1;
benign_200_ix = 1;
benign_400_ix = 1;

for i = 3:length(benign_type_list)
    benign_type_path = strcat(benign_root_path, '/', benign_type_list(i).name);
    sub_list = dir(benign_type_path);
    for j = 3:length(sub_list)
        sub_path = strcat(benign_type_path, '/', sub_list(j).name);
        
        sub_40_path = strcat(sub_path , '/', '40X');
        sub_40_list = dir(sub_40_path);
        for k = 3:length(sub_40_list)
            img_path = strcat(sub_40_path, '/', sub_40_list(k).name);
            img = imread(img_path);
            benign_40{benign_40_ix} = img;
            benign_40_ix = benign_40_ix + 1;
        end
        
        sub_100_path = strcat(sub_path , '/', '100X');
        sub_100_list = dir(sub_100_path);
        for k = 3:length(sub_100_list)
            img_path = strcat(sub_100_path, '/', sub_100_list(k).name);
            img = imread(img_path);
            benign_100{benign_100_ix} = img;
            benign_100_ix = benign_100_ix + 1;
        end
        
        sub_200_path = strcat(sub_path , '/', '200X');
        sub_200_list = dir(sub_200_path);
        for k = 3:length(sub_200_list)
            img_path = strcat(sub_200_path, '/', sub_200_list(k).name);
            img = imread(img_path);
            benign_200{benign_200_ix} = img;
            benign_200_ix = benign_200_ix + 1;
        end
        
        sub_400_path = strcat(sub_path , '/', '400X');
        sub_400_list = dir(sub_400_path);
        for k = 3:length(sub_400_list)
            img_path = strcat(sub_400_path, '/', sub_400_list(k).name);
            img = imread(img_path);
            benign_400{benign_400_ix} = img;
            benign_400_ix = benign_400_ix + 1;
        end
        
    end
end

%% load malignant data
malignant_root_path = '/media/zfq/本地磁盘/BreaKHis_v1/malignant/SOB';
malignant_type_list = dir(malignant_root_path);

malignant_40_ix = 1;
malignant_100_ix = 1;
malignant_200_ix = 1;
malignant_400_ix = 1;

for i = 3:length(malignant_type_list)
    malignant_type_path = strcat(malignant_root_path, '/', malignant_type_list(i).name);
    sub_list = dir(malignant_type_path);
    for j = 3:length(sub_list)
        sub_path = strcat(malignant_type_path, '/', sub_list(j).name);
        
        sub_40_path = strcat(sub_path , '/', '40X');
        sub_40_list = dir(sub_40_path);
        for k = 3:length(sub_40_list)
            img_path = strcat(sub_40_path, '/', sub_40_list(k).name);
            img = imread(img_path);
            malignant_40{malignant_40_ix} = img;
            malignant_40_ix = malignant_40_ix + 1;
        end
        
        sub_100_path = strcat(sub_path , '/', '100X');
        sub_100_list = dir(sub_100_path);
        for k = 3:length(sub_100_list)
            img_path = strcat(sub_100_path, '/', sub_100_list(k).name);
            img = imread(img_path);
            malignant_100{malignant_100_ix} = img;
            malignant_100_ix = malignant_100_ix + 1;
        end
        
        sub_200_path = strcat(sub_path , '/', '200X');
        sub_200_list = dir(sub_200_path);
        for k = 3:length(sub_200_list)
            img_path = strcat(sub_200_path, '/', sub_200_list(k).name);
            img = imread(img_path);
            malignant_200{malignant_200_ix} = img;
            malignant_200_ix = malignant_200_ix + 1;
        end
        
        sub_400_path = strcat(sub_path , '/', '400X');
        sub_400_list = dir(sub_400_path);
        for k = 3:length(sub_400_list)
            img_path = strcat(sub_400_path, '/', sub_400_list(k).name);
            img = imread(img_path);
            malignant_400{malignant_400_ix} = img;
            malignant_400_ix = malignant_400_ix + 1;
        end
        
    end
end