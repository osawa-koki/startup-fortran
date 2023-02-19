
program main
    ! 変数宣言時に暗黙的な型宣言を無効化
    ! 変数宣言は先頭で行う
    implicit none

    ! 変数を宣言
    integer :: i, j
    character(len=100) :: message
    integer :: n, m
    integer arg1, arg2

    character(len=10), dimension(7) :: languages

    external sub
    integer add, multiple
    external add
    external multiple

    ! 標準出力への出力
    write(*,*) "Hello, World!"
    i = 1
    j = 2
    write(*,*) 'i + j = ', i + j

    ! 標準入力を受け取る
    write(*,*) 'Enter message: '
    read(*,*) message
    write(*,*) 'message = ', message

    ! 偶数か奇数かを判定
    write(*,*) 'Enter number to judge even or odd: '; read(*,*) n
    if (mod(n, 2) == 0) then
        write(*,*) 'n is even.'
    else
        write(*,*) 'n is odd.'
    end if

    ! 数字を受け取る
    write(*,*) 'Enter number to loop: '; read(*,*) m
    ! ループ
    do i = 1, m
        write(*,*) 'i = ', i
    end do

    ! 配列
    write(*,*) 'Enter to loop array.'; read(*,*)
    languages = ['Fortran', 'C      ', 'C++    ', 'Pascal ', 'Java   ', 'C#     ', 'Python ']
    do i = 1, 7
        write(*,*) 'languages(', i, ') = ', languages(i)
    end do

    ! サブルーチンの実行
    write(*,*) 'Enter to call subroutine.'; read(*,*)
    arg1 = 1
    arg2 = 2
    write(*,*) 'BEFORE => ', 'arg1 = ', arg1, ' : ', 'arg2 = ', arg2
    call sub(arg1, arg2)
    write(*,*) 'AFTER => ', 'arg1 = ', arg1, ' : ', 'arg2 = ', arg2

    ! 関数の実行
    write(*,*) 'Enter to call function.'; read(*,*)
    write(*,*) 'add(1, 2) = ', add(1, 2)
    write(*,*) 'multiple(3, 4) = ', multiple(3, 4)

end program main
