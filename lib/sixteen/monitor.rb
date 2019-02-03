# frozen_string_literal: true

require "json"

module Sixteen
  class Monitor
    def self.perform
      domains = Sixteen::Source.phishy_domains
      websites = domains.map { |domain| Website.new(domain) }

      websites.each do |website|
        next unless website.sixteen_shop?

        Notifier.notify(website.domain, website.to_attachments)
      end
    end
  end
end
