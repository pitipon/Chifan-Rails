## Chi Fan MP

##### API Libraries
Rails api for Chi Fan Wechat Mini-program
Note: No User authentication

###### INSTALL and RUN
```
bundle install
rails webpacker:install
rails db:migrate
rails db:seed
rails server
```


- - -

##### MODEL


==Restaurant==

| Attribute | Description |
|--------|--------|
| name   | string |
| image | string |
| description | string |
| address | string |

==Comment==

| Attribute | Description |
|--------|--------|
| name   | string |
| image | string |
| content | string |



- - -

##### ATTRIBUTES
APP object look as follows, The dot notation indicates that the property is one level inside a hash.

#### ++Restaurant++

###### Get all Restaurant
```
curl --request GET \
  --url http://localhost:3000/api/v1/restaurants
```

###### Get Restaurant by id
```
curl --request GET \
  --url http://localhost:3000/api/v1/restaurants/
```


###### Create New Restaurant

```
curl --request POST \
  --url http://localhost:3000/api/v1/restaurants \
  --header 'content-type: application/json' \
  --data '{
	"name"				: "mo",
	"image"				: "mo.jpg",
	"description"		: "salmon",
	"address"			: "BKK"
}'
```

###### Update Restaurant by id
```
curl --request PUT \
  --url http://localhost:3000/api/v1/restaurants/1 \
  --header 'content-type: application/json' \
  --data '{

		"name": "Hello World2",
		"image": "Updated content",
		"description": "salmon",
		"address": "BKK"
}'
```

###### Delete Restaurant by id
```
curl --request DELETE \
  --url http://localhost:3000/api/v1/restaurants/7
```

#### ++Comment++

###### Get comment from Restaurant id
```
curl --request GET \
  --url http://localhost:3000/api/v1/restaurants/1/comments
```

###### Get comment from id
```
curl --request GET \
  --url http://localhost:3000/api/v1/comments/13
```

###### Create new comment from Restaurant id
```
curl --request POST \
  --url http://localhost:3000/api/v1/restaurants/1/comments \
  --header 'content-type: application/json' \
  --data '{
	"name"				: "mo",
	"image"				: "mo.jpg",
	"content"			: "salmon"
}'
```

###### Update comment from id
```
curl --request PUT \
  --url http://localhost:3000/api/v1/comments/13 \
  --header 'content-type: application/json' \
  --data '{
	"name"		: "salmon",
	"image"		: "new.png",
	"content" 	: "hello alien"
}'
```

###### Delete comment from id
```
curl --request DELETE \
  --url http://localhost:3000/api/v1/comments/13
```

