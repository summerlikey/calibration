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

## 标定步骤
### 使用zhang.cpp标定
1. 在path文件夹中新建txt文件.将图片文件名写入，以便读取

2. 修改zhang.cpp中main主函数中的图片路径和结果路径，最后调用
    
	```c++
    //图片路径
	string images300_path = "path/images300.txt";
    //结果路径
	string images300_result = "path/images300_result.txt";
	//运行程序
	zhang_calibration(images300_path,images300_result,12,4);
	```

### 使用opencv官方标定