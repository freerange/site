# Be sure to restart your server when you modify this file.
#
# This file contains migration options to ease your Rails 6.1 upgrade.
#
# Once upgraded flip defaults one by one to migrate to the new default.
#
# Read the Guide for Upgrading Ruby on Rails for more info on each option.

# Specify cookies SameSite protection level: either :none, :lax, or :strict.
#
# This change is not backwards compatible with earlier Rails versions.
# It's best enabled when your entire app is migrated and stable on 6.1.
Rails.application.config.action_dispatch.cookies_same_site_protection = :lax

# Specify whether `ActiveSupport::TimeZone.utc_to_local` returns a time with an
# UTC offset or a UTC time.
# ActiveSupport.utc_to_local_returns_utc_offset_times = true

# Change the default HTTP status code to `308` when redirecting non-GET/HEAD
# requests to HTTPS in `ActionDispatch::SSL` middleware.
# Rails.application.config.action_dispatch.ssl_default_redirect_status = 308

# Make `form_with` generate non-remote forms by default.
# Rails.application.config.action_view.form_with_generates_remote_forms = false
