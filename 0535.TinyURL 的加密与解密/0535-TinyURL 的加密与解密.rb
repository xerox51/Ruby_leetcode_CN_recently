# Encodes a URL to a shortened URL.
#
# @param {string} longUrl
# @return {string}
require "base64"

def encode(longUrl)
  Base64.encode64(longUrl)
end

# Decodes a shortened URL to its original URL.
#
# @param {string} shortUrl
# @return {string}
def decode(shortUrl)
  Base64.decode64(shortUrl)
end

# Your functions will be called as such:
# decode(encode(url))
