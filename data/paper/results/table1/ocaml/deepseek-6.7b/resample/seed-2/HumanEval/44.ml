(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
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
let rec change_base (x : int) (base : int) : string =
  match x with
  | 0 -> "0"
  | _ -> let quotient, remainder = x / base, x mod base in
         let char = match remainder with
                   | 10 -> 'A'
                   | 11 -> 'B'
                   | 12 -> 'C'
                   | 13 -> 'D'
                   | 14 -> 'E'
                   | 15 -> 'F'
                   | _ -> Char.of_string (string_of_int remainder) in
         change_base quotient base ^ String.make 1 char

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:12:27: Unbound value "Char.of_string" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec change_base (x : int) (base : int) : string =
  match x with
  | 0 -> "0"
  | _ -> let quotient, remainder = x / base, x mod base in
         let char = match remainder with
                   | 10 -> 'A'
                   | 11 -> 'B'
                   | 12 -> 'C'
                   | 13 -> 'D'
                   | 14 -> 'E'
                   | 15 -> 'F'
                   | _ -> char_of_int remainder in
         change_base quotient base ^ String.make 1 char

