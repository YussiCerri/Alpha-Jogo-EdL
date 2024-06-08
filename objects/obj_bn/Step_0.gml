if t == 0 instance_destroy(self)
else{
	with(all){
		var _dist = distance_to_object(other)
		var _dir = point_direction(x,y,other.x,other.y)
		if _dist > 0{
			x += dcos(_dir)*min(1000/_dist,_dist)
			y -= dsin(_dir)*min(1000/_dist,_dist)
		}
	}
	t--
}