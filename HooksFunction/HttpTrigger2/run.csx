#r "Newtonsoft.Json"

using System.Net;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Primitives;
using Newtonsoft.Json;


using System.IO;
using Microsoft.Azure.WebJobs;
using Microsoft.Azure.WebJobs.Extensions;
//using Microsoft.AspNetCore.Http;
using Microsoft.Azure.WebJobs.Host;

using System.Data.SqlClient;
using System.Data;
using System.Configuration;
using Microsoft.Extensions.Configuration;


public static async Task<IActionResult> Run(HttpRequest req, ILogger log)
{
    log.LogInformation("Procesando petición HTTP");

    string id = req.Query["id"];

    string requestBody = await new StreamReader(req.Body).ReadToEndAsync();
    dynamic data = JsonConvert.DeserializeObject(requestBody);
    id = id ?? data?.id;

    var str = "Server=tcp:webhookdbserver.database.windows.net,1433;Initial Catalog=MonedasDB;Persist Security Info=False;User ID=adminsa;Password=MCSD2018-;MultipleActiveResultSets=False;Encrypt=True;TrustServerCertificate=False;Connection Timeout=30;";
  
    int idmon = 0;
    string pais = "";
    int anyo = 0;
    string descripcion = "";
    int precio = 0;
    string foto = "";
    string direccion = "";
    int telefono = 0;

    using (SqlConnection sqlConn = new SqlConnection(str))
    {
      sqlConn.Open();
      string sqlQuery = "SELECT * FROM Monedas where ID = " + id;

      using (SqlCommand cmd = new SqlCommand(sqlQuery, sqlConn))
      {
         using (SqlDataReader reader = cmd.ExecuteReader())
         {
            if (reader.Read())
            {
             
                idmon = reader.GetInt32(0);
                pais = reader.GetString(1);
                anyo = reader.GetInt32(2);
                descripcion = reader.GetString(3);
                precio = reader.GetInt32(4);
                foto = reader.GetString(5);
                direccion = reader.GetString(6);
                telefono = reader.GetInt32(7);

            }else{
               //MessageBox.Show("For Farmer Code " + intValue.ToString() + " there is no farmer in the database.");
         }
      }

    return id != null
        ? (ActionResult)new OkObjectResult($"{ " { " + pais + " , " + anyo + " , " + descripcion + " , " + precio + " , " + direccion + " , " + telefono + " } " }")
        : new BadRequestObjectResult("Please pass a name on the query string or in the request body");
        
}
}
}
