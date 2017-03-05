program testsum

  use iso_c_binding

  implicit none

  interface
     integer(c_int) function sum_abs(inp, num) bind(c)
	use iso_c_binding
	implicit none
	!integer (c_int),intent(in)::inp
        type (c_ptr), value::inp
	integer(c_int),value::num
     end function sum_abs
  end interface
    
  integer(c_int),parameter::n=200
  integer(c_int),allocatable,dimension(:),target::data
  integer(c_int)::asum, i

  allocate(data(0:n-1))

  do i=0,n-1
    data(i) = i-100
  end do

  asum=sum_abs(c_loc(data),n)
  print*, 'sum=',asum
end program testsum 
