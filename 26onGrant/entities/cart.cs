using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Collections;

namespace _26onGrant.entities
{
    public class Cart
    {
        public ArrayList item = new ArrayList();
        public double total;
        protected int userId;
        private int numItems;

        public ArrayList Item { get;  set; }

        public Cart()
        {
            numItems = 0;
            total = 0;
        }

        public int getNumItems ()
        {
            return this.numItems;
        }

        public void setNumItems(int numItems)
        {
            this.numItems += numItems;
        }

        public void setTotal(double total)
        {
            this.total += total;
        }

        public void deleteTotal(double total)
        {
            this.total -= total;
        }

        public double getTotal()
        {
            return total;
        }

        public void setID(int id)
        {
            userId = id;
        }

        public int getID()
        {
            return userId;
        }

    }
}