# FACTORY_GIRL + SHOULDA (+ RSPEC)

## Notes on RSpec

If you don't install RSpec before you start generating scaffolds, models and controllers, you **will** end up with models and controllers that have no spec files generated (*which is actually kinda obvious*), while all the stuff generated after RSpec installation will have proper spec files, but no test files.

Let's say you've already generated a **user model**, or worse - a **user scaffold**, and now you don't have spec files for it. To fix this you should use a mutilated generate script:

<rails g model user field1:type1 field2:type2 --skip-migration --skip-fixtures --skip>
or
<rails g scaffold user field1:type1 field2:type2 --skip-fixtures --skip>
The <--skip> part at the end is very important, it prevents an overwrite conflict and just skips the model and/or controller file generation. So it's like generating model without generating a model. Not pretty, but useful.