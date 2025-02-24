# Connect to the Udemy Academy MySQL database and run a query!  This connects to the localhost.

# Define connection parameters
$server = "127.0.0.1"
$database = "shop"
$user = "root"
$password = "Abcd1234"

# Create connection string
$connStr = "server=$server;user id=$user;password=$password;database=$database"

# Create and open connection
$conn = New-Object MySql.Data.MySqlClient.MySqlConnection
$conn.ConnectionString = $connStr
$conn.Open()

# Define and execute query
$query = "SELECT * FROM customers"
$cmd = New-Object MySql.Data.MySqlClient.MySqlCommand($query, $conn)
$adapter = New-Object MySql.Data.MySqlClient.MySqlDataAdapter($cmd)
$dataset = New-Object System.Data.DataSet
$adapter.Fill($dataset)

# Display results
$dataset.Tables[0] | Format-Table

# Close connection
$conn.Close()