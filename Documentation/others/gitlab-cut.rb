## GitLab URL
##! URL on which GitLab will be reachable.
##! For more details on configuring external_url see:
##! https://docs.gitlab.com/omnibus/settings/configuration.html#configuring-the-external-url-for-gitlab
external_url 'http://mrnimelo.co.uk/'

### Default Theme
gitlab_rails['gitlab_default_theme'] = 

### GitLab database settings
###! Docs: https://docs.gitlab.com/omnibus/settings/database.html
###! **Only needed if you use an external database.**
gitlab_rails['db_adapter'] = "postgresql"
gitlab_rails['db_encoding'] = "unicode"
# gitlab_rails['db_collation'] = nil
gitlab_rails['db_database'] = "gitlabhq_production"
gitlab_rails['db_pool'] = 10
gitlab_rails['db_username'] = "gitlab"
gitlab_rails['db_password'] = "password1"
gitlab_rails['db_host'] = "gitlab-ha.co3imm92nro9.eu-west-1.rds.amazonaws.com"
# gitlab_rails['db_port'] = 5432
# gitlab_rails['db_socket'] = nil
# gitlab_rails['db_sslmode'] = nil
# gitlab_rails['db_sslrootcert'] = nil

### GitLab Redis settings
###! Connect to your own Redis instance
###! Docs: https://docs.gitlab.com/omnibus/settings/redis.html

#### Redis TCP connection
gitlab_rails['redis_host'] = "redis-gitlab.9zfey9.ng.0001.euw1.cache.amazonaws.com"
# gitlab_rails['redis_port'] = 6379
# gitlab_rails['redis_password'] = nil
# gitlab_rails['redis_database'] = 0

git_data_dirs({"default" => "/var/opt/gitlab/git-data"})
user['home'] = '/var/opt/gitlab/'
gitlab_rails['uploads_directory'] = '/var/opt/gitlab/gitlab-rails/uploads'
gitlab_rails['shared_path'] = '/var/opt/gitlab/gitlab-rails/shared'
gitlab_ci['builds_directory'] = '/var/opt/gitlab/gitlab-ci/builds'

redis['enable'] = false
postgresql['enable'] = false
