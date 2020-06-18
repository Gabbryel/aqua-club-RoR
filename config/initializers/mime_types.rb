# Be sure to restart your server when you modify this file.

# Add new mime types for use in respond_to blocks:
# Mime::Type.register "text/richtext", :rtf
Rack::Mime::MIME_TYPES.merge!({
  ".mp4" => 'video/mp4;codecs="AVC1.4D401E, MP4A.40.2"',
  ".WebM" => 'video/webm;codecs="vp8,vorbis"',
  ".ogv" => 'video/ogg'
})