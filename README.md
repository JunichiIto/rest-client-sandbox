## rest-client-sandbox

Sample app for reporting issue

## Setup

```
$ bundle install
```

## Ruby 2.3.6

Run successfully.

```
$ ruby -v
ruby 2.3.6p384 (2017-12-14 revision 61254) [x86_64-darwin17]
$ bundle exec ruby ./sample.rb
baz: ["0"]
```

## Ruby 2.4.4

Error occurs.

```
$ ruby -v
ruby 2.4.4p296 (2018-03-28 revision 63013) [x86_64-darwin17]
$ bundle exec ruby ./sample.rb
/Users/jit/.rbenv/versions/2.4.4/lib/ruby/gems/2.4.0/gems/rest-client-2.0.2/lib/restclient/abstract_response.rb:16:in `code': undefined method `code' for nil:NilClass (NoMethodError)
	from /Users/jit/.rbenv/versions/2.4.4/lib/ruby/gems/2.4.0/gems/rest-client-2.0.2/lib/restclient/response.rb:38:in `inspect'
	from ./sample.rb:17:in `inspect'
	from ./sample.rb:17:in `block in <main>'
	from /Users/jit/.rbenv/versions/2.4.4/lib/ruby/gems/2.4.0/gems/vcr-4.0.0/lib/vcr/util/variable_args_block_caller.rb:9:in `call_block'
	from /Users/jit/.rbenv/versions/2.4.4/lib/ruby/gems/2.4.0/gems/vcr-4.0.0/lib/vcr.rb:188:in `use_cassette'
	from ./sample.rb:14:in `<main>'
```

## Ruby 2.5.1

Error occurs, too.

```
$ ruby -v
ruby 2.5.1p57 (2018-03-29 revision 63029) [x86_64-darwin17]
$ bundle exec ruby ./sample.rb
Traceback (most recent call last):
	6: from ./sample.rb:14:in `<main>'
	5: from /Users/jit/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/vcr-4.0.0/lib/vcr.rb:188:in `use_cassette'
	4: from /Users/jit/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/vcr-4.0.0/lib/vcr/util/variable_args_block_caller.rb:9:in `call_block'
	3: from ./sample.rb:17:in `block in <main>'
	2: from ./sample.rb:17:in `inspect'
	1: from /Users/jit/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/rest-client-2.0.2/lib/restclient/response.rb:38:in `inspect'
/Users/jit/.rbenv/versions/2.5.1/lib/ruby/gems/2.5.0/gems/rest-client-2.0.2/lib/restclient/abstract_response.rb:16:in `code': undefined method `code' for nil:NilClass (NoMethodError)
```
