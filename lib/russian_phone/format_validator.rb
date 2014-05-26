# coding: utf-8

module RussianPhone
  class FormatValidator < ActiveModel::Validator
    def validate(record)
      options[:fields].each do |field|
        unless record.send(field).phone.blank?
          record.errors[field] << I18n.t('russian_phone.incorrect_number') unless record.send(field).valid? && record.send(field).city_allowed?
        end
      end
    end
  end
end
