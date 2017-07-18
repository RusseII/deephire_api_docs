---
title: API Reference

language_tabs: # must be one of https://git.io/vQNgJ
  - shell

toc_footers:
  - <a href='#'>Sign Up for a Developer Key</a>
  - <a href='https://github.com/tripit/slate'>Documentation Powered by Slate</a>

includes:
  - errors

search: true
---

# Introduction

Welcome to the DeepHire API! 

# Authentication (ignore for now)

> To authorize, use this code:




```shell
# With shell, you can just pass the correct header with each request
curl "api_endpoint_here"
  -H "Authorization: DH_TEMP"
```


> Make sure to replace `DH_TEMP` with your API key.

DeepHire uses API keys to allow access to the API. You can register a new DeepHire API key at our [developer portal](https://deephire.io/developers).

DeepHire expects for the API key to be included in all API requests to the server in a header that looks like the following:

`Authorization: DH_TEMP`

<aside class="notice">
You must replace <code>DH_TEMP</code> with your personal API key.
</aside>

# Accounts

## Register an account


```shell
curl "https://api.deephire.io/v1.0/accounts" -X POST -d '{"email": "russell@deephire.io"}' -H "Content-Type: application/json"
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


## Get All Accounts (coming soon)



```shell
curl "https://deephire.io/api/accounts"
  -H "Authorization: DH_TEMP"
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

```shell
curl "https://api.deephire.io/api/accounts/596be7edfd83e97fbcbc3da5"
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

This endpoint retrieves a specific account.



### HTTP Request 

`GET https://api.deephire.io/v1.0/survey/questions/<user_id>`

### URL Parameters

Parameter | Description
--------- | -----------
user_id | The ID of the account to retrieve

## Delete a Specific Account (coming soon)


```shell
curl "https://api.deephire.io/api/accounts/596be7edfd83e9dfbcbc3da5"
  -X DELETE
  -H "Authorization: DH_TEMP"
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



```shell
curl "https://api.deephire.io/v1.0/survey/questions/596be7edfd83e97fbcbc3da5"
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


```shell
curl "https://api.deephire.io/v1.0/answers" -X PUT -d '{"user_id": "5969ab2cfd83e97fbcf4e34e","text": "I feel I need to be recognized for my work more frequently. ","response": 8}' -H "Content-Type: application/json"
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


