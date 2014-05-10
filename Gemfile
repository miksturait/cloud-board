source 'https://rubygems.org'

# --- basic ---
gem 'rails', '4.1.0'
gem 'sqlite3'
gem 'friendly_id'

# --- assets ---
gem 'sass-rails', '~> 4.0.3'

gem 'csso-rails'
gem 'uglifier', '>= 1.3.0'

gem 'jquery-rails'

gem 'turbolinks'

# --- api ---
gem 'jbuilder', '~> 2.0'

# --- views ---
gem 'haml'
gem 'haml-rails'

gem 'draper'
gem 'simple_form'

# --- auth ---
gem 'sorcery'

# -- image upload ---
gem 'carrierwave'
gem 'cloudinary'

# --- datetime ---
gem 'tzinfo-data', platforms: [:mingw, :mswin]

# --- tracker ---
gem 'bugsnag'

group :development do
  gem 'thin'                # better alternative to webrick
  gem 'quiet_assets'        # get rid of assets from console
  gem 'commands'            # run rails commands from rails c to speed up the process
  gem 'better_errors'       # better error pages
  
  gem 'bullet'              # keep n-queries out of application
end

group :development, :test do
  gem 'rspec-rails', '3.0.0.beta2'      # rspec for rails
  gem 'factory_girl_rails', '~> 4.4.1'  
  gem 'ffaker', '~> 1.23.0'             # data randomizer
  
  gem 'pry', '~> 0.9.12.6'              # alternative console to irb / rails c
  
  gem 'binding_of_caller' 
end