class Rack::Attack

    # Rack::Attack.safelist('allow from localhost') do |req|
    #     '127.0.0.1' == req.ip || '::1' == req.ip
    # end

    # Rack::Attack.blocklist('block 127.0.0.1') do |req|
    #     '127.0.0.1' == req.ip
    # end

    # Rack::Attack.blocklist('block bad UA logins') do |req|
    #     req.path == '/login' && req.post? && req.user_agent == 'BadUA'
    # end

    # Rack::Attack.throttle('req/ip', limit: 5, period: 1.second) do |req|
    #     req.ip
    # end

    # Rack::Attack.throttle('req/ip', :limit => 100, :period => 1.minutes) do |req|
    #     req.ip
    # end
    
end