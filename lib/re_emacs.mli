(*
   RE - A regular expression library

   Copyright (C) 2001 Jerome Vouillon
   email: Jerome.Vouillon@pps.jussieu.fr

   This library is free software; you can redistribute it and/or
   modify it under the terms of the GNU Lesser General Public
   License as published by the Free Software Foundation; either
   version 2 of the License, or (at your option) any later version.

   This library is distributed in the hope that it will be useful,
   but WITHOUT ANY WARRANTY; without even the implied warranty of
   MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the GNU
   Lesser General Public License for more details.

   You should have received a copy of the GNU Lesser General Public
   License along with this library; if not, write to the Free Software
   Foundation, Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA
*)

(* Errors that can be raised during the parsing of the regular expression *)
exception Parse_error
exception Not_supported

(* Parsing of an Emacs-style regular expression *)
val re : ?case:bool -> string -> Re.t

(* Regular expression compilation *)
val compile : Re.t -> Re.re
      (* Same as [Re.compile] *)
val compile_pat : ?case:bool -> string -> Re.re
