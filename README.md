# RailsAdminStartKit(Outdated)

WARN: 

The version of Rails(5.1.6) and boostrap(4.1.1, maybe 3.3.7) are outdated. And tools are not suitable for use.

If You Want An Scaffold to Build Rails Admin, Please check this [Repo](https://github.com/ElliotCui/admin_start_kit).

Start kit for admin using rails and stellar.

```sh
  # clone the project
  $> git clone git@github.com:ElliotCui/rails_admin_start_kit.git
  # change the the folder name(rails_admin_start_kit) to YOUR_PROJECT_NAME as you wish
  $> mv(using `cp` is ok) rails_admin_start_kit YOUR_PROJECT_NAME
  # enter the dictionary of YOUR PROJECT
  $> cd YOUR_PROJECT_NAME
  # init project with YOUR_PROJECT_NAME
  $> rails init:rename[YOUR_PROJECT_NAME]
  ...
  $> rake db:create
  $> rake db:migrate
  $> rake db:seed
  $> rails s
```
