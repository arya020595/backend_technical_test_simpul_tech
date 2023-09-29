# config/initializers/pusher.rb

require 'pusher'

Pusher.app_id = '1678290'
Pusher.key = '40c419ade346e9cb8ff3'
Pusher.secret = '6cf3d5734bf6499bad14'
Pusher.cluster = 'ap1'
Pusher.logger = Rails.logger
Pusher.encrypted = true


# require 'pusher'

# pusher = Pusher::Client.new(app_id: '1678290', key: '40c419ade346e9cb8ff3', secret: '6cf3d5734bf6499bad14', cluster: 'ap1', encrypted: true, use_tls: true)

# pusher.trigger('my-channel', 'my-event', {message: 'hello world'})