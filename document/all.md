# Introduction

Welcome to the DeepHire API! 

# Authentication (ignore for now)

> To authorize, use this code:




```bash
# With l yobashu can just pass the correct header with each request
curl "api_endpoint_here" -H "Authorization: $DEEPHIRE_API_KEY"
```


> Make sure to replace `$DEEPHIRE_API_KEY` with your API key.

DeepHire uses API keys to allow access to the API. You can register a new DeepHire API key at our [developer portal](https://deephire.io/developers).

DeepHire expects for the API key to be included in all API requests to the server in a header that looks like the following:

`Authorization: $DEEPHIRE_API_KEY`

<aside class="notice">
You must replace <code>$DEEPHIRE_API_KEY</code> with your personal API key.
</aside>

# Accounts

## Register an account


```bash
curl "https://api.deephire.io/v1.0/accounts" -X POST--d '{"email": "russell@deephire.io"}' -H "Content-Type: application/json" -H "authorization: Bearer $DEEPHIRE_API_KEY"
```

> The above command returns JSON structured like this:

```json
{
  "company": "DeepHire",
  "user_id": "5969ab2cfd83e97fbcf4e34e"
}
```

> Or, if the user is the first person from a company

```json
{
  "company": null,
  "user_id": "596d7899fd83e97fbc51e6a2"
}
```

This endpoint registers a users account.

### HTTP Request

`POST https://api.deephire.io/v1.0/accounts`

### URL Parameters

Parameter | Description
--------- | -----------
email | The email of the user

## Update an account


```bash
curl "https://api.deephire.io/v1.0/accounts" -X PUT -d '{"user_id": "5969ab2cfd83e97fbcf4e34e"}' -H "Content-Type: application/json"  -H "authorization: Bearer $DEEPHIRE_API_KEY"
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

This endpoint updates a users account.

### HTTP Request

`PUT https://api.deephire.io/v1.0/accounts`

### URL Parameters

Parameter | Description
--------- | -----------
user_id | The user_id of the user


## Get All Accounts (coming soon)



```bash
curl "https://deephire.io/api/accounts" -H "authorization: Bearer $DEEPHIRE_API_KEY"
```


> The above command returns JSON structured like this:

```json
COMING SOON 
```

This endpoint retrieves all accounts.

### HTTP Request

`GET https://api.deephire.io/accounts` (coming soon)


<aside class="success">
Remember — DeepHire is AWESOME
</aside>

## Get a Specific Account

```bash
curl "https://api.deephire.io/v1.0/accounts/596be7edfd83e97fbcbc3da5"--H "authorization: Bearer $DEEPHIRE_API_KEY"
```


> The above command returns JSON structured like this:

```json
{
  "_id": "596be7edfd83e97fbcbc3da5",
  "email": "russell45@deephirre.io",
  "name": "Russell",
  "questions": {
    "_id": "5964c728202daf0a637ab8b0",
    "questions": [
      {
        "creator": "Deephire",
        "metric": "Recognition",
        "sub_metric": "Recognition Frequency",
        "text": "I feel I need to be recognized for my work more frequently. "
      },
      {
        "creator": "Deephire",
        "metric": "Recognition",
        "sub_metric": "Recognition Frequency",
        "text": "I am receiving an appopriate amount of recognition. "
      }
    ]
  }
}
```

> If that user does not exist, response code 204 is returned with no data.



This endpoint retrieves a specific account.



### HTTP Request 

`GET https://api.deephire.io/v1.0/survey/questions/<user_id>`

### URL Parameters

Parameter | Description
--------- | -----------
user_id | The ID of the account to retrieve

## Delete a Specific Account (coming soon)


```bash
curl "https://api.deephire.io/api/accounts/596be7edfd83e9dfbcbc3da5" -X DELETE -H "authorization: Bearer $DEEPHIRE_API_KEY"
```

> The above command returns JSON structured like this:

```json
Coming Soon
```

This endpoint deletes a specific Account.

### HTTP Request

`DELETE https://api.deephire.io/v1.0/accounts/596be7edfd83e97fb3bc3da5`

### URL Parameters

Parameter | Description
--------- | -----------
user_id | The ID of the account to delete






# Questions

## Get Questions for User 



```bash
curl "https://api.deephire.io/v1.0/survey/questions/596be7edfd83e97fbcbc3da5" -H"authorization: Bearer $DEEPHIRE_API_KEY"v
```


> The above command returns JSON structured like this:

```json
{
  "_id": "5964c728202daf0a637ab8b0",
  "questions": [
    {
      "creator": "Deephire",
      "metric": "Recognition",
      "sub_metric": "Recognition Frequency",
      "text": "I feel I need to be recognized for my work more frequently. "
    },
    {
      "creator": "Deephire",
      "metric": "Recognition",
      "sub_metric": "Recognition Frequency",
      "text": "I am receiving an appopriate amount of recognition. "
    }
  ]
}
```

This endpoint retrieves Questions for a specific user.

### HTTP Request

`GET https://api.deephire.io/v1.0/survey/questions/<user_id>`

### URL Parameters


Parameter | Description
--------- | -----------
user_id | The ID of the user to grab question data for


<aside class="success">
Remember — DeepHire is AWESOME
</aside>



## Insert a Specific Question Into User Response


```bash
curl "https://api.deephire.io/v1.0/answers" -X PUT--d '{"user_id": "5969ab2cfd83e97fbcf4e34e","text": "I feel I need to be recognized for my work more frequently. ","response": 8}' -H "Content-Type: application/json" -H "authorization: Bearer $DEEPHIRE_API_KEY"
```

> The above command returns JSON structured like this:

```json
{
  "success": true
}
```

> Or, if the user does not exist

```json
{
  "message": "user does not exist",
  "success": false
}
```

This endpoint inserts a specific Question for user.

### HTTP Request

`PUT https://api.deephire.io/v1.0/answers`

### URL Parameters

Parameter | Description
--------- | -----------
user_id | The user_id of the user
text | The question text
response | The user's response 

# Companies

## Register a company


```bash
curl "https://api.deephire.io/v1.0/companies" -X POST--d '{"email": "russell@deephire.io", "company" : "deephire", "user_id": 5969ab2cfd83e97fbcf4e34e }' -H "Content-Type: application/json" -H "authorization: Bearer $DEEPHIRE_API_KEY"
```

> The above command returns JSON structured like this:


```json
{
  "company_id": "596eea8e9b4d3900087c2d52"
}
```

This endpoint registers a company.

### HTTP Request

`POST https://api.deephire.io/v1.0/companies`

### URL Parameters

Parameter | Description
--------- | -----------
email | The email of the user (needed to grab domain name)
company | Company name
user_id | user_id of the employee who works at ___ company

## Get all data about a specific company


```bash
curl "https://api.deephire.io/v1.0/companies/<company_id>" -H "authorization: Bearer $DEEPHIRE_API_KEY"
```

> The above command returns JSON structured like this:


```json
{
            "_id": "596e67ecfd83e97fbcaaec03",
            "company": "deephire",
            "number_of_employees": 2,
            "employees": [{"user_id": "tempid"}],
            "questions": [{"creator": "Deephire",
                           "metric": "Recognition",
                           "sub_metric": "Recognition Frequency",
                           "response": 4,
                           "text": "I feel I need to be recognized for my work more frequently. "}]
        
}
```

This endpoint gets all data about a company.

### HTTP Request

`GET https://api.deephire.io/v1.0/companies/<company_id>`





