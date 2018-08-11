import ballerina/io;
import biruntha13/facebook;
import ballerina/config; 

endpoint facebook:Client client {
        clientConfig:{
            auth:{
                accessToken:"EAAEIfKN53ocBAMcwTw1j4WmI0LHs4YyGS9GYOj6KzcLePwRDrE8E5sIig9LZCiO2P1pIlscDzFOkYvkmXsOPuSLPM2aQsLrwmE94xaBQ805sjoR95FSXPnbb2lQhZAJfs61DCHbH6vkJ0dBZBG6pVOOh3IDeJvTA9qssJPL4d0KvnHhyobAObbsQnin4zIZD"
            }
        }
    };



function main(string... args) {
    //string userAccessToken = "EAAH4i3s6ZAI8BAN9ErKKyD49BxKBIdCvWE0MZAeNJ2wfdezoOjJkykRxC2xMZCo4U5514ZCqKZCEJ2AdbRaZCN0tZAazjA7UXCqvVQNAWivEjZCSVcxcKjEZAMdFEZAM0gkzG9u7vyt76zoPJHpc56ERMZAZB03ZBbqNtxyrsP7rxZAXRIUI542pAKqpdsBmeoncieE5dFuZAyuTP5GSAZDZD";
    //string pageAccessToken = callMethodsWithUserToken(userAccessToken);
    //callMethodsWithPageToken(pageAccessToken);
    var response = client->createPost("Sritechviews","sample message...","","");
    match response {
        facebook:Post => {io:println("message post scessfuly");
            
        }
        facebook:FacebookError e=> {io:println(e.message);
            
        }
    }
}