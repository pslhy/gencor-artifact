
let rec circular_shift (x : int) (shift : int) : string = 
  let digits = 
    let rec collect n acc = 
      if n = 0 then acc 
      else collect (n / 10) ((n mod 10) :: acc) 
    in collect x [] in
  let length = List.length digits in
  if shift >= length then 
    let reversed_digits = List.rev digits in
    let rec build_string lst = 
      if lst = [] then "" 
      else string_of_int (List.hd lst) ^ build_string (List.tl lst) 
    in build_string reversed_digits 
  else 
    let actual_shift = shift mod length in
    let front = List.rev (List.tl (List.rev (List.tl digits))) in
    let back = List.rev (List.tl (List.rev digits)) in
    let rec build_string lst = 
      if lst = [] then "" 
      else string_of_int (List.hd lst) ^ build_string (List.tl lst) 
    in build_string (List.rev (front @ List.rev back))

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Circular shift the digits of the integer x, shift the digits right by shift *)
(*     and return the result as a string. *)
(*     If shift > number of digits, return digits reversed. *)
(*     >>> circular_shift 12 1 *)
(*     "21" *)
(*     >>> circular_shift 12 2 *)
(*     "12" *)
