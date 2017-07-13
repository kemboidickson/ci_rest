# ci_rest
This has been around my localhost for some while, thought it good to assist someone out there.

If you know CI you are home , if you do not know, then you are a neighbour. 

The application utilizes 
       Phil Sturgeon, Chris Kacerguis
       https://github.com/chriskacerguis/codeigniter-restserver
I was unable to wrap my head around their login, so I modified this to fit  my needs.

The API requires afew headers, then also  a login.

### HOW TO USE THIS APPLICATION
As usual, download it, unzip and put it in a web root in your server.
Upload the database to your server.
Do the little configs and fire up post man.
#LOGING IN

Default route is base_url()auth/login [headers that should be present are ]

POST REQUEST : http://localhost/rest_server/auth/login

HEADERS

x-api-key        - 4808scookgo4w448gokssw884cos0k0w8ggs0k8k
Client-Service   - frontend-client
Auth-Key         - restapi

BODY 

{
"username":"admin",
"password":"Admin123$"
}

on success 

{
    "status": 200,
    "message": "Successfully loged in",
    "id": "1",
    "token": "$1$qU..rA0.$YDYzolg8X/gt2glHIwSyu1",
    "dev_help": "Please add your token and User ID to the headers"
}

on fail

{
    "status": 204,
    "message": "Username not found."
}

or 

{
    "status": 204,
    "message": "Username not found."
}
or
{
    "error": "Please provide a username"
}

=================================================
you can now try the CRUD methods on the API controller.

example to know the data that exists in a table(very simple jst for now)

GET REQUEST : http://localhost/rest_server/auth/know_data/{table_name}
eg
http://localhost/rest_server/auth/know_data/users

or 

http://localhost/rest_server/auth/know_data/settings  -ths would yield

{
    "fields": [
        "id",
        "key",
        "value"
    ],
    "data": [
        {
            "id": "1",
            "key": "app_name",
            "value": "MY CI REST APP"
        },
        {
            "id": "2",
            "key": "app_version",
            "value": "1.0"
        },
        {
            "id": "3",
            "key": "copyright",
            "value": "Branie & Kemboi"
        },
        {
            "id": "4",
            "key": "year",
            "value": "2017"
        },
        {
            "id": "5",
            "key": "company",
            "value": "Company XYZ"
        },
        {
            "id": "6",
            "key": "terms_of_service",
            "value": "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Curabitur elementum eu metus eget facilisis. Duis egestas molestie molestie. Interdum et malesuada fames ac ante ipsum primis in faucibus. Ut accumsan massa dui, eget suscipit tortor convallis ac. Pellentesque iaculis congue metus eget porta. Quisque ultricies justo urna, non posuere est dapibus ut. Vivamus id nibh ut dolor euismod pellentesque. Vestibulum gravida ante quis venenatis commodo. Sed ornare risus eu nisl pellentesque, eget cursus ipsum lobortis. Vestibulum elementum ut diam ut auctor. Aliquam metus neque, cursus sit amet accumsan sed, porta quis velit. Vivamus mollis ullamcorper efficitur. Nunc ornare cursus egestas. In gravida a magna vitae tempor."
        }
    ]
}




