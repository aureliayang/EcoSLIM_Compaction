program serial_compaction

    implicit none

    integer:: ii, np_active, np_active2, npout
    real(8),allocatable::P(:,:)

    ! read or create P array

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

end program serial_compaction