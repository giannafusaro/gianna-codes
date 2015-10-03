# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
FastSeeder.seed_csv!(Post, "posts.csv",	:title,	:date,	:author,	:abstract,	:body,	:img_url,	:url_title,	:created_at,	:updated_at)
FastSeeder.seed_csv!(Admin, "admis.csv", :username,	:password_digest,	:created_at,	:updated_at)
