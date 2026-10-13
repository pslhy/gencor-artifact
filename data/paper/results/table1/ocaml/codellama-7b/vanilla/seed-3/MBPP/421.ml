let rec concatenate_tuple (test_tup :  string * string * int * string) : string =
  let d1, d2, d3, d4 = test_tup in
  let result = d1 ^ "," ^ d2 ^ "," ^ string_of_int d3 ^ "," ^ d4 in
  result


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to concatenate each element of tuple by the delimiter. *)
