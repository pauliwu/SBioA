integer(kind=32) function factorial(n)
   implicit none
   integer, intent(in) :: n
   integer (kind=32):: i, Ans

   Ans = 1

   do i= 1, n
      Ans = Ans * i
   end do

   factorial = Ans
end function factorial
