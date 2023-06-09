﻿using System.Collections.ObjectModel;



namespace ClientApp.Domain.Abstractions
{
    public interface IRepository<T>
    {
        T GetData(int id);
        ObservableCollection<T> GetAllData();
        void AddData(T data);
        void UpdateData(T data);
        void DeleteData(T data);
    }
}
