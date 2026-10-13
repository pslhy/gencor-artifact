let rec change_base (x : int) (base : int) : string =
  if x < base
  then string_of_int x
  else begin
    let r = x mod base in
    let q = x / base in
    string_of_int r ^ change_base q base
  end


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
