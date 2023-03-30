using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace PrototypeExample
{
    
    public abstract class Prototype<T>
    {
        public abstract T Clone();
    }
}

