namespace :crawler do
require 'rubygems'
require 'nokogiri'
  desc "TODO"
  task vnnet: :environment do
  	 Api::Vn.crawling 
  end
end
