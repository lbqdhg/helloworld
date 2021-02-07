file_path = 'F:\草莓数据集\三类\X\';%图像文件夹路径
img_path_list = dir(strcat(file_path,'*.jpg'));
img_num  = length(img_path_list);%获取图像总数量
I = cell(1,img_num);
path = 'F:\草莓数据集\四类227resize\X\';


if img_num >0
    for j = 1:img_num
      image_name = img_path_list(j).name;%图像名
      image  = imread(strcat(file_path,image_name));
      ResizeImg=imresize(image,[227,227],'nearest');%调整图像大小为227×227
      %ResizeImg=imresize(image,0.1);%调整图像大小
      %C = ind2rgb(gray2ind(ResizeImg,255),jet(255));
      imwrite(ResizeImg,[path,num2str(j),'.jpg'])
    end
end