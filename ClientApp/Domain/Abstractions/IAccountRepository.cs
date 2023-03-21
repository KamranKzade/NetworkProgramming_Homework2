using ClientApp.DataAccess;


namespace ClientApp.Domain.Abstractions
{
    public interface IAccountRepository : IRepository<Account>
    {
        bool CheckUsername(string username, string password);
    }
}
