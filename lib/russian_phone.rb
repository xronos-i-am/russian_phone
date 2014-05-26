# coding: utf-8

require "russian_phone/version"

module RussianPhone
  autoload :Field,             'russian_phone/field'
  autoload :Number,            'russian_phone/number'
  autoload :Codes,             'russian_phone/codes'
  autoload :PresenceValidator, 'russian_phone/presence_validator'
  autoload :FormatValidator,   'russian_phone/format_validator'

  def self.field(options = {})
    RussianPhone::Field.new(options)
  end
end

I18n.load_path += Dir.glob(File.join(File.dirname(__FILE__), '..', 'config', 'locales', '**', '*.{rb,yml}'))

if Object.const_defined?("RailsAdmin")
  require "russian_phone/rails_admin"
end
