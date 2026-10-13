let rec extract_rear (test_tuple :  string * string * string) : string list = 
    let helper (a, b, c) = [String.sub a (String.length a - 1) 1; String.sub b (String.length b - 1) 1; String.sub c (String.length c - 1) 1] in
    helper test_tuple;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to extract only the rear index element of each string in the given tuple. *)
