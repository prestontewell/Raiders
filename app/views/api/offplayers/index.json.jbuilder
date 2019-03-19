json.array! @offplayers.each do |offplayer|
  json.partial! "offplayer.json.jbuilder", offplayer: offplayer
end