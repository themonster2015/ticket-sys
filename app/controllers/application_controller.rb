# frozen_string_literal: true

class ApplicationController < ActionController::Base
  def booking_choice(choice, booked, total)
    case choice
    when 1
      if booked.odd?
        flash.now[:danger] = 'Because you chose multiple, you have to select an even number of tickets!'
        return false
      end
    when 2
      if booked != total
        flash.now[:danger] = 'Because you chose all together, you have to buy all the remaining tickets!'
        return false
      end
    else
      if total - booked == 1
        flash.now[:danger] = "Because you chose avoid one, you can't leave one ticket remaining!"
        return false
      end
    end
    true
  end

  def check_quantity(booked, total)
    if total == 0
      flash.now[:danger] = "There's no ticket available for this ticket class!"
      false
    elsif    booked > total
      flash.now[:danger] = "You can't book more tickets than the number available"
      false
    elsif booked < 0
      flash.now[:danger] = "The number of tickets can't be negative!"
      false
    else
      true
    end
  end
end
