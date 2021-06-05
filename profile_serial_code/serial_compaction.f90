program serial_compaction

    implicit none

    integer:: ii, np_active, np_active2, npout, N=80000000
    real(8),allocatable::P(:,:)
    integer:: i, j, ncount=0

    ! read or create P array
    allocate(P(N,10))

    do i = 1, N
        do j = 1, 10
            ncount = ncount + 1
            P(i,j) = dble(ncount)
        enddo
    enddo

    do i = 1, N/8
        P((i-1)*8+1:i*8,8) = [1.d0, 0.d0, 1.d0, 1.d0, 0.d0, 0.d0, 1.d0, 0.d0]
    enddo

    print *, idnint(P(1:16,8))

    np_active  = N
    np_active2 = np_active

    npout = 0
    do ii = 1, np_active
        ! check if particle is inactive
        if (P(ii,8) == 0.0) then
            do while(P(ii,8) == 0.0)
                npout = npout + 1
                P(ii,:) = P(np_active2,:)
                np_active2 = np_active2 -1
            enddo
        end if
        ! if we have looped all the way through our active particles exit
        if (ii > np_active2) exit
    end do ! particles

    print *, npout
    print *, idnint(P(1:8,1))

end program serial_compaction