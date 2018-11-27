package 'apache' do
	package_name 'httpd'
end

service 'httpd' do
	action [:enable, :start]
end

file '/var/www/index.html' do
	action :delete
end

file '/var/www/html/index.html' do
	content 'Hello world!'
	mode '0755'
	owner 'root'
	group 'apache'
end

file '/etc/motd' do
	content 'Welcome to my server!'
end
