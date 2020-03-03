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
## @deftypefn {} {@var{retval} =} MnozenieMacierzy (@var{input1}, @var{input2})
##
## @seealso{}
## @end deftypefn

## Author: marta <marta@DESKTOP-OGP4OJ5>
## Created: 2020-03-03

function retval = MnozenieMacierzy (A,B)
[n,m] = size(A);
[k,l] = size(B);
  if (m == k)
    retval = zeros(n,l);
    % i,j - wiersze i kolumny macierzy zwracanej
    for i = 1:n
      for j = 1:l
        for kolumnaA = 1:k
        retval(i,j) += A(i,kolumnaA)*B(kolumnaA,j);
        endfor
      endfor
    endfor
  else
    error ("Macierze nieprawidlowych rozmiarow");
  endif 
endfunction
