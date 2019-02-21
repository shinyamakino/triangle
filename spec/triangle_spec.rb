require File.expand_path(File.dirname(__FILE__) + '/../triangle')

describe Triangle do
  specify { expect(Triangle.judge('1,1,1')).to eq '正三角形ですね！' }
  specify { expect(Triangle.judge('0,0,0')).to eq '三角形じゃないです＞＜' }
  specify { expect(Triangle.judge('-1,-1,-1')).to eq '三角形じゃないです＞＜' }
  specify { expect(Triangle.judge('1,3,3')).to eq '二等辺三角形ですね！' }
  specify { expect(Triangle.judge('0,3,3')).to eq '三角形じゃないです＞＜' }
  specify { expect(Triangle.judge('-1,3,3')).to eq '三角形じゃないです＞＜' }
  specify { expect(Triangle.judge('3,2,2')).to eq '二等辺三角形ですね！' }
  specify { expect(Triangle.judge('4,2,2')).to eq '三角形じゃないです＞＜' }
  specify { expect(Triangle.judge('2,3,4')).to eq '不等辺三角形ですね！' }
  specify { expect(Triangle.judge('1,2,4')).to eq '三角形じゃないです＞＜' }
  specify { expect(Triangle.judge('1,2,3')).to eq '三角形じゃないです＞＜' }
  specify { expect(Triangle.judge('4,3,2')).to eq '不等辺三角形ですね！' }
  specify { expect(Triangle.judge('5,3,2')).to eq '三角形じゃないです＞＜' }
  specify { expect(Triangle.judge('6,3,2')).to eq '三角形じゃないです＞＜' }
end
