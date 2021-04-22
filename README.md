# Arca Test - Cities

### Setup

First, you need to build the containers:

`docker-compose build`

Now you can run with:

`docker-compose run`

Before use the application, you must prepare the database with the following commands:

1. Go inside the application container
```shell
# use your own application container id or name
docker exec -it [CONTAINER_ID|CONTAINER_NAME] bash
```

2. Create the database
```shell
rails db:create
```

3. Execute the migrations
```shell
rails db:migrate
```

4. Populate the database
```shell
rails db:seed
```

### Testing the Cities Index manually

To test the cities index manually, access `http://localhost:3000/cities` (or with your custom base url)

You can filter the city results by state with an URL parameter, for example: `http://localhost:3000/cities?state=Paraná`

Another filter is a part of city name, like this: `http://localhost:3000/cities?name=ti`. It'll returns all cities with 'ti' as a part of the name (Curitiba, Matinhos, etc)

### Run automated tests

If you already created and migrated the database, follow this steps to run the automated tests:

1. Go inside the application container
```shell
# use your own application container id or name
docker exec -it [CONTAINER_ID|CONTAINER_NAME] bash
```

2. Run the tests with RSpec
```shell
rspec
```
