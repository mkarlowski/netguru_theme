# netguru_theme changelog

#### 0.2.1
+ Thor added to dependencies

#### 0.2.0
+ command line tool for manual installation

#### 0.1.0
+ moved **people** app components to [apps/people](https://github.com/netguru/netguru_theme/tree/master/app/assets/stylesheets/netguru-theme/apps/people) directory. To import all people components add <code>@import 'netguru-theme/apps/people'</code> to your <code>application.scss</code>
+ mixin <code>quantity</code> is marked as deprecated - use mixin <code>sizing</code>
+ this gem is now compatible with Sass 3.2 and uses Bourbon 3.2
+ added [z-index](https://github.com/netguru/netguru_theme/blob/master/app/assets/stylesheets/netguru-theme/settings/_z-index-variables.scss) and [breakpoint](https://github.com/netguru/netguru_theme/blob/master/app/assets/stylesheets/netguru-theme/settings/_breakpoint-variables.scss) variables

#### 0.0.6
+ import each component separately (instead of <code>@import "components/*"</code>)

#### 0.0.5
+ Bootstrap bumped to version 3.3.0

#### 0.0.4
+ Fixes for Glyphicons fonts.
