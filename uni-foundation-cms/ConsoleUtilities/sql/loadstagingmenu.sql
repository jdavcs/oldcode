set identity_insert dbo.stagingmenu on
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(12, -1, 'a', 1, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(13, -1, 'b', 2, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(14, -1, 'c', 3, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(15, 12, 'a1', 1, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(16, 12, 'a2', 2, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(17, 13, 'b1', 1, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(18, 13, 'b2', 2, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(19, 14, 'c1', 1, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(20, 14, 'c2', 2, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(21, 15, 'a11', 1, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(22, 15, 'a12', 1, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(23, 16, 'a21', 1, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(24, 16, 'a22', 1, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(25, 17, 'b11', 1, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(26, 17, 'b12', 1, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(27, 18, 'b21', 1, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(28, 18, 'b22', 1, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(29, 19, 'c11', 1, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(30, 19, 'c12', 1, -1, 1)
insert into stagingmenu (id, parentid, text, rank, pageid, can_edit) values(31, 20, 'c21', 1, -1, 1)
set identity_insert dbo.stagingmenu off