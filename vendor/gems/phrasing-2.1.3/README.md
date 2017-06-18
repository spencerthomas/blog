# Phrasing!

![Phrasing](http://www.miataturbo.net/attachments/miata-parts-sale-trade-5/74257-lots-leftovers-near-boston-archer-phrasing2-300x225-jpg?dateline=1366600534)

Phrasing is a gem for live editing phrases (copy) on websites.

## Installation

Include the gem in your Gemfile

```ruby
gem "phrasing"
```

Run the install script:

```ruby
rake phrasing:install
```

This will create a migration file and a config file where you can edit the name of the route to see all the phrases.

Migrate your database
```ruby
rake db:migrate
```

## Setup

The rake task will also generate a PhrasingHelper.rb file in your <tt>app/helpers</tt> folder where you will need to implement your <tt>can_edit_phrases?</tt> method. Example:

```ruby
module PhrasingHelper

  def can_edit_phrases?
    current_user.is_admin?
  end
  
end
```
Include the phrasing **html** initializer at the top of your body

```haml
= render 'phrasing/initializer'
```

Include the required **javascript** file (most often in your application.js file):

```javascript
//= require phrasing
```

Include the required **stylesheet** file (most often in your application.css file):

```css
//= require phrasing
```

## How to use phrasing?

Start with adding your phrases simply by writting in your view file:

	= phrase('my-first-phrase')

Apart from editing phrases (basically, Rails translations) you can also inline edit your models attributes, just use the `model_phrase` method:

  	= model_phrase(@post, :title)

Where <tt>@post</tt> is a object with a <tt>title</tt> attribute.

## Security

Since Phrasing can be used to update any attribute in any table (using the model_phrase method), special care must be taken into consideration from a security standpoint.

By default, Phrasing doesn't allow updating of any attribute apart from <<t>PhrasingPhrase.value</tt>. To be able to work with other attributes, you need to whitelist them.

In the <tt>config/initializers/phrasing.rb</tt> file you can whitelist your model attributes like this:

```ruby
Phrasing.white_list = ["Post.title", "Post.body"]
```

or you can whitelist all of them (not recommended) with:

```ruby
Phrasing.allow_update_on_all_models_and_attributes = true
```

## Authors

Copyright (c) 2013, Infinum

Phrasing relies heavily (or is built) on two other libraries: the [Copycat gem](https://github.com/Zorros/copycat) and the [ZenPen library](https://github.com/tholman/zenpen/tree/master/). So thank you to the authors and all the contributors! 
