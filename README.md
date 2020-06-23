# 自己的相机标定函数

```
└── my_camera_calibration
    ├── images
    │   ├── left_1.png
    │   ├── left_2.png
    │   ├── ...
    │   ├── left_2.JPG
    │   ├── right_1.png
    │   ├── right_2.png
    │   ├── ...
    │   └── right_n.png
    ├── path
    │   ├── left_images.txt
    │   ├── left_result.txt
    │   ├── right_images.txt
    │   └── right_result.txt
    └── capture.cpp
    └── zhang.cpp
```

## 标定单相机

capture.cpp进行拍摄　
zhang.cpp进行标定

images文件夹保存图片，path文件夹里面保存单相机图片位置和单相　机标定结果价格
TODO　标定文件夹中的所有图片,目前是制定图片
## 标定双相

