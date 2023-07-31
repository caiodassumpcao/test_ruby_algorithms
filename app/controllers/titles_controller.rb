require 'csv'

class TitlesController < ApplicationController
  def import_csv
    csv_file = params[:file]

    CSV.foreach(csv_file.path, headers: true) do |row|
      title_params = {
        id: row['id'],
        title: row['title'],
        genre: row['genre'],
        year: row['year'],
        country: row['country'],
        published_at: row['published_at'],
        description: row['description']
      }

      Title.create(title_params)
    end

    render json: { message: 'CSV import successful' }
  end

  def index
    @titles = Titles.all

    if params[:year].present?
      @titles = titles.where(year: params[:year])
    end

    if params[:genre].present?
      @titles = titles.where(genre: params[:genre])
    end

    if params[:country].present?
      @titles = titles.where(country: params[:country])
    end

    render json: @titles.select(:id, :title, :genre, :year, :country, :published_at, :description)
  end
end










