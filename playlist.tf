resource "spotify_playlist" "MY_gym" {
  name        = "MY_gym"
  tracks = [
    "1DaF1xu2qeaxYOK0TeycKP"
  ]
}

data "spotify_search_track" "Anirudh_Ravichander" {
  artist = "anirudh_Ravichander"
}

resource "spotify_playlist" "Ani_damaal" {
  name        = "Ani_damaal"
  tracks = [data.spotify_search_track.Anirudh_Ravichander.tracks[3].id,
    data.spotify_search_track.Anirudh_Ravichander.tracks[4].id,
    data.spotify_search_track.Anirudh_Ravichander.tracks[6].id]
}