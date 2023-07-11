final chats = [
  {
    "name": "Chandler Bing",
    "image":
        "data:image/jpeg;base64,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",
    "message": " Hey, how are you?",
    "blueTick": false,
    "viewed": false,
    "time": "Yesterday"
  },
  {
    "name": "Liam Wilson",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSs3PpQwcNUkQPCzYydPjyCAX3nCKTf6H0L8g&usqp=CAU",
    "message": " Hey, how are you?",
    "blueTick": false,
    "viewed": false,
    "time": "Yesterday"
  },
  {
    "name": "Noah James",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcSVy90XssVZ2_sDX2ZmSueKYZvwuP1M98_1Hg&usqp=CAU",
    "message": " Hey, how are you?",
    "blueTick": false,
    "viewed": false,
    "time": "Yesterday"
  },
  {
    "name": "Anya Williams",
    "image":
        "https://www.getillustrations.com/packs/3d-avatar-illustrations/female/_1x/Avatar,%203D%20_%20female,%20woman,%20person,%20people,%20long%20hair,%20earrings,%20necklace,%20pearl%20necklace_sm.png",
    "message": " Hey, how are you?",
    "blueTick": true,
    "viewed": true,
    "time": "Yesterday"
  },
  {
    "name": "Oliver Thomas",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQrmotygT1oC20ZkEGPLzbJiDHhqjNu3aM2LA&usqp=CAU",
    "message": " Hey, how are you?",
    "blueTick": true,
    "viewed": true,
    "time": "Yesterday"
  },
  {
    "name": "William Smith",
    "image": "https://picsum.photos/id/88/367/267",
    "message": " Hey, how are you?",
    "blueTick": false,
    "viewed": true,
    "time": "Yesterday"
  },
  {
    "name": "Maya Patel",
    "image":
        "https://www.getillustrations.com/packs/3d-avatar-illustrations/female/_1x/Avatar,%203D%20_%20woman,%20female,%20person,%20people,%20sunglasses,%20fashion,%20style,%20necklace,%20buns,%20earring_sm.png",
    "message": " Hey, how are you?",
    "blueTick": true,
    "viewed": true,
    "time": "Yesterday"
  },
  {
    "name": "James Brown",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmc9-VHMCSLyZyZ3ZQWGskufQwcv3YTJZRDQ&usqp=CAU",
    "message": " Hey, how are you?",
    "blueTick": false,
    "viewed": true,
    "time": "Yesterday"
  },
  {
    "name": "Isabella Jones",
    "image":
        "https://cdn1.iconfinder.com/data/icons/facely-metapeople-3d-avatar-set/128/8._Black_Woman.png",
    "message": " Hey, how are you?",
    "blueTick": false,
    "viewed": true,
    "time": "Yesterday"
  },
  {
    "name": "Ethan Miller",
    "image": "https://picsum.photos/id/48/367/267",
    "message": " Hey, how are you?",
    "blueTick": true,
    "viewed": true,
    "time": "Yesterday"
  },
  {
    "name": "Chloe Miller",
    "image":
        "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQmieUioIAzZeeJ1RbCQeAMaQ3X5preHlh3Mg&usqp=CAU",
    "message": " Hey, how are you?",
    "blueTick": false,
    "viewed": true,
    "time": "Yesterday"
  },
];

final recentstatus = [
  {
    "name": "Chandler Bing",
    "imageUrl": "https://picsum.photos/200",
    "time": "21 minutes ago"
  },
  {
    "name": "Noah James",
    "imageUrl": "https://picsum.photos/id/237/200/300",
    "time": "38 minutes ago"
  },
  {
    "name": "Liam Wilson",
    "imageUrl":
        "https://images.unsplash.com/4/madebyvadim.jpg?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1169&q=80",
    "time": "55 minutes ago"
  },
  {
    "name": "Isabella Jones",
    "imageUrl":
        "https://birthdaycake24.com/uploads/worigin/2022/06/25/sweet-chocolate-birthday-wishes-cake_a78a1.jpg",
    "time": "59 minutes ago"
  },
  {
    "name": "Ethan Miller",
    "imageUrl": "https://picsum.photos/id/63/367/267",
    "time": "1 hour ago"
  },
  {
    "name": "Chloe Miller",
    "imageUrl": "https://picsum.photos/id/88/367/267",
    "time": "2 hour ago"
  },
];

final viewedStatus = [
  {
    "name": "Oliver Thomas",
    "imageUrl":
        "https://mir-s3-cdn-cf.behance.net/project_modules/fs/d07bca98931623.5ee79b6a8fa55.jpg",
    "time": "Yesterday 9:27 pm"
  },
  {
    "name": "William Smith",
    "imageUrl": "https://picsum.photos/id/48/367/267",
    "time": "Yesterday 09:05 pm"
  },
  {
    "name": "James Brown",
    "imageUrl": "https://picsum.photos/id/58/367/267",
    "time": "Yesterday 9:27 pm"
  }
];

final calls = [
  {
    "name": "James Brown",
    "incoming": false,
    "time": " 6 July, 06:27 pm",
    "imageUrl":
        'https://www.getillustrations.com/packs/3d-avatar-illustrations/male/_1x/Avatar,%203D%20_%20man,%20male,%20people,%20person,%20dark,%20african,%20santa,%20christmas_sm.png'
  },
  {
    "name": "Maya Patel",
    "incoming": true,
    "time": " 5 July, 04:53 pm",
    "imageUrl":
        'https://www.getillustrations.com/packs/3d-avatar-illustrations/female/_1x/Avatar,%203D%20_%20woman,%20female,%20person,%20people,%20sunglasses,%20fashion,%20style,%20necklace,%20buns,%20earring_sm.png'
  },
  {
    "name": "Oliver Thomas",
    "incoming": false,
    "time": " 5 July, 09:00 am",
    "imageUrl":
        "https://www.getillustrations.com/packs/3d-avatar-illustrations/male/_1x/Avatar,%203D%20_%20man,%20male,%20people,%20person,%20glasses,%20moustache,%20mustache,%20shirt_sm.png"
  },
  {
    "name": "Liam Wilson",
    "incoming": false,
    "time": " 4 July, 02:47 pm",
    "imageUrl":
        'https://www.getillustrations.com/packs/3d-avatar-illustrations/male/_1x/Avatar,%203D%20_%20man,%20male,%20people,%20person,%20cowboy,%20hat_sm.png'
  },
  {
    "name": "Anya Williams",
    "incoming": true,
    "time": " 4 July, 10:21 pm",
    "imageUrl":
        'https://www.getillustrations.com/packs/3d-avatar-illustrations/female/_1x/Avatar,%203D%20_%20female,%20woman,%20person,%20people,%20long%20hair,%20earrings,%20necklace,%20pearl%20necklace_sm.png'
  },
  {
    "name": "John Wick",
    "incoming": true,
    "time": " 3 July, 08:00 am",
    "imageUrl":
        "https://mir-s3-cdn-cf.behance.net/project_modules/fs/d07bca98931623.5ee79b6a8fa55.jpg"
  },
];
