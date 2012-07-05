# Domr
# By Nick Shvelidze
# Simple search for domain names
# Command-Line usage:
#    domr example.com
# => example.com is taken

require 'domainr'
require 'rainbow'

# Simple search for domain names
# The main class
# Usage:
# Domr.search(query)
class Domr
  
  # Perform a query on domainr API
  #
  # Example:
  #   >> Domr.search "exapmle"
  #   => example.com taken
  #
  # Arguments:
  #   query: (String)
  def self.search query

    # Output a newline
    puts "\n"

    # Perform the actual query
    response = Domainr.search(query)
    
    # Output results
    response.results.each do |result|

      # Determine color to show
      if result.availability == 'available'
        color = :green
      elsif result.availability == 'taken' || result.availability == 'unavailable'
        color = :red
      elsif result.availability == 'maybe'
        color = :yellow
      else
        color = :white
      end

      # Construct final output string
      string = " " << result.domain << " " << result.availability

      # Output colorized string
      puts string.color(color)
    end
  end
end