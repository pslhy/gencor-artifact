let rec list_to_float (test_list :  (string * string) list) :  (float * float) list =
  match test_list with
  | [] -> []
  | (x, y) :: tail -> (float_of_string x, float_of_string y) :: list_to_float tail

(* Test with some data *)
let test_list = [("1.0", "2.0"), ("3.0", "4.0"), ("5.0", "6.0")]
let res = list_to_float test_list


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert all possible convertible elements in a list of lists to floats. *)
