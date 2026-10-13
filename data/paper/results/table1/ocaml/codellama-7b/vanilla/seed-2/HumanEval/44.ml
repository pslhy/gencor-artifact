let rec change_base (x : int) (base : int) : string =
  match x with
  | 0 -> "0"
  | _ ->
    let rem = x mod base in
    let quot = x / base in
    let rem_str = if rem < 10 then string_of_int rem else "A" + (string_of_int (rem - 10)) in
    let quot_str = change_base quot base in
    quot_str ^ rem_str
;;


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
