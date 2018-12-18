using System;
using System.Collections.Generic;
using System.Linq;
using System.Runtime.Serialization;
using System.ServiceModel;
using System.Text;
using System.Data;

namespace _26onGrant
{
    // NOTE: You can use the "Rename" command on the "Refactor" menu to change the interface name "I26onGrantService" in both code and config file together.
    [ServiceContract]
    public interface I26onGrantService
    {
        [OperationContract]
        int registerLesee(string name, string lastName, string cell, string email, string password, string businessName, string typeBusiness, string vatNum, string compRegNum);

        [OperationContract]
        void verifyEmail(int id);

        [OperationContract]
        bool leeseeAuth(string username, ref int id, ref string businessname, string password, ref string status);

        [OperationContract]
        bool checkUser(string email);

        [OperationContract]
        DataTable getOffice(int id);

        [OperationContract]
        DataTable getOfficeID(string officeType);

        [OperationContract]
        DataTable checkOfficeAvailibility(int id);

        [OperationContract]
        int bookOffice(int officeID, int leeeeID, string startDate, string endDate);

        [OperationContract]
        void bookVirtualOffice(int leeseeID, bool socialMarketing, string startDate, string endDate);

        [OperationContract]
        DataTable getBoardroom();

        [OperationContract]
        DataTable getThinkTank();

        [OperationContract]
        int bookTT(string startTime, string endTime, string name);

        [OperationContract]
        int bookBoardroom(string startTime, string endTime, string name, int hours);

        [OperationContract]
        DataTable officeType(string officeType);

        [OperationContract]
        DataTable allOffice();

        
    }
}
