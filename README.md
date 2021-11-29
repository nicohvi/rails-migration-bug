# README

Rails bug for sequential migrations calling save

## HOW TO REPRODUCE

1. Run `bundle install`
2. Run `rails db:setup`
3. Move both migrations from `db/migrations_to_add` to the `db/migrate` folder
4. Run `rails db:migrate`
5. Ensure that no `Section`s have had their `title` attribute assigned correctly (`Section.all.map(&:title)`).

If you add the migrations **one by one** they both should succed.
