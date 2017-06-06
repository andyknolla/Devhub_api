3.times do |tag|
  Tag.create!(
    name: "Tag #{tag}"
  )
end

  Category.create!(name: "JavaScript")
  Category.create!(name: "Ruby on Rails")
  Category.create!(name: "Front-end Frameworks")
  Category.create!(name: "Cheatsheet")
  Category.create!(name: "CSS")
  Category.create!(name: "Object Oriented Programming")


3.times do |type|
  ResourceType.create!(
    name: "Type #{type}"
  )
end

3.times do |user|
  User.create!(
    username: "User#{user}"
  )
end

4.times do |resource|
  Resource.create!(
    title: "Title #{resource}",
    url: "Url #{resource}",
    rating: 5,
    description: "Crash pad cold shut bi-pattern chains a tagline wall crack limestone aid.  Corner spire tips crux rope drag sequence and scary knife-blade slot creek.  Auto-block biner crystal anchor descent and equalette.",
    free: true,
    category_id: Category.last.id,
    resource_type_id: ResourceType.last.id
  )
end
4.times do |resource|
  Resource.create!(
    title: "Title #{resource}",
    url: "Url #{resource}",
    rating: 3,
    description: "Headwalls and nut-tools on belay dogbone sloper chalk, fixed piece thumbcatch gobie jug.  Chickenwing bootie hex chimney, classic RP portaledge.  Kingswing floss rock and tricam pocket trigger boulder.",
    free: false,
    category_id: Category.first.id,
    resource_type_id: ResourceType.first.id
  )
end

3.times do |comment|
  Comment.create!(
    body:"Spooky poop tube a crimp ladder daisy chain, etrier tower placement and hueco gri-gri chickenhead sling.  Lead piton rurp on klemheist layback bail.  Wagbag is mantle knot v-thread monstercam gear for verglase dome sandwiches.",
    user_id: User.first.id,
    resource_id: Resource.first.id
  )
end

3.times do |comment|
  Comment.create!(
    body:"Oldschool tape glove crush and slabby topo granite is coreshot redpoint.  Joshua Tree 5.9, manky offwidth guidebook and gnarly jumar clipping stance, pro tipped out sketchy bombproof loose block rap ring.",
    user_id: User.last.id,
    resource_id: Resource.last.id
  )
end

Favorite.create!(
  user_id: User.last.id,
  resource_id: Resource.last.id
)
Favorite.create!(
  user_id: User.first.id,
  resource_id: Resource.first.id
)

TagResource.create!(
  resource_id: Resource.last.id,
  tag_id: Tag.last.id
)
TagResource.create!(
  resource_id: Resource.first.id,
  tag_id: Tag.first.id
)
