Door keeper 
http://railscasts.com/episodes/353-oauth-with-doorkeeper?autoplay=true  

```
Doorkeeper::Application.first
```

```
 require "oauth2"
 callback = "http://localhost:3001/auth/todo/callback"
 secret = "Q4GadgEOJpPXltgZOsZY1j4jSusVeBGB3s2TVcCAQ0U"
 app_id = "PYiD206ekjQ_ckk_-6oxGN6wofKJNCJplWJCgg4AcKY"
 
 client = OAuth2::Client.new(app_id, secret, site: "http://127.0.0.1:3000/")
client.auth_code.authorize_url(redirect_uri: callback)

access = client.auth_code.get_token('qyEnvUgIeLIc_oT6HNoEvT1yow08_8ijHrxgiXCgWHE',redirect_uri: callback)
acess.token
access.get("/api/tasks")
client.auth_code.authorize_url(redirect_uri: callback)
access = client.auth_code.get_token('WUEzZJyyibpk-UoiIjppYCJTwoLvPQP60vnUKSWgrcE',redirect_uri: callback)

```
