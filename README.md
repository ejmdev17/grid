# Clinical Team Technical Challenge

Thanks for agreeing to try out our technical challenge! We're excited to see what you come up with.

We would like for you to create an app that includes a frontend and a separate backend.

Build a simple full stack app that includes as many of the criteria below as you can get to, using frameworks of your choice.

Here are the features we would like to see:

- When a user visits your website, the page they see should have a grid of boxes in rows and columns.
- When the user hovers over a cell, the cell should be highlighted in a bright color, and the cells in the same row and column as the other cell should also be highlighted in the same color but at 50% opacity.
- When the user clicks on a cell, the cell's background color should be set to the highlight color.
- When the user clicks on the cell again, the cell's background color should be removed. i.e., clicking a cell should toggle the background color on and off.
- If a cell is toggled on, its background color should not change when the user hovers over another cell in its row or column.
- The cells' toggled states should be tracked in the database on the server.

Try to limit yourself to around 2 hours on this challenge. Don't worry if you can't complete all of the acceptance criteria within 2 hours - focus on completing what's interesting to you.

We use `Elixir`, `Ecto`, `Absinthe`, `GraphQL`, `Typescript/Javascript` and `React` at Vetspire. This repo has a very bare-bones app that has taken care of the annoying bits of setting up a new app - you are welcome to build off of what we've provided here, or you can use completely different frameworks if you prefer.

We encourage you to include a README with notes about your language and framework choices as well as your design decisions.

## Setting up your local environment

- We use [asdf](https://asdf-vm.com/) to manage Elixir and NodeJS versions. If installed, run `asdf install`; alternatively make sure you have a recent version of both Elixir and NodeJS.
- In the top folder, run `mix setup` to install and setup the server's dependencies.
- In the `assets/frontend` folder, run `yarn` to install the frontend dependencies.
- Start Phoenix endpoint with `mix phx.server` or inside IEx with `iex -S mix phx.server`.
- Start the frontend by running `yarn dev` from the `assets/frontend` folder.

Now you can visit [`localhost:5173`](http://localhost:5173) from your browser.

## Submitting your work

Submit your results as a pull request to this repo with instruction on how to build/run it.

Please let us know that you're finished!

# Erik Miller Notes

What the app does do is all the above mentioned requirements.  And it does so using the techstack the Vetspire uses.

The app isn't perfect by any means due to time constraints of not spending more than a couple of hours on it.
Some tradeoffs/assumptions I made besides the lacking items above.

- The solution isn't generalized to any size grid.  I hardcoded it for 3x3.
- I used css for the majority of the highlighting.  It keeps the react code simpler.
- I created the cells and list them in order so they are placed in the correct location in the grid.
- There are no tests on the front or back end.
- Documentation is sparse.
- I'm rusty in react so there are surely better ways of handling things.

The app does meet all other requirements and is using the same stack that Vetspire uses.

To run the app you should follow the same instructions as above and also...
- docker-compose up - to start the database
- ecto.setup - to setup the database
- mix phx.server - to start the server
- cd assets/frontend && yarn dev - to start the frontend

This should start the app and you can visit localhost:5173 to see the app.
