﻿//------------------------------------------------------------------------------
// <auto-generated>
//     Этот код создан по шаблону.
//
//     Изменения, вносимые в этот файл вручную, могут привести к непредвиденной работе приложения.
//     Изменения, вносимые в этот файл вручную, будут перезаписаны при повторном создании кода.
// </auto-generated>
//------------------------------------------------------------------------------

namespace RJD_IntangibleValuesAccounting
{
    using System;
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class IntangibleAssetsDBEntities : DbContext
    {
        private static IntangibleAssetsDBEntities _context;
        public IntangibleAssetsDBEntities()
            : base("name=IntangibleAssetsDBEntities")
        {
        }
        public static IntangibleAssetsDBEntities GetContext()
        {
            if (_context == null)
                _context = new IntangibleAssetsDBEntities();
            return _context;
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<AccountingIntangibleValue> AccountingIntangibleValues { get; set; }
        public virtual DbSet<Bill> Bills { get; set; }
        public virtual DbSet<CounterAgent> CounterAgents { get; set; }
        public virtual DbSet<DepreciationGroup> DepreciationGroups { get; set; }
        public virtual DbSet<IntangibleValueReceipt> IntangibleValueReceipts { get; set; }
        public virtual DbSet<MethodDepreciation> MethodDepreciations { get; set; }
        public virtual DbSet<MethodOfReceipt> MethodOfReceipts { get; set; }
        public virtual DbSet<Role> Roles { get; set; }
        public virtual DbSet<sysdiagram> sysdiagrams { get; set; }
        public virtual DbSet<Type> Types { get; set; }
        public virtual DbSet<User> Users { get; set; }
    }
}
