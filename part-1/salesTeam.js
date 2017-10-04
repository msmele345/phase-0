/**************************************************************/
/*   It is required to use Array.prototype methods            */
/*   when iterating over a sales team's array of employees.   */
/**************************************************************/


var SalesTeam = function(employees){
  this.employees = employees;
};


SalesTeam.prototype.find = function(person){
  for(var i = 0; i < this.employees.length; i++){
    if(this.employees[i].firstName === person){
      return this.employees[i];
    };
  };
};


SalesTeam.prototype.bonusEarners = function(){
  var superTeamMembers = []
  for(var i = 0; i < this.employees.length; i++ ){
    if(this.employees[i].totalSales() > 2500){
      superTeamMembers.push(this.employees[i])
    };
  };
  return superTeamMembers;
};















