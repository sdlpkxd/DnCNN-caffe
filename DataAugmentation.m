clear all;
close all;
folder = 'C:/Users/sm/Desktop/DnCNN/data/Train400';
savepath = 'Train400-aug/';

filepaths = [dir(fullfile(folder, '*.jpg'));dir(fullfile(folder, '*.bmp'));dir(fullfile(folder, '*.png'))];
     
for i = 1 : length(filepaths)
    filename = filepaths(i).name;
    [add, im_name, type] = fileparts(filepaths(i).name);
    image = imread(fullfile(folder, filename));
    
    for mode = 1:8
        if mode == 1
            imwrite(image, [savepath im_name, '_mode' num2str(mode) '.bmp']);
        end

        if mode == 2 % flipped
            image1 = flipud(image);
            imwrite(image1, [savepath im_name, '_mode' num2str(mode) '.bmp']);
        end

        if mode == 3 % rotation 90
            image1 = rot90(image,1);
            imwrite(image1, [savepath im_name, '_mode' num2str(mode) '.bmp']);
        end

        if mode == 4 % rotation 90 & flipped
            image1 = rot90(image,1);
            image1 = flipud(image1);
            imwrite(image1, [savepath im_name, '_mode' num2str(mode) '.bmp']);
        end

        if mode == 5 % rotation 180
            image1 = rot90(image,2);
            imwrite(image1, [savepath im_name, '_mode' num2str(mode) '.bmp']);
        end

        if mode == 6 % rotation 180 & flipped
            image1 = rot90(image,2);
            image1 = flipud(image1);
            imwrite(image1, [savepath im_name, '_mode' num2str(mode) '.bmp']);
        end

        if mode == 7 % rotation 270
            image1 = rot90(image,3);
            imwrite(image1, [savepath im_name, '_mode' num2str(mode) '.bmp']);
        end

        if mode == 8 % rotation 270 & flipped
            image1 = rot90(image,3);
            image1 = flipud(image1);
            imwrite(image1, [savepath im_name, '_mode' num2str(mode) '.bmp']);
        end
    end
end
