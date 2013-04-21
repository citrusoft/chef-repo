# cookbooks/shell_to_chef/templates/default/info.php

<?php php_info(); ?>
# cookbooks/shell_to_chef/recipes/default.rb
# ...

template '/var/www/info.php' do
  source 'info.php'
end

