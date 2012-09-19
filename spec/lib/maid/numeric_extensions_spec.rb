require 'spec_helper'

describe Maid::NumericExtensions::Time, '#since?' do
  it 'should tell you that 1 week ago happened after 2 weeks ago' do
    (1.week.since? 2.weeks.ago).should be_true
  end

  it 'should tell you that 2 weeks ago was not after 1 week ago' do
    (2.week.since? 1.weeks.ago).should be_false
  end
end

describe Maid::NumericExtensions::SizeToKb do
  it 'should tell you that 1 megabyte equals 1024 kilobytes' do
    (1.megabyte == 1024.kilobytes).should be_true
  end

  it 'should tell you that 1 gigabyte equals 1024 megabytes' do
    (1.gigabyte == 1024.megabytes).should be_true
  end
  
  it 'should tell you that 1 terabyte equals 1024 gigabytes' do
    (1.terabyte == 1024.gigabytes).should be_true
  end
end