## Chi Fan MP

##### API Libraries
Rails api for Chi Fan Wechat Mini-program
Note: No User authentication

###### INSTALL and RUN
`bundle install`
`rails webpacker:install`
`rails db:migrate`
`rails db:seed`
`rails server`


- - -

##### MODEL


==Restaurant==

| Attribute | Description |
|--------|--------|
| name   | string |
| image | string |
| description | string |
| address | string |


- - -

##### ATTRIBUTES
APP object look as follows, The dot notation indicates that the property is one level inside a hash.

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

