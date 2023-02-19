
subroutine sub(arg1, arg2)
    intent(in) :: arg1 ! 変更不可
    intent(out) ::  arg2 ! 変更可

    ! arg1 = 100 ! 変更不可なのでエラー
    arg2 = 100 ! 変更可なのでOK

    write(*,*) 'MIDDLE => ', 'arg1 = ', arg1, ' : ', 'arg2 = ', arg2

end subroutine sub
