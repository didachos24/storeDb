var mysql = require("mysql");
var inquirer = require("inquirer")

// Connection 
var connection = mysql.createConnection({
    host: "localhost",

    port: 3306,

    user: "root",

    password: "password",
    database: "bamazon"
});

// Function for user interactivity
connection.connect(function(err) {
    if (err) throw err;
    console.log("\nConnected as id "+connection.threadId);
    run();
});

function run() {
    connection.query("SELECT * FROM products", function (err, res) {
        if(err) throw err;

        var prodArray = [];

        // Show each product in list
        for(var i = 0; i < res.length; i++) {
            console.log("\n");
            console.log(res[i]);
            console.log("\n=========================================");
        };

        function display() {
            // connection.query("SELECT * FROM products", function (err, res) {
            // if(err) throw err;
        
                inquirer
                .prompt([
                    {
                        type: "rawlist",
                        message: "Which item do you want to buy?",
                        name: "option",
                        choices: [res[0].product_name,res[1].product_name, res[2].product_name, res[3].product_name, res[4].product_name, res[5].product_name, res[6].product_name, res[7].product_name, res[8].product_name, res[9].product_name]
                    },
                    {
                        type: "number",
                        message: "How many?",
                        name: "quantity"
                    }
                ]).then(function(answer) {

                    inquirer
                    .prompt([
                        {
                            type: "confirm",
                            name: "finish",
                            message: "Do you finish?"
                        }
                    ]).then(function(res2) {
                        if(res2.finish) {
                            result();
                        } else{
                            display();
                        };
                    });

                    console.log("\n"+answer.option+"\n"+answer.quantity);
                    prodArray.push(answer.option);

                });
            // });

        };

        display();

        function result() {
            console.log(prodArray);
        }
             
        connection.end();
    });
};
