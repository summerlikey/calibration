#include<iostream>
#include <opencv2/core.hpp>
#include <opencv2/videoio.hpp>
#include <opencv2/highgui.hpp>


using namespace std;

void single_calibartion(){
    //标定单个相机,获得相机内参,畸变系数
}

void double_calibration(){
    //标定双目相机,获得相机内参，畸变系数，基线
}

using namespace cv;
using std::cout; 
using std::cerr; 
using std::endl;

int main(int, char**)
{
    Mat frame;
    Mat left_frame;
    Mat right_frame;
    cout << "Opening camera..." << endl;
    //双目的为４
    VideoCapture capture(4); // open the first camera
    if (!capture.isOpened())
    {
        cerr << "ERROR: Can't initialize camera capture" << endl;
        return 1;
    }
    //笔记本自带相机貌似不可以调大小，如果换笔记本相机请将下面两句注释掉
    capture.set(CAP_PROP_FRAME_WIDTH,1280);
    capture.set(CAP_PROP_FRAME_HEIGHT,480);
    int frame_width = capture.get(CAP_PROP_FRAME_WIDTH);
    int frame_height = capture.get(CAP_PROP_FRAME_HEIGHT);
    cout << "Frame width: " << frame_width << endl;
    cout << "     height: " << frame_height << endl;
    cout << "Capturing FPS: " << capture.get(CAP_PROP_FPS) << endl; 
    
    Rect rect_left(0,0,frame_width/2,frame_height);
    Rect rect_right(frame_width/2,0,frame_width/2,frame_height);
    cout<<rect_left<<endl;
    cout<<rect_right<<endl;

    cout << endl << "Press 'ESC' to quit, 'space' to toggle frame processing" << endl;
    cout << endl << "Start grabbing..." << endl;
    
    size_t nFrames = 0;
    bool enableProcessing = false;
    int64 t0 = cv::getTickCount();
    int64 processingTime = 0;
    int count = 0;
    for (;;)
    {
        capture >> frame; // read the next frame from camera
        if (frame.empty())
        {
            cerr << "ERROR: Can't grab camera frame." << endl;
            break;
        }
        nFrames++;
        if (nFrames % 10 == 0)
        {
            const int N = 10;
            int64 t1 = cv::getTickCount();
            cout << "Frames captured: " << cv::format("%5lld", (long long int)nFrames)
                 << "    Average FPS: " << cv::format("%9.1f", (double)getTickFrequency() * N / (t1 - t0))
                 << "    Average time per frame: " << cv::format("%9.2f ms", (double)(t1 - t0) * 1000.0f / (N * getTickFrequency()))
                 << "    Average processing time: " << cv::format("%9.2f ms", (double)(processingTime) * 1000.0f / (N * getTickFrequency()))
                 << std::endl;
            t0 = t1;
            processingTime = 0;
        }
        if (!enableProcessing)
        {
            imshow("Frame", frame);
            left_frame = Mat(frame,rect_left);
            right_frame = Mat(frame,rect_right);
            imshow("left_frame",left_frame);
            imshow("right_frame",right_frame);
        }
        else
        {
            count++;
            string left_path = "images/left_";
            string right_path = "images/right_";
            left_path = left_path + to_string(count) + ".png";
            right_path = right_path + to_string(count) + ".png";
            left_frame = Mat(frame,rect_left);
            right_frame = Mat(frame,rect_right);
            imwrite(left_path,left_frame);
            imwrite(right_path,right_frame);
            cout<<"get frame: "<<count<<endl;
            enableProcessing = !enableProcessing;
        }
        int key = waitKey(1);
        if (key == 27/*ESC*/)
            break;
        if (key == 32/*SPACE*/)
        {
            //按下空格拍摄
            enableProcessing = !enableProcessing;
            cout << "Enable frame processing ('space' key): " << enableProcessing << endl;
        }
    }
    std::cout << "Number of captured frames: " << nFrames << endl;
    return nFrames > 0 ? 0 : 1;
}
