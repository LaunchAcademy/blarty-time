### Setup
Either clone this repo and checkout the `starter-code` branch or run the following:

```
make_it_so rails blarty-time
bundle exec bundle install 
rails db:create db:migrate
```

### User Stories

These user stories are taken from the Database Week `Party Planner` challenge.

```no-highlight
As a party planner
I want to view a list of all parties I'm planning
So that I can figure out who might be interested in joining me for each
```

Acceptance Criteria:

* If I go to the root path, I should be redirected to `/parties`.
* On the parties index page at `/parties`, I should see the name of each party.
* Each of the parties should be parties retrieved from my database.

---

```no-highlight
As a party planner
I want to view the details of a party
So that I can learn more about what fun is planned
```

Acceptance Criteria:

* On the parties index page, the name of each party should be a link to the party's show page.
* On the show page, I should see the name, description, and location of the party.

---

```no-highlight
As a party planner
I want to create a party
So that I can plan all the fun things I want to do
```

Acceptance Criteria:

* There should be a link from the parties index page that takes you to the parties new page. On this page there is a form to create a new party.
* I must supply a name, location, and description of the party.
* If the form submission is successful, I should be brought to the party's show page, and I should see a message that lets me know that I have created a party successfully.
* If the form submission is unsuccessful, I should remain on the parties new page. The form should be pre-filled with the values that were provided when the form was submitted.
