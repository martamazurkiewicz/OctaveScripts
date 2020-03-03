## Copyright (C) 2020 marta
## 
## This program is free software: you can redistribute it and/or modify it
## under the terms of the GNU General Public License as published by
## the Free Software Foundation, either version 3 of the License, or
## (at your option) any later version.
## 
## This program is distributed in the hope that it will be useful, but
## WITHOUT ANY WARRANTY; without even the implied warranty of
## MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
## GNU General Public License for more details.
## 
## You should have received a copy of the GNU General Public License
## along with this program.  If not, see
## <https://www.gnu.org/licenses/>.

## -*- texinfo -*- 
## @deftypefn {} {@var{retval} =} DodawanieMacierzy (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: marta <marta@DESKTOP-OGP4OJ5>
## Created: 2020-03-03

function retval = DodawanieMacierzy (A, B)
[n,m] = size(A);
[k,l] = size(B);
  if (n == k && m == l)
    retval = zeros(n,m);
    for i = 1:n
      for j = 1:m
        retval(i,j) = A(i,j)+B(i,j);
      endfor
    endfor
  else
    error ("Macierze roznych rozmiarow");
  endif 
endfunction
