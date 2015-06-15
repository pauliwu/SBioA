program array_sum

INTEGER :: M, N, J
INTEGER(kind=8) :: i
INTEGER, DIMENSION (16,16) :: ARR
INTEGER, DIMENSION (256) :: B
real :: start_time, stop_time

!f2py intent(in) arr
!f2py depend(n) arr
!f2py intent(out) J
	
!PRINT *, "This is arr: ", ARR

!M = 8
!N = 8

do i=1,256
 b(i)=i-1
end do

ARR = reshape( b, (/ 16, 16 /) )

!print *, ARR

open(1, file='data1.dat', status='new')  

do i=1,10

J = 0
call cpu_time(start_time)
DO M = 1,16
 DO N = 1,16
  J = J + ARR(M,N)
 END DO
END DO
call cpu_time(stop_time)

!print *, "Setup time:", &
      !stop_time - start_time, "seconds"

write(1,*) stop_time - start_time   

!PRINT *, "The total value is: ", J
end do

 close(1)

end program
! END FILE ARRAY_SUM_SUB.F90




