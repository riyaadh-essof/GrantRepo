using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data;
using MySql.Data.MySqlClient;


namespace _26onGrant
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the class name "_26onGrantService" in code, svc and config file together.
    // NOTE: In order to launch WCF Test Client for testing this service, please select 26onGrantService.svc or 26onGrantService.svc.cs at the Solution Explorer and start debugging.
    public class _26onGrantService : I26onGrantService
    {
        MySqlConnection connection = new MySqlConnection("server=dedi106.jnb2.host-h.net; user id=muazzi_2018; password='bankai_2018'; database=goldleaf_2018; SslMode=none");

        public int registerLesee(string name, string lastName, string cell, string email, string password, string businessName, string typeBusiness, string vatNum, string compRegNum)
        {
            MySqlCommand command = new MySqlCommand("INSERT INTO `26Leesee`(`BusinessName`, `Name`, `LastName`, `Cell`, `Email`, `Status`, `Password`, `TOBusiness`, `Vat`, `CompRegNum`) VALUES(@businessName, @name, @lastName, @cell, @email, @status, @password,@tOBusiness, @vat, @compRegNum)", connection);
            MySqlCommand commandID = new MySqlCommand("Select LAST_INSERT_ID()", connection);

            command.Connection.Open();
            command.Parameters.AddWithValue("@businessName", businessName);
            command.Parameters.AddWithValue("@name", name);
            command.Parameters.AddWithValue("@lastname", lastName);
            command.Parameters.AddWithValue("@cell", cell);
            command.Parameters.AddWithValue("@email", email);
            command.Parameters.AddWithValue("@status", "pending");
            command.Parameters.AddWithValue("@password", password);
            command.Parameters.AddWithValue("@tOBusiness", typeBusiness);
            command.Parameters.AddWithValue("@vat", vatNum);
            command.Parameters.AddWithValue("@compRegNum", compRegNum);
            command.ExecuteNonQuery();
            command.Connection.Close();
            command.Dispose();

            commandID.Connection.Open();
            int id = Convert.ToInt32(commandID.ExecuteScalar());
            commandID.Connection.Close();
            commandID.Dispose();

            return id;
        }

        public bool checkUser(string email)
        {
            MySqlCommand commandClient = new MySqlCommand("Select * From 26Leesee Where Email=@email", connection);
            commandClient.Connection.Open();
            commandClient.Parameters.AddWithValue("@email", email);
            MySqlDataReader reader = commandClient.ExecuteReader();
            if (reader.Read())
            {
                reader.Dispose();
                reader.Close();
                connection.Close();
                return true;
            }
            else
            {
                reader.Dispose();
                reader.Close();
                return false;
            }
        }

        public void verifyEmail(int id)
        {
            MySqlCommand command = new MySqlCommand("UPDATE 26Leesee SET Status = @Status WHERE ID = @ID", connection);

            command.Connection.Open();
            command.Parameters.AddWithValue("@ID", id);
            command.Parameters.AddWithValue("@Status", "verified");

            command.ExecuteNonQuery();

            command.Connection.Close();
            command.Dispose();
        }

        public bool leeseeAuth(string username, ref int id, ref string businessname, string password, ref string status)
        {
            MySqlCommand commandAdmin = new MySqlCommand("Select * From 26Leesee Where Email=@username AND Password=@pass", connection);
            commandAdmin.Connection.Open();
            commandAdmin.Parameters.AddWithValue("@username", username);
            commandAdmin.Parameters.AddWithValue("@pass", password);

            MySqlDataReader reader = commandAdmin.ExecuteReader();

            if (reader.Read())
            {
                businessname = reader["BusinessName"].ToString();
                id = int.Parse(reader["ID"].ToString());
                status = reader["Status"].ToString();
                reader.Dispose();
                commandAdmin.Connection.Close();

                return true;
            }
            else
            {
                reader.Dispose();
                commandAdmin.Connection.Close();
            }
            return false;
        }


        public DataTable getOfficeID(string officeType)
        {
            MySqlCommand command = new MySqlCommand("Select * From 26Office where Type=@type", connection);

            MySqlDataAdapter adapter = new MySqlDataAdapter(command);
            command.Connection.Open();

            command.Parameters.AddWithValue("@type", officeType);

            DataTable dt = new DataTable();
            dt.TableName = "OfficeID";
            adapter.Fill(dt);
            command.Connection.Close();
            command.Dispose();

            return dt;
        }

        public DataTable checkOfficeAvailibility(int id)
        {
            MySqlCommand command = new MySqlCommand("Select * From 26Office_Leesee Where OfficeID=@officeID", connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(command);
            command.Connection.Open();

            command.Parameters.AddWithValue("@officeID", id);
            DataTable dtBookedOffice = new DataTable();
            dtBookedOffice.TableName = "OfficeID";
            adapter.Fill(dtBookedOffice);
            command.Connection.Close();
            command.Dispose();

            return dtBookedOffice;
        }

        public int bookOffice(int officeID, int leeeeID, string startDate, string endDate)
        {
            throw new NotImplementedException();
        }



        public void bookVirtualOffice(int leeseeID, bool socialMarketing, string startDate, string endDate)
        {
            throw new NotImplementedException();
        }

        public DataTable getOffice(int id)
        {
            MySqlCommand command = new MySqlCommand("Select * From 26Office Where ID=@ID", connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(command);
            command.Connection.Open();

            command.Parameters.AddWithValue("@ID", id);
            DataTable officeSet = new DataTable();
            adapter.Fill(officeSet);
            command.Connection.Close();
            command.Dispose();

            return officeSet;
        }

        public DataTable getBoardroom()
        {
            MySqlCommand command = new MySqlCommand("Select ID, BookerID, StartTime, EndTime From 26BoardroomBooking", connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(command);
            command.Connection.Open();

            DataTable dtbookedBoardroom = new DataTable();
            dtbookedBoardroom.TableName = "Boardroom";
            adapter.Fill(dtbookedBoardroom);
            command.Connection.Close();
            command.Dispose();

            return dtbookedBoardroom;

        }

        public DataTable getThinkTank()
        {
            MySqlCommand command = new MySqlCommand("Select BookerID, StartTime, EndTime From 26TTBooking", connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(command);
            command.Connection.Open();

            DataTable dtTTBooking = new DataTable();
            dtTTBooking.TableName = "Boardroom";
            adapter.Fill(dtTTBooking);
            command.Connection.Close();
            command.Dispose();

            return dtTTBooking;

        }

        public int bookBoardroom(string startTime, string endTime, string name, int hours)
        {
            MySqlCommand commandModel = new MySqlCommand("INSERT INTO `26BoardroomBooking` (`StartTime`, `EndTime`, `BookerID`, `Hours`) VALUES (@startTime, @endTime, @name, @hours)", connection);

            commandModel.Connection.Open();

            commandModel.Parameters.AddWithValue("@startTime", startTime);
            commandModel.Parameters.AddWithValue("@endTime", endTime);
            commandModel.Parameters.AddWithValue("@name", name);
            commandModel.Parameters.AddWithValue("@hours", hours);

            int i = Convert.ToInt32(commandModel.ExecuteScalar());
            connection.Close();
            commandModel.Dispose();
            return i;
        }

        public int bookTT(string startTime, string endTime, string name)
        {
            MySqlCommand commandModel = new MySqlCommand("INSERT INTO `26TTBooking` (`StartTime`, `EndTime`, `BookerID`) VALUES (@startTime, @endTime, @name)", connection);

            commandModel.Connection.Open();

            commandModel.Parameters.AddWithValue("@startTime", startTime);
            commandModel.Parameters.AddWithValue("@endTime", endTime);
            commandModel.Parameters.AddWithValue("@name", name);

            int i = Convert.ToInt32(commandModel.ExecuteScalar());
            connection.Close();
            commandModel.Dispose();
            return i;
        }

        public DataTable officeType(string officeType)
        {
            MySqlCommand commandModel = new MySqlCommand("Select * From 26Office Where Type=@officeType", connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(commandModel);
            commandModel.Connection.Open();

            commandModel.Parameters.AddWithValue("@officeType", officeType);

            DataTable dtOffice = new DataTable();
            dtOffice.TableName = "Office";
            adapter.Fill(dtOffice);
            commandModel.Connection.Close();
            commandModel.Dispose();

            return dtOffice;
        }

        public DataTable allOffice()
        {
            MySqlCommand commandModel = new MySqlCommand("Select * From 26Office)", connection);
            MySqlDataAdapter adapter = new MySqlDataAdapter(commandModel);
            commandModel.Connection.Open();

            DataTable dtOffice = new DataTable();
            dtOffice.TableName = "Office";
            adapter.Fill(dtOffice);
            commandModel.Connection.Close();
            commandModel.Dispose();

            return dtOffice;
        }
    }


}
