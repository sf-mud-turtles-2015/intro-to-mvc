class Batch
  attr_reader :cookies

  def initialize(batch_size)
    @cookies =  Array.new(batch_size) {Cookie.new}
  end

  def baked?
    @cookies.first.done?
  end

  def pass_some_time(time = 1)
    @cookies.each { |cookie| cookie.heat_up(time) }
  end
end

class Cookie
  attr_reader :delicious, :baking_time, :diameter

  def initialize
    @delicious = true
    @baking_time = 11
    @diameter = 3
  end

  def done?
    @baking_time <= 0
  end

  def heat_up(minutes)
    @baking_time -= 1
  end
end

module Controller
  def self.run!

    cookie_count = View.prompt_for_cookies_count

    batch = Batch.new cookie_count.to_i

    until batch.baked?
      batch.pass_some_time
      View.display_cookie_info(batch)
    end

    View.celebrate_and_eat_cookies
  end
end

module View
  def self.prompt_for_cookies_count
    puts "how many cookies in the batch?"
    gets.chomp
  end

  def self.display_cookie_info(batch)
    p batch

    puts "baking"

    puts "..."

    p batch.cookies
  end

  def self.celebrate_and_eat_cookies
    puts "YAY!! There are cookies!"
  end
end

Controller.run!
