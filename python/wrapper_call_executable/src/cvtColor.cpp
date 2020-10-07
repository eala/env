#include <iostream>
#include <fstream>
#include <string>

#include "opencv2/core.hpp"
#include "opencv2/imgproc.hpp"
#include "opencv2/imgcodecs.hpp"

using namespace std;
using namespace cv;

int main(int argc, char *argv[]) {
    if (argc > 1) {
        string src_file_name(argv[1]);
        Mat src_img = imread(src_file_name.c_str());

        Mat dst_img;
        cvtColor(src_img, dst_img, COLOR_BGR2YUV);

        uchar* buffer = dst_img.data;

        string dst_file_name(src_file_name + "_" + to_string(src_img.rows) + "x" + to_string(src_img.cols) + ".bin");
        ostringstream filename;
        filename << dst_file_name;
        std::ofstream outfile (filename.str().c_str(), ios::out | ios::binary);
        cout << "total size: " << dst_img.total() << "\n";
        outfile.write ((char*)(buffer), dst_img.total());
        outfile.close();
    } else {
        cout << "Usage: opencv_app Lenna.jpg" << endl;
    }
    return 0;
}
