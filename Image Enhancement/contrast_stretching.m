function [] = contrast_streching()
  
  % replace `PATH_TO_IMAGE` with actual image file path
  impath = 'PATH_TO_IMAGE';

  % read image
  img = imread(impath);
  
  % find the min. value of pixel in the image
  rmin = min(min(img));      
  
  % find the max. value of pixel in the image
  rmax = max(max(img));      
  
  % find the slope of line joining point (0,255) to (rmin,rmax)
  m = 255/(rmax - rmin);  
  
  % find the intercept of the straight line with the axis
  c = 255 - m*rmax;       
  
  % transform the image according to new slope
  i_new = m*img + c;        
  
  % plot the results
  subplot(1,2,1),imshow(img);     % display original gray image
  title('Gray Image','FontSize',20);
  subplot(1,2,2),imshow(i_new);   % display transformed image  
  title('Transformed Gray Image','FontSize',20);
  
endfunction
