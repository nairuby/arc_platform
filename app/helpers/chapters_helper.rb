# frozen_string_literal: true

module ChaptersHelper
  def activities
    [
      { image: 'activities_local_meetups.png', title: 'Local meetups' },
      { image: 'activities_local_conferences.png', title: 'conferences' },
      { image: 'activities_local_programming.png', title: 'programming' },
      { image: 'activities_local_workshops.png', title: 'workshops' },
      { image: 'activities_local_hackathons.png', title: 'hackathons' }
    ]
  end

  def chapters
    [
      { country: 'Kenya', image: 'country_kenya.png', alt: 'Nairuby' },
      { country: 'Rwanda', image: 'country_rwanda.png', alt: 'ARC_Rwanda' },
      { country: 'Tanzania', image: 'country_tanzania.png', alt: 'ARC_Tanzania' },
      { country: 'Uganda', image: 'country_uganda.png', alt: 'ARC_Uganda' }
    ]
  end

  def featured_sponsors
    [
      { image: 'sponsors/current/nairobits.png', link: 'https://www.nairobits.com/', alt: 'Nairobits' },
      { image: 'sponsors/current/finplus.png', link: 'https://finplusgroup.com', alt: 'Finplus Group' }
    ]
  end

  def previous_sponsors
    [
      { image: 'sponsors/previous/shopify.webp', link: 'https://www.shopify.com/', alt: 'Shopify' },
      { image: 'sponsors/previous/turing.png', link: 'https://www.turing.com/', alt: 'Turing' },
      { image: 'sponsors/previous/kopokopo.png', link: 'https://kopokopo.co.ke', alt: 'Kopokopo' },
      { image: 'sponsors/previous/kwara.png', link: 'https://kwara.com/', alt: 'Kwara' },
      { image: 'sponsors/previous/ihub.png', link: 'https://ihub.co.ke/', alt: 'iHub, Nairobi' },
      { image: 'sponsors/previous/andela.png', link: 'https://andela.com/', alt: 'Andela' }
    ]
  end

  def socials
    [{ alt: 'ARC Twitter', link: 'https://twitter.com/ruby_african', image: 'brands_twitter.png', show: true },
     { alt: 'ARC telegram', link: '#', image: 'brands_telegram.png',
       show: FeatureFlag.find_by(name: 'telegram').try(:enabled) },
     { alt: 'ARC facebook', link: 'https://www.facebook.com/rubycommunity.africa',
       image: 'brands_facebook.png', show: true },
     { alt: 'ARC Instagram', link: '#', image: 'brands_instagram.png', show: true },
     { alt: 'ARC LinkedIn', link: 'https://www.linkedin.com/company/african-ruby-community/',
       image: 'brands_linkedin.png', show: true },
     { alt: 'ARC Github', link: 'https://github.com/nairuby', image: 'brands_github.png', show: true }]
  end
end
