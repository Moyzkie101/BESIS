<!DOCTYPE html>
<html>
  <head>
    <title>Registration Page</title>
    <link rel="stylesheet" type="text/css" href="css/frontd.css" />
  </head>
  <body>
      <div class="wrapper">
          <h5><center> </center></h5>
          
      </div>
    <div class="container">
      <div class="row col-md-6 col-md-offset-3">
        <div class="panel panel-primary">
          <div class="panel-heading text-center">
            <h1>Request Form</h1>
          </div>
          <div class="panel-body">
            <form action="connect.php" method="post">
              <div class="form-group">
                <label for="firstName">Full Name  (<i> Kumpletong Pangalan </i>)</label>
                <input
                  type="text"
                       placeholder="Indicate Your Full Name"
                  class="form-control"
                  id="firstName"
                  name="firstName"  required
                />
              </div>
              <div class="form-group">
                <label for="lastName">National ID:</label>
                <input
                  type="text"
                       placeholder="Indicate National ID"
                  class="form-control"
                  id="lastName"
                  name="lastName"  required
                />
              </div>
             <div class="form-group">
                <label for="gcontact">Email Address/Contact #:</label>
                <input
                  type="text"
                       placeholder="brgy@gmail.com/ 09999999999"
                  class="form-control"
                  id="gcontact"
                  name="gcontact"    required  
                />
              </div>
              <div class="form-group">
                <label for="gender">Gender  (<i> Lalaki o Babaye </i>)</label>
                <div>
                  <label for="male" class="radio-inline"
                    ><input
                      type="radio"
                      name="gender"
                      value="Male"
                      id="male"  required
                    />Male  (<i> lalaki </i>)</label
                  >
                  <label for="female" class="radio-inline"
                    ><input
                      type="radio"
                      name="gender"
                      value="Female"
                      id="Female"  required
                    />Female  (<i> Babaye </i>)</label
                  >
                </div>
              </div>
              <div class="form-group">
                <label for="age">Age  (<i> Edad </i>)</label>
                <input
                  type="number"
                       placeholder="Indicate Your Age"
                  class="form-control"
                  id="age"
                  name="age"
                />
              </div>
              <div class="form-group">
                <label for="password">Form to Request:   (<i> Kinahanglan nga Dokumento </i>)          </label>             
                <div>
                <input
                     
                      type="radio"
                      name="forms"
                      value="Barangay Certificates"
                      id="forms"  required
                    /> <label>Barangay Certificates    </label> 
                  <label for="female" class="radio-inline"
                    ><input
                      type="radio"
                      name="forms"
                      value="Certificate of Indigency"
                      id="forms"
                    />Certificate of Indigency</label
                  ><br>

                  <label for="gg" class="radio-inline"
                    ><input
                      type="radio"
                      name="forms"
                      value="Certicicate of Residency"
                      id="forms"
                    />Certificate of Residency</label
                  >
                       <label for="gg" class="radio-inline"
                    ><input
                      type="radio"
                      name="forms"
                      value="Brgy Business Clearance"
                      id="forms"
                    />Brgy Business Clearance</label
                  >
                  </div>
            
              </div>
              
              <input type="submit" class="btn btn-primary" >
            </form>
            
          </div>
          <div class="panel-footer text-center">
          <h5><center>"Note: Make sure to input correct details, otherwise, the request will be denied"</center></h5><h5><center>"Timan-i: Ibutang ang saktong impormasyon mahitungod kanimo, mahimong invalid kung dili kini magtakdo basi sa record sa sa atong system"</center></h5>
          </div>
          
        </div>
      </div>
    </div>
    