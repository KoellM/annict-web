# frozen_string_literal: true

class AddChineseSupport < ActiveRecord::Migration[6.1]
  def change
    # Episodes
    add_column :episodes, :title_cn, :string, default: "", null: false
    add_column :episodes, :number_cn, :string, default: "", null: false
    # Works
    add_column :works, :title_cn, :string, default: "", null: false
    add_column :works, :title_alter_cn, :string, default: "", null: false
    add_column :works, :official_site_url_cn, :string, default: "", null: false
    add_column :works, :wikipedia_url_cn, :string, default: "", null: false
    add_column :works, :synopsis_cn, :string, default: "", null: false
    add_column :works, :synopsis_source_cn, :string, default: "", null: false
    # Casts
    add_column :casts, :name_cn, :string, default: "", null: false
    # Characters
    add_column :characters, :name_cn, :string, default: "", null: false
    add_column :characters, :kind_cn, :string, default: "", null: false
    add_column :characters, :nickname_cn, :string, default: "", null: false
    add_column :characters, :birthday_cn, :string, default: "", null: false
    add_column :characters, :age_cn, :string, default: "", null: false
    add_column :characters, :blood_type_cn, :string, default: "", null: false
    add_column :characters, :height_cn, :string, default: "", null: false
    add_column :characters, :weight_cn, :string, default: "", null: false
    add_column :characters, :nationality_cn, :string, default: "", null: false
    add_column :characters, :occupation_cn, :string, default: "", null: false
    add_column :characters, :description_cn, :string, default: "", null: false
    add_column :characters, :description_source_cn, :string, default: "", null: false
    # ForumCategories
    add_column :forum_categories, :name_cn, :string, default: "", null: false
    add_column :forum_categories, :description_cn, :string, default: "", null: false
    # Organizations
    add_column :organizations, :name_cn, :string, default: "", null: false
    add_column :organizations, :url_cn, :string, default: "", null: false
    add_column :organizations, :wikipedia_url_cn, :string, default: "", null: false
    add_column :organizations, :twitter_username_cn, :string, default: "", null: false
    # People
    add_column :people, :name_cn, :string, default: "", null: false
    add_column :people, :nickname_cn, :string, default: "", null: false
    add_column :people, :url_cn, :string, default: "", null: false
    add_column :people, :wikipedia_url_cn, :string, default: "", null: false
    add_column :people, :twitter_username_cn, :string, default: "", null: false
    # Series
    add_column :series, :name_cn, :string, default: "", null: false
    add_column :series, :name_alter_cn, :string, default: "", null: false
    # SeriesWorks
    add_column :series_works, :summary_cn, :string, default: "", null: false
    # Staffs
    add_column :staffs, :name_cn, :string, default: "", null: false
    add_column :staffs, :role_other_cn, :string, default: "", null: false
    # Trailers
    add_column :trailers, :title_cn, :string, default: "", null: false
    # UserlandCategories
    add_column :userland_categories, :name_cn, :string, default: "", null: false
  end
end
