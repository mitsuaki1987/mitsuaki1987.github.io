program char_test
  implicit none
  integer :: ii, jj, nn
  integer,allocatable :: irand(:,:)
  real(8),allocatable :: rand(:,:)
  character(256) form
  !
  read(*,*) nn
  write(form,'(a,i0,a)') "(", nn, "(1x,i0))"
  allocate(rand(nn,nn), irand(nn,nn))
  !
  call random_number(rand)
  irand(1:nn,1:nn) = nint((rand(1:nn,1:nn)-0.5d0)*5.0d0)
  !irand(1:nn,1:nn) = nint(rand(1:nn,1:nn))
  !
  do ii = 1, nn
     write(*,form) irand(1:nn,ii)
  end do
  !
end program char_test
