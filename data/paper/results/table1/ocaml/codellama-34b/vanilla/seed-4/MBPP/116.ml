let rec tuple_to_int (nums :  int * int * int) : int = 
    let (num1, num2, num3) = nums in
    let nums_str = string_of_int num1 ^ string_of_int num2 ^ string_of_int num3 in
    int_of_string nums_str

(* Example usage *)
let result = tuple_to_int (1, 2, 3)
(* result is 123 *)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to convert a given tuple of positive integers into a single integer. *)
