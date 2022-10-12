require 'sequel'
require 'sequel/extensions/seed'
require 'pg'
require 'json'
require 'multi_json'
require 'sinatra'
require "sinatra/namespace"
require 'json'

%w{ db controllers models routes }.each { |dir| Dir.glob("./#{ dir }/*.rb", &method(:require)) }