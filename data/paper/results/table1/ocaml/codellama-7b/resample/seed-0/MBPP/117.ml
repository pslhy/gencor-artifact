(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to convert all possible convertible elements in a list of lists to floats. *)
let rec list_to_float (test_list :  (string * string) list) :  (float * float) list =
 match test_list with
 | [] -> []
 | head :: tail ->
 let inta, intb = head in
 if (Char.is_digit inta || Char.is_digit intb)
 then
   (float_of_int (int_of_string inta), float_of_int (int_of_string intb)) :: list_to_float tail
 else
   list_to_float tail
;;

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:6: Unbound value "Char.is_digit" *)
(*     Please regenerate the code, taking these errors into account. *)
let rec list_to_float (test_list :  (string * string) list) :  (float * float) list =
 match test_list with
 | [] -> []
 | head :: tail ->
 let inta, intb = head in
 if ((String.get inta 0) = '0' || (String.get intb 0) = '0') && (String.get inta 1) = '.' && (String.get intb 1) = '.'
 then
   (float_of_string inta, float_of_string intb) :: list_to_float tail
 else
   list_to_float tail

