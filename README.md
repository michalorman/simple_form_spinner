# Spinner for Simple Form

Spinner component that you can easily use in any component in
[simple_form](https://github.com/plataformatec/simple_form).

## Installation

While it is just simple single module I don't see any point of
creating the gem. Manual installation is easy and straightforward.

First copy the ``spinner.rb`` to ``/lib/simple_form`` directory of
your rails application. Open the ``/config/initializers/simple_form``
file and add ``require`` statement at the top, or if you won't use the
configuration in this file at the bottom:

    require 'simple_form/spinner'
    
    SimpleForm.setup do |config|
      # ...
    end

## Configuration

To enable the spinner component you need to add it to the components
configuration (in same file as in previous step):

    SimpleForm.setup do |config|
      config.components = [ :placeholder, :label_input, :spinner, :hint, :error ]
    end

From now you can enable the spinner in your forms:

    f.association :subcategory, :spinner => true

By default spinner is not displayed, therefore you need to configure
action for some event and toggle it (e.g. using jQuery).

Also by default spinner component will look for ``spinner.gif`` image
in your assets. If you rather want to change the file you can do this
either globally in configuration file:

    SimpleForm.setup do |config|
      config.spinner_icon = "loading.gif"
    end

Note that in this case the ``spinner.rb`` requirements statement must
be done before this configuration, otherwise ``spinner_icon`` method
wouldn't be found.

Another option is to change the image directly in the input statement:

    f.association :subcategory, :spinner => 'loading.gif'
