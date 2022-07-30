#ifndef STEREO_MATCHING_SSD_STEREO_H
#define STEREO_MATCHING_SSD_STEREO_H
#include "opencv2/core/utility.hpp"
#include "opencv2/highgui.hpp"
#include "opencv2/imgcodecs.hpp"
#include "opencv2/imgproc.hpp"
#include <stdio.h>
#include <iostream>
using namespace cv;
using std::string;
using cv::Mat;

class Stereo {
private:
	int win_size_, max_disparity_, tran_win_size_;
	string cost_;
	bool parallel_;
public:
	
	Stereo(int window_size, int max_dis, int tran_size, string cost, bool parallel) {
		this->win_size_ = window_size;  // block size
		this->max_disparity_ = max_dis;
		this->tran_win_size_ = tran_size; // matching cost windows size
		this->cost_ = cost;
		this->parallel_ = parallel;
	}
    ~Stereo();
	//int get_tranwinsize() { return tran_win_size_; } // dubug
	Mat rank_transform(Mat &image, int tran_size);
	Mat census_transform(Mat &image, int tran_size);
	Mat stereo_match(Mat &left, Mat &right);
	//Mat stereo_match_parallel(Mat left, Mat right);
	
};

#endif //STEREO_MATCHING_SSD_STEREO_H