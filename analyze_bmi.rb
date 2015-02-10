require_relative 'bmi.rb'

=begin
����� ��� ����������� ��������� �������� �� ������� ����� ����
  ����T��-�+ �+��T� �-��T����+�������-��T� ���-T������-T����� T������-�-�����- ���- ���-�+����T�T� �-�-T�T�T� T������-
Метод для определения категории человека по индексу массы тела

  Underweight: < 18.5
  Normal weight: 18.5 - 24.9
  Overweight: 25 - 29.9
  Obese: ≥ 30

  http://bmicalculator.cc/?gclid=COyX3qrjg78CFagSwwodtrMA1g
  #TODO определить категорию человека для найденного bmi
=end

def analyze_bmi(weight, height)
  bmi = bmi(weight, height)
  #TODO �-��T����+������T�T� ���-T������-T���T� T������-�-�����- �+��T� �-�-���+���-�-�-���- bmi
  #TODO ���������� ��������� �������� ��� ���������� bmi

=begin
  if bmi < 18.5
    puts(" Underweight ")
  end
  if (bmi >= 18.5) && (bmi < 24.9)
    puts(" Normal weight ")
  end
  if (bmi > 25) && (bmi < 29.9)
    puts(" Overweight ")
  end
  if bmi >= 30
    puts(" Obese ")
  end
end
=end

#=begin
  return 'Underweight' if bmi < 18.5
  return 'Normal weight' if bmi.between?(18.5, 24.9)
  return 'Overweight' if bmi.between?(25, 29.9)
  'Obese'
end

