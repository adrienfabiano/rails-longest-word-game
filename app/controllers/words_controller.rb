class WordsController < ApplicationController
  def game
    @grid = generate_grid
    # def included?(guess, grid)
    #   guess.chars.all? { |letter| guess.count(letter) <= grid.count(letter) }
    # end

    # def compute_score(attempt, time_taken)
    #   time_taken > 60.0 ? 0 : attempt.size * (1.0 - time_taken / 60.0)
    # end

    # def run_game
    #   result = { time: end_time - start_time }

    #   score_and_message = score_and_message(attempt, grid, result[:time])
    #   result[:score] = score_and_message.first
    #   result[:message] = score_and_message.last

    #   result
    # end

    # def score_and_message(attempt, grid, time)
    #   if included?(attempt.upcase, grid)
    #     if english_word?(attempt)
    #       score = compute_score(attempt, time)
    #       [score, "well done"]
    #     else
    #       [0, "not an english word"]
    #     end
    #   else
    #     [0, "not in the grid"]
    #   end
    # end

    # def english_word?(word)
    #   response = open("https://wagon-dictionary.herokuapp.com/#{word}")
    #   json = JSON.parse(response.read)
    #   return json['found']
    # end
  end

  def score
    @time_started = params[:time_started]
  #   require_relative "longest_word"



  #   puts "What's your best shot?"
  #   start_time = Time.now
  #   attempt = gets.chomp
  #   end_time = Time.now

  #   puts "******** Now your result ********"

  #   result = run_game(attempt, grid, start_time, end_time)

  #   puts "Your word: #{attempt}"
  #   puts "Time Taken to answer: #{result[:time]}"
  #   puts "Your score: #{result[:score]}"
  #   puts "Message: #{result[:message]}"

  #   puts "*****************************************************"
  # end
  end

  def generate_grid
    Array.new(8) { ('A'..'Z').to_a.sample }
  end
end
