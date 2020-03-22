require 'pry'
class MP3Importer
  attr_accessor :path, :mp3_files


  def initialize(path)
    @path = path
    @mp3_files = []
  end

  def files
    files = []
    files = Dir.new(path).entries
    @mp3_files = files.select {|file| file.include?(".mp3")}
    @mp3_files
  end

  def import
    @mp3_files.each {|song| Song.new_by_filename(song)}
  end

end
