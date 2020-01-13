class Student


  def initialize(name, cohort, what_to_say)
    @student_name = name
    @cohort = cohort
    @what_to_say = what_to_say
  end


  #-------getters
  def student_name()
    return @student_name
  end

  def cohort()
    return @cohort
  end

  def what_to_say()
    return @what_to_say
  end

  def fav_language()
    return @fav_language
  end

  #-------SETTERS
  def set_student_name(new_name)
    @student_name = new_name
  end

  def set_cohort(new_cohort)
    @cohort = new_cohort
  end

  def talk(what_to_say)
    @what_to_say = what_to_say
    p @what_to_say
  end

  def set_fav_language(prog_language)
    what_to_say = "I love #{prog_language}"
    talk(what_to_say)
  end

end
