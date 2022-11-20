require 'bundler/inline'

gemfile do
  source 'https://rubygems.org'
  gem 'kimurai'
end

require 'kimurai'

class PlacesScraper < Kimurai::Base
  @name = 'places_spider'
  @engine = :mechanize
  @start_urls = ["https://www.explore-izu.com/destinations/numazu/"]

  def parse(response, url:, data: {} )
    response = browser.current_response
    response.css('#left-area ul.elementor-icon-list-items, .elementor-edit-area .elementor-element ul.elementor-icon-list-items, .elementor .elementor-element ul.elementor-icon-list-items li a').each do |app|
      # href = app.attr('href')
      # browser.visit(href)
      app_response = browser.current_response
      scraped_places(app_response)
    end
  end

  private
  def scraped_places(response)
    place = {}
    place[:name] = response.css('')&.text&.squish
    place[:description] = response.css('')&.text&.squish
    place[:address] = response.css('')
    save_to "scraped_places.json", place, format: :pretty_json, position: false
  end

end

PlacesScraper.crawl!

