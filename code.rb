# My Solution V1

def pills_distribution(total_pills)
  chris = 0
  sam = 0
  april = 0
  puts "Total pills: #{total_pills}\n"
  
  until total_pills == 0
    # Friday
    chris += 1
    april += 1
    total_pills -= 2
    # Saturday
    sam += 2
    total_pills -= 2
    # Sunday
    sam += 2
    total_pills -= 2
    # Monday
    sam += 1
    april += 1
    total_pills -= 2
    # Tuesday
    sam += 1
    april += 1
    total_pills -= 2
    # Wednesday
    chris += 1
    april += 1
    total_pills -= 2
    #Thursday
    chris += 1
    april += 1
    total_pills -= 2
  end

  # 4th of July I have them for lunch instead of april
  chris += 1
  april -= 1

  puts "Chris: #{chris}"
  puts "Sam: #{sam}"
  puts "April: #{april}"
end

pills_distribution(28)