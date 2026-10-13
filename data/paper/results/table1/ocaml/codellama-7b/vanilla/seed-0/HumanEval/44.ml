let rec change_base (x : int) (base : int) : string =
  if x = 0 then "0"
  else
    let (d, m) = (x mod base, x / base) in
    change_base m base ^ string_of_int d

and string_of_int (x : int) : string =
  let rec int_to_string_rec (x : int) : string =
    if x = 0 then ""
    else string_of_int (x / 10) ^ (char_of_int ('0' + x mod 10)) in
  int_to_string_rec x

in
change_base x base


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Change numerical base of input number x to base. *)
(*     return string representation after the conversion. *)
(*     base numbers are less than 10. *)
(*     >>> change_base 8 3 *)
(*     "22" *)
(*     >>> change_base 8 2 *)
(*     "1000" *)
(*     >>> change_base 7 2 *)
(*     "111" *)
