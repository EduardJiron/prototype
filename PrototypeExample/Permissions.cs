using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PrototypeExample
{
    public class Permission : Prototype<Permission>
    {
        public string Name { get; set; }

        public Permission(string name)
        {
            Name = name;
        }

        public override Permission Clone()
        {
            return new Permission(Name);
        }
    }
}