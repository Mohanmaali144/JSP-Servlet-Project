<!DOCTYPE html>
<html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>

    <body>
        <h1>JSP page</h1>


        <button id="factorial" onclick="fact()">Factoral</button>
        <button id="calculate" onclick="calculate()"> Caculate </button>
        <button id="cube" onclick="cube()">Cube</button>
        <button id="leap" onclick="leap()">check Leap</button>
        <button id="fibo" onclick="fibo()">Fibonaci</button>
        <!-- <button style="display: none;" id="back" onclick="back()">Back</button> -->

        <br><br><br>
        <div id="fact-div" style="display: none;">
            <form action=""   onsubmit="return validation()">
                <table>
                    <tr>
                        <td> <label > Enter a number</label></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="fact" id="n1" placeholder="Enter a number"></td>
                    </tr>
                    <tr>
                        <td><input type="submit"  value="Submit"></td>
                    </tr>
                </table>
            </form>
        </div>

        <!-- ------------------------------------------------- -->

        <div id="calculat-div" style="display: none;">

            <form action="">
                <table>
                    <tr>
                        <td><label >Enter a number</label></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="n1" id="n1" placeholder="Enter first number"></td>
                    </tr>
                    <tr>
                        <td><label >Enter second number</label></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="n2" id="n2" placeholder="Enter second number"></td>
                    </tr>
                    <tr>
                        <td><button name="op" value="+">+</button> <button name="op" value="-">-</button>
                            <button name="op" value="x">x</button><button name="op" value="/">/</button>
                        </td>
                    </tr>
                </table>
            </form>
        </div>

        <!-- ------------------------------------ -->
        <div id="cube-div" style="display: none;">

            <form action="" onsubmit="return myfun()">
                <table>
                    <tr>
                        <td><label >Enter a number</label></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="cube" id="cube" placeholder="Enter a number"></td>
                    </tr>
                    <tr>
                        <td><input type="submit" id="btn" value="Submit"></td>
                    </tr>
                </table>
            </form>
        </div>


        <div id="leap-div" style="display: none">

            <form action="" onsubmit="return myfun()">
                <table>
                    <tr>
                        <td><label >Enter year</label></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="year" id="n1" placeholder="Enter a number"></td>
                    </tr>
                    <tr>
                        <td><input type="submit"  value="Submit"></td>
                    </tr>
                </table>
            </form>
        </div>

        <div id="fibo-div" style="display: none">

            <form action="" onsubmit="return myfun()">
                <table>
                    <tr>
                        <td><label >Enter number</label></td>
                    </tr>
                    <tr>
                        <td><input type="text" name="fibo" id="fibo" placeholder="Enter a number"></td>
                    </tr>
                    <tr>
                        <td><input type="submit"  value="Submit"></td>
                    </tr>
                </table>
            </form>
        </div>



        <script>

            function fact() {

                document.getElementById("fact-div").style.display = "inline";
                document.getElementById("cube-div").style.display = "none";
                document.getElementById("calculat-div").style.display = "none";
                document.getElementById("leap-div").style.display = "none";
                document.getElementById("fibo-div").style.display = "none";

            }

            function calculate() {

                document.getElementById("calculat-div").style.display = "inline";

                document.getElementById("fact-div").style.display = "none";
                document.getElementById("cube-div").style.display = "none";
                document.getElementById("leap-div").style.display = "none";
                document.getElementById("fibo-div").style.display = "none";

            }

            function cube() {

                document.getElementById("cube-div").style.display = "inline";

                document.getElementById("fact-div").style.display = "none";
                document.getElementById("calculat-div").style.display = "none";
                document.getElementById("leap-div").style.display = "none";
                document.getElementById("fibo-div").style.display = "none";

            }

            function leap() {

                document.getElementById("leap-div").style.display = "inline";

                document.getElementById("cube-div").style.display = "none";
                document.getElementById("fact-div").style.display = "none";
                document.getElementById("calculat-div").style.display = "none";
                document.getElementById("fibo-div").style.display = "none";
            }



            function fibo() {

                document.getElementById("fibo-div").style.display = "inline";

                document.getElementById("leap-div").style.display = "none";
                document.getElementById("cube-div").style.display = "none";
                document.getElementById("fact-div").style.display = "none";
                document.getElementById("calculat-div").style.display = "none";
            }


            function validations() {
                let n1 = document.getElementById("n1").value;
                if (n1 == null|| isNaN(n1)) {
                    alert("please Enter a valid number ");
                    return false;
                }
            }

        </script>
    </body>

</html>

<% 
    String n = request.getParameter("fact");
    Integer a = null;

    if (n != null && !n.isEmpty()) {
        a = Integer.parseInt(n);
    
      if (a != null) {
            int fact = 1;
            for (int i = 1; i <= a; i++) {
                fact *= i;
             }

             out.print(fact);
         } else {
       
            out.print("wrong");       
         }
    }else if(request.getParameter("year")!=null && !request.getParameter("year").isEmpty())
    {
            int year = Integer.parseInt(request.getParameter("year"));
            if(    (year%4==0) && ((year%400==0) || (year%100!=0) )     )  
            {
                out.println("leap year"); 
            }  
            
            else
            {
                out.println("Not a leap year");
   
            }  
    }
    
    else if((request.getParameter("n1")!=null && !request.getParameter("n1").isEmpty())&&(request.getParameter("n2")!=null && !request.getParameter("n2").isEmpty())){
    
    
            int n1 = Integer.parseInt(request.getParameter("n1"));
             int n2 = Integer.parseInt(request.getParameter("n2"));
           
            
            String ch = request.getParameter("op");
             switch(ch){
                    case "+":
                       out.print(n1+n2);
                       break;

                    case "-":
                       out.print(n1-n2);
                       break;

                   case "x":
                       out.print(n1*n2);
                       break;

                   case "/":
                       out.print(n1/n2);
                       break;

            }
    
    }
    else if(request.getParameter("cube")!=null && !request.getParameter("cube").isEmpty())
    {
            int c = Integer.parseInt(request.getParameter("cube"));
            
          out.print(c*c*c);
    }
    else if(request.getParameter("fibo")!=null && !request.getParameter("fibo").isEmpty())
    {
            int z = Integer.parseInt(request.getParameter("fibo"));
            int d=0,b=1,c=0;
            
            for(int i=1;i<=z;i++)
            {
                out.print(c + " ");
                d=b;
                b=c;
                c=d+b;

            }                     
    }




%>









