using System.Linq;
using ClientApp.Domain.Abstractions;
using System.Collections.ObjectModel;


namespace ClientApp.DataAccess.Repositories
{
    public class AccountRepository : IAccountRepository
    {
        public readonly LoginDbDataClassesDataContext _dataContext;

        public AccountRepository()
        {
            _dataContext = new LoginDbDataClassesDataContext();
        }

        public void AddData(Account data)
        {
            _dataContext.Accounts.InsertOnSubmit(data);
            _dataContext.SubmitChanges();
        }

        public void DeleteData(Account data)
        {
            _dataContext.Accounts.DeleteOnSubmit(data);
            _dataContext.SubmitChanges();
        }

        public ObservableCollection<Account> GetAllData()
        {
            var datas = from account in _dataContext.Accounts
                        select account;
            return new ObservableCollection<Account>(datas);
        }

        public Account GetData(int id)
        {
            return _dataContext.Accounts.SingleOrDefault(a => a.Id == id);
        }

        public void UpdateData(Account data)
        {
            var item = _dataContext.Accounts.SingleOrDefault(a => a.Id == data.Id);

            item = new Account
            {
                Id = data.Id,
                Name = data.Name,
                Surname = data.Surname,
                Birthday = data.Birthday,
                City = data.City,
                Email = data.Email,
                Username = data.Username,
                State = data.State,
                Password = data.Password
            };

            _dataContext.SubmitChanges();
        }



        public bool CheckUsername(string username, string password)
        {
            var data = _dataContext.Accounts.SingleOrDefault(a => a.Username == username && a.Password == password);

            if (data != null)
                return true;
            else 
                return false;
        }
    }
}