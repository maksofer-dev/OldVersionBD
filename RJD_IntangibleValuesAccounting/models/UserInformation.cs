using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace RJD_IntangibleValuesAccounting.models
{
    public class UserInformation
    {
        public string _Role;
        public string _FullName;


        public string Role
        {
            get
            {
                return _Role;
            }
            set
            {
                _Role = value;
            }
        }
        public string FullName
        {
            get
            {
                return _FullName;
            }
            set
            {
                _FullName = value;
            }
        }
    }
}
