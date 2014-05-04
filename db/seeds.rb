User.delete_all
Content.delete_all
Category.delete_all
Comment.delete_all
Location.delete_all
Attachment.delete_all
 
User.create!([
{id: 1, name: "Eren", email: "erenerdogan87@gmail.com", password:"147852", picture:"", manager: true},
{id: 2, name: "Suleyman", email: "sbmandal@gmail.com", password:"147852", picture:"", manager: true},
{id: 3, name: "Gokhan", email: "gokhanbyr@gmail.com", password:"147852", picture:"", manager: false}
])

Category.create!([
{id: 1, name: "Genel"},
{id: 2, name: "Duyuru"},
{id: 3, name: "Eğlence"},
{id: 4, name: "Haber"},
{id: 5, name: "Kişisel"},
{id: 6, name: "Reklam"}
])

Content.create!([
{id: 1, title: "Title 1", description: "Description 1", user_id: 1, category_id: 1, attachment_id: 1, location_id: 1},
{id: 2, title: "Title 2", description: "Description 2", user_id: 1, category_id: 2, attachment_id: 1, location_id: 2},
{id: 3, title: "Title 3", description: "Description 3", user_id: 2, category_id: 3, attachment_id: 1, location_id: 3},
{id: 4, title: "Title 4", description: "Description 4", user_id: 3, category_id: 2, attachment_id: 1, location_id: 4},
{id: 5, title: "Title 5", description: "Description 5", user_id: 3, category_id: 1, attachment_id: 1, location_id: 5},
{id: 6, title: "Title 6", description: "Description 6", user_id: 1, category_id: 1, attachment_id: 1, location_id: 1}
])

Comment.create!([
{id: 1, description: "Comment Description 1", user_id:1, content_id:1},
{id: 2, description: "Comment Description 2", user_id:1, content_id:6},
{id: 3, description: "Comment Description 3", user_id:2, content_id:3},
{id: 4, description: "Comment Description 4", user_id:1, content_id:1},
{id: 5, description: "Comment Description 5", user_id:3, content_id:5}
])

Location.create!([
{id: 1, latitude: "40.840303", longitude:"29.363472"},
{id: 2, latitude: "40.839979", longitude:"29.362228"},
{id: 3, latitude: "40.838258", longitude:"29.362271"},
{id: 4, latitude: "40.842328", longitude:"29.301580"},
{id: 5, latitude: "40.807471", longitude:"29.354846"}
])

Attachment.create!([
{id: 1, url: "/image/1.png"}
])