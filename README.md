# Deez Meds

Every time my daycare receives a bottle of pills, it has to be counted. And NO ONE wants to do that every morning. So it's more efficient to leave the daycare with the exact number of pills needed for the duration of the prescription. This is a simple calculator to help with that.

## Requirements

- Ruby (version 3.1.1p18)

## Installation

1. Clone the repository

    ```ruby
    git clone git@github.com:GreenGogh47/deez_meds.git
    ```

2. Navigate to the directory
  
    ```ruby
    cd deez_meds
    ```

3. Install required dependancies by running `bundle install`.

## Usage for 'code.rb'

1. Enter the number of pills taken per day on line 11.

    ```ruby
    pills_per_day = 2
    ```

   If the number of pills taken is 1, then comment out line 6.

    ```ruby
    # raise "Total number of pills must be even" unless total_pills.even?
    ```

2. Modify the names of the pill recipients on lines 13-16. You can remove names or add them as needed. Names must end with ` = {pills: 0}` and must be lowercase.

    ```ruby
    chris = {pills: 0}
    sam = {pills: 0}
    dave = {pills: 0}
    ```

3. Enter who administers pills during the week and when. In the example below: Sam and dave receive 1 pill for Monday, but Sam receives 2 pills for Saturday. You don't need to enter the same name twice in a day.

    ```ruby
    people = {
      monday: [sam, dave],
      tuesday: [sam, dave],
      wednesday: [chris, dave],
      thursday: [chris, dave],
      friday: [chris, dave],
      saturday: [sam],
      sunday: [sam],
    }
    ```

4. Enter the total number of pills to be distributed on line 46.

    ```ruby
    total_pills = 100
    ```

5. Enter any special modifications and notes after line 34.

    ```ruby
    # 4th of July I have them for lunch instead of dave
    chris[:pills] += 1
    dave[:pills] -= 1
    ```

6. Modify the output names to match the names used in the previous steps.

    ```ruby
    puts "Chris: #{chris[:pills]}"
    puts "Sam: #{sam[:pills]}"
    puts "dave: #{dave[:pills]}"
    ```

7. Run `ruby code.rb`, and the output will be displayed in the terminal.

## Usage for 'er_meds.rb'

This code only accounts for 1 Extended Release pill per day. In this case, daycare isn't part of the equation, because he's only taking one pill in the morning (or in the evening depending on the medication).