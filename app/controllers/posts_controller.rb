class PostsController < ApplicationController
  validates_presence_of :date, :rational
end
