class Price
  def self.display_code_combination(lesson)
    ret_val = ""
    @@amount = lesson[0]
    @@duration = lesson[1]
    @@code = lesson[1,3]  
    ret_val += "Lessoncode: #{lesson}\n"
    ret_val += "Amount: #{@@amount}\n"
    ret_val += "Duration: #{@@duration}\n"
    ret_val += "Code: #{@@code}\n"
  end

  def self.single_course_calculation(lesson)
    ret_val = ""
    @@price = 1
    pricelist = {
      MAX: 1000,
      TAX: 900,
      MAC: 1500,
      TAC: 1300,
      MAE: 2000,
      TAE: 1700,
      MAL: 3000,
      TAM: 3000
      }  
    @@price *= @@amount.to_i
    @@price *= pricelist[@@code.to_sym].to_i
    @@duration == "M" ? @@price *= 1 : @@price *= 3
    ret_val +=  "Price: #{@@price}\n"  
    ret_val +=  "---\n"
    ret_val
  end
  
  def self.total_course_calculation(lessonarray)
    ret_val = ""
    totalprice = 0
    lessonarray.each do |x| 
      ret_val += display_code_combination(x)
      ret_val += single_course_calculation(x)
      totalprice += @@price
    end
    ret_val += "Total Price: #{totalprice}"
    ret_val
  end
end

code = ["1TAX", "1MAL"]
puts Price.total_course_calculation(code)