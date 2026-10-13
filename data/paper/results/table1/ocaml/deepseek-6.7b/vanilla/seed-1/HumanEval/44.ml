let rec change_base (x : int) (base : int) : string =
    match x / base with
    | 0 -> string_of_int (x mod base)
    | _ -> change_base (x / base) base ^ string_of_int (x mod base)

(* Test cases *)
(* print_endline (change_base 8 3) *)
(* print_endline (change_base 8 2) *)
(* print_endline (change_base 7 2) *)


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
