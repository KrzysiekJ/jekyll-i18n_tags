# -*- coding: utf-8 -*-

module Jekyll
  class I18NTag < Liquid::Tag
    def initialize(tag_name, text, tokens)
      super
      @text = text.strip
    end

    def render(context)
      lang = context['page']['lang']
      raise "Page language not specified: #{context['page']['path']}" unless lang
      site = context['site']
      source_lang = context['site']['source_lang']
      if lang == source_lang
        @text
      else
        translations = site['translations'][lang]
        raise 'Translations not provided' unless translations
        translation = translations[@text]
        raise "Translation not provided: #{@text}" unless translation
        translation
      end
    end
  end
end

Liquid::Template.register_tag('t', Jekyll::I18NTag)
