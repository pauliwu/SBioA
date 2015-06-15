recursive function factorial(n) result (fac)    
implicit none     

   ! dummy arguments     
   integer (kind=16):: fac     
   integer, intent (in) :: n     
   
   select case (n)    
      case default    
         fac = n * factorial (n-1)      
      case (0:1)         
         fac = 1      
   end select 
   
end function factorial
