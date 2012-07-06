require 'rainbow'
require 'uri'
require 'net/http'
require 'json'

# The main class
class Domr
  # Perform a query on domainr API
  #
  # Example:
  #   >> Domr.search "example"
  #    example.com taken
  #    example.net taken
  #    example.org taken
  #   => true
  #
  # Arguments:
  #   query: (String)
  def self.search query

    # Form the request string
    request = Net::HTTP::Get.new('/api/json/search?q=' << URI.escape(query))

    # Perform the actual query
    response = Net::HTTP.start('domai.nr') do |http|
      http.request request
    end

    # Check for errors
    if response.code != '200'
      puts "HTTP error".color(:red).bright
      return false
    end

    # Output results
    JSON.parse(response.body)['results'].each do |result|

      # Determine color to show
      case result['availability']
      when 'available'
        color = :green
      when  'taken', 'unavailable'
        color = :default
      when 'maybe'
        color = :yellow
      else
      color = :default
      end

      # Construct final output string
      string = ' ' << result['domain'] << ' ' << result['availability']

      # Output colorized string
      puts string.color(color).bright
    end

    return true
  end
end