class Triangle
  def self.judge(in_triangle = nil)
    triangle = (in_triangle || '').split(/,\s*/)
    unless triangle.count == 3
      return '三角形じゃないです＞＜'
    end

    a = triangle[0].to_i
    b = triangle[1].to_i
    c = triangle[2].to_i
    unless (b - c).abs < a && a < b + c
      return '三角形じゃないです＞＜'
    end

    case triangle.uniq.count
    when 1 then
      return '正三角形ですね！'
    when 2 then
      return '二等辺三角形ですね！'
    else
      return '不等辺三角形ですね！'
    end
  end
end

if __FILE__ == $PROGRAM_NAME
  puts Triangle.judge(ARGV[0])
end
