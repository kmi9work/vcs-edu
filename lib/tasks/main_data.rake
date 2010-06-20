namespace :db do

  desc "Заполнение Студентов"
  task(:student => :environment) do    
  Student.create("group"=>"4361", "name"=>"Юди\320\275", "second_name"=>"Алексе\320\271", "password_confirmation"=>"123456", "last_name"=>"Александрови\321\207", "password"=>"123456", "login"=>"qaa12", "email"=>"qaa12@mail.msiu.ru")
  Student.create("group"=>"4361", "name"=>"Костенчук", "second_name"=>"Михаил", "password_confirmation"=>"123456", "last_name"=>"Ильич", "password"=>"123456", "login"=>"kmi9", "email"=>"kmi9@mail.msiu.ru")
  end 

end