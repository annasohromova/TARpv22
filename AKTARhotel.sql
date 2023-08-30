create table hosted_at(
id int PRIMARY key identity(1,1),
guest_id int FOREIGN KEY references guest(id),
occupied_room_id int FOREIGN KEY references occupied_room(id)
)

select * from hosted_at