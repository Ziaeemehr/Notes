Content-Type: text/x-zim-wiki
! Wiki-Format: zim 0.4
! Creation-Date: 2015-06-12T12:02:19+04:30

! ====== Fortran ======
! Created جمعه 12 ژوئن 2015

run:
f95 myprog.f90 -o myprog

print *, "alpha + beta = " , alpha + beta

du -sh folder will give you the size of the directory **folder** and du -sh . will give you the size of the current folder you are in.
ls *.f90                    # List all files whose name ends in .f90
rm *.out                  # Remove all files ending in .out
du -sh *                   # Show the size of all the files and directories
mv *.f90 programs/  # Move all files whose name ends in .f90 into programs/
ls p????.f90              # list all files whose name is p+any 4 characters+.f90
ls ?.out                    # list all files whose name is any one character followed by .out
rm -r * this would simply erase all files and folders in the current folders
 data type:
double precision :: e , f
e.g. 0d0 , -13.67d0 , 7.3d6 , 4.1d-3

! **Fixing Mixed Variable Types**
int(a)   return the truncated value of a in integer form 13.999 → 13
nint(a)  it will return the rounded integer value so 13.999 →  14.
real(a) 13 → 13.00
dble(a) : dble(13.45) → 13.45000000000

! Parameter Command
integer, parameter :: size = 20
real, parameter :: pi = 3.141
real, dimension(size) :: stars
! **Matrices**
real, dimension(5,3) :: table

integer, parameter :: rows = 5
integer, parameter :: cols = 3
real, dimension(rows,cols) :: table

read *, table    ! we would input our values in **column order**
table(1,1) , table(2,1) , table(3,1) , table(4,1) , table(5,1) , table(1,2) , table(2,2) etc . . .

**Implied Do-Loop**

do i=1,rows
read *, (table(i,j) , j=1,cols) ! here is the implied do-loop bit
end do

**Allocatable Arrays**
real, allocatable, dimension(:) :: x       ! rank 1
real, allocatable, dimension(:,:) :: y     ! rank 2
print *, ’enter integer values for the size of your arrays:’
read *, a,b
allocate (x(a) , y(a,b))
deallocate(x,y)

=== External Input/Output Files ===
**Reading in .DAT Files**
open(unit=7 , file=’/home/astronomy/as3013/datfiles/numbers1.dat’ , status=’old’)
since we are in [[/home/astronomy/as3013]]  we could also use:
open(unit=7 , file=’/datfiles/numbers1.dat’ , status=’old’)
'new', if we want to create the file instead of 'old'

^{UNIT = unit number
FILE = file_name
STATUS = file_status
FORM = format_mode
ACTION = allowed_actions
POSITION = file_position
IOSTAT = ios}

**Variable type**
_{program test
implicit none
real :: pi1
real*8 :: pi2
real*16 :: pi3
pi1 = acos(-1.0)
pi2 = acos(-1.d0)
pi3 = acos(-1.0_16)
print *, pi1
print *, pi2
print *, pi3
end program test}




















