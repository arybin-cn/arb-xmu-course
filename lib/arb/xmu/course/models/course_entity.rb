module Arb
  module Xmu
    module Course
      class CourseEntity
        #选课系统课程标识
        attr_accessor :id
        #索引
        attr_accessor :index
        #课程名
        attr_accessor :name
        #学分
        attr_accessor :credit
        #教师名
        attr_accessor :teacher
        #班级
        attr_accessor :class_name
        #总学时
        attr_accessor :period

        #Entity.new(index: 1,credit: 3, ...)
        def initialize(**hash_args)
          yield self if block_given?
          hash_args.keys.each do |key|
            send "#{key}=", hash_args[key]
          end
        end

        #for row output
        def to_a
          [index, name, credit, class_name, teacher, period]
        end
      end
    end
  end
end