require 'rainbow'
require 'uri'
require 'httparty'

# Perform a query on domainr API

#
# Example:
#   >> domr "example"
#   => 1
#
# Arguments:
#   query: (String)
#   flag: (:none or :silent)
def domr(query, flag = :none)

  # Activate silent mode if flag is set
  if flag == :silent
    silent = true
  else
    silent = false
  end

  # Query the Domainr API
  results = HTTParty.get('http://domai.nr/api/json/search?q=' << URI.escape(query))['results'];

  # Output results
  results.each do |result|

    # Determine color to show
    case result['availability']
    when 'available'
      color = :green
    when  'taken', 'unavailable'
      color = :red
    when 'maybe'
      color = :yellow
    else
      color = :default
    end

    # Construct final output string
    string = ' ' << result['domain'] << ' ' << result['availability']

    # Output colorized string
    puts string.color(color).bright if !silent
  end

  # Return number of available domain names
  return results.count { |result| result['availability'] == 'available' }
end
