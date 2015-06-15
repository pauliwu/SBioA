real function dist(p, q)
implicit none
real, dimension(2), intent(in) :: p, q
dist = sqrt(sum((p-q)**2))
end function

