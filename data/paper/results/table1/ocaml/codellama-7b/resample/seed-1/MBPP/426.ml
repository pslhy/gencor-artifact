(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to filter odd numbers. *)
let rec filter_oddnumbers (nums : int list) : int list =
match nums with
| [] -> []
| hd :: tl -> if hd % 2 = 0 then hd :: filter_oddnumbers tl else filter_oddnumbers tl
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:21: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec filter_oddnumbers (nums : int list) : int list =
match nums with
| [] -> []
| hd :: tl -> if hd % 2 = 0 then hd :: filter_oddnumbers tl else filter_oddnumbers tl
;;

(* === Turn 3 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:4:21: Unbound value "(%)" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec filter_oddnumbers (nums : int list) : int list =
match nums with
| [] -> []
| hd :: tl -> if hd mod 2 = 0 then hd :: filter_oddnumbers tl else filter_oddnumbers tl
;;

