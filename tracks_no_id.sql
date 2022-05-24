select a.title as albumTitle,
t.Name as TrackTitle,
m.Name as mediaType,
g.name as genre
from Album as a
join Track as t
on t.AlbumId = a.AlbumId
join MediaType as m
on m.MediaTypeId = t.MediaTypeId
join Genre as g
on t.GenreId = g.GenreId