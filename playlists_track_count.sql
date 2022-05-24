SELECT p.Name,
COUNT(pt.TrackId) as playlistTrackCount
from PlaylistTrack as pt
join Playlist as p 
    on p.PlaylistId = pt.PlaylistId
group by p.Name