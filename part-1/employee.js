/*********************************************************/
/*   It is required to use a for loop                    */
/*   when iterating over an employee's array of sales.   */
/*********************************************************/
var Employee = function(args = {}){
  this.firstName = args.firstName;
  this.sales = args.sales || [];
};


  Employee.prototype.totalSales = function(){
  total = 0
  for(var i = 0; i < this.sales.length; i++){
    total+=this.sales[i]
  }
  return total;
};


Employee.prototype.averageSales = function(){
  var average = this.totalSales();
  return average / this.sales.length
}



