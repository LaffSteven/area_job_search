class AreaJobSearch::CLI

  def call
    poll_user
    list_jobs
    menu
    goobye
  end

########    Methods Below Here    ########

  def poll_user
    puts "Welcome to the Area Job Search Assistant"
    get_zip
    get_miles
    confirm_search
  end
  
  def get_zip
    puts "Please enter the zip code you would like to search"
    @zip = gets.strip
    sleep(0.25)
  end
  
  def get_miles
    puts "Please enter the distance from #{@zip} you want to search:"
    @miles = gets.strip
    sleep(0.25)
  end
  

  def confirm_search
    puts "You want to search for Jobs within #{@miles} miles of #{@zip}?"
    puts "Please yes or no"
    input = nil
    input = gets.strip.downcase
    yes_or_no(input)
  end
   
  def yes_or_no(i)
    case i
      when "yes" || "y"
        search_confirmed
      when "no" || "n"
        early_goodbye
      else
        "Error: invalid input ${i}"
        early_goodbye
    end
  end  
  
  def search_confirmed
    puts "You are now searching for Software Jobs within #{@miles} miles of #{@zip}"
  end
  
  def early_goodbye
    puts "Sorry, please start over"
    exit!
  end
  
end
