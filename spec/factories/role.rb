Factory.define :role do |r|
  r.sequence(:name) {|i| "role_#{i}" }
end