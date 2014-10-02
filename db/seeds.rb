User.create!([
  { name: nil,
    email: 'jimbo@example.com',
    encrypted_password:
      '$2a$10$AvXSrSObmw7/II.kVa/gTOEvErDLZo1PIPb1nMgpPHoXHNb/8jLU.',
    reset_password_token: nil,
    reset_password_sent_at: nil,
    remember_created_at: nil,
    sign_in_count: 1,
    current_sign_in_at: '2014-10-02 21:00:01',
    last_sign_in_at: '2014-10-02 21:00:01',
    current_sign_in_ip: '127.0.0.1',
    last_sign_in_ip: '127.0.0.1' },

  { name: nil,
    email: 'mary@test.com',
    encrypted_password:
      '$2a$10$DfICNXPERB4/q4XhE8S6i.NNgBDlwg.fdXnQwRLPCjFuEq2oW.b9q',
    reset_password_token: nil,
    reset_password_sent_at: nil,
    remember_created_at: nil,
    sign_in_count: 1,
    current_sign_in_at: '2014-10-02 21:07:54',
    last_sign_in_at: '2014-10-02 21:07:54',
    current_sign_in_ip: '127.0.0.1',
    last_sign_in_ip: '127.0.0.1' }
])
User::HABTM_Pages.create!([
  { page_id: 1, user_id: 1 },
  { page_id: 2, user_id: 1 },
  { page_id: 3, user_id: 1 },
  { page_id: 4, user_id: 2 },
  { page_id: 3, user_id: 2 }
])
Page.create!([
  { title: 'What is a dinosaour?', body: "Don't know" },
  { title: 'Another Question?', body: "Don't know" },
  { title: 'Can penguins fly?', body: 'Yes, idiot!' },
  { title: 'Are there still dinosaurs?', body: 'Yes!!!' }
])
Page::HABTM_Users.create!([
  { page_id: 1, user_id: 1 },
  { page_id: 2, user_id: 1 },
  { page_id: 3, user_id: 1 },
  { page_id: 4, user_id: 2 },
  { page_id: 3, user_id: 2 }
])
