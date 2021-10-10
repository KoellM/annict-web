# frozen_string_literal: true

module ForumCategoryDecorator
  def local_name
    return name if I18n.locale == :ja
    return name_cn if I18n.locale == :"zh-CN"
    name_en
  end
end
