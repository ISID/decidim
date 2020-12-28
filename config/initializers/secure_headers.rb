=begin
SecureHeaders::Configuration.default do |config|

    config.csp = {
      # "meta" values. these will shaped the header, but the values are not included in the header.
      # report_only: true,      # default: false [DEPRECATED from 3.5.0: instead, configure csp_report_only]
      preserve_schemes: false, # default: false. Schemes are removed from host sources to save bytes and discourage mixed content.
  
      # directive values: these values will directly translate into source directives
      default_src: %w('self'),
      base_uri: %w('self'),
      block_all_mixed_content: true, # see http://www.w3.org/TR/mixed-content/
      child_src: %w('self'), # if child-src isn't supported, the value for frame-src will be set.
      connect_src: %w(wss:),
      font_src: %w('self' data:),
      form_action: %w('self' github.com),
      frame_ancestors: %w('none'),
      img_src: %w(*),
      media_src: %w('self'),
      object_src: %w('self'),
      plugin_types: %w(application/x-shockwave-flash),
      script_src: %w(*),
      style_src: %w('self' 'unsafe-inline'),
      upgrade_insecure_requests: true, # see https://www.w3.org/TR/upgrade-insecure-requests/
    }
  end
=end