let rec concatenate_tuple (test_tup :  string * string * int * string) : string = 
  let joiner gap (a, d, b, c) = a ^ gap ^ d ^ gap ^ (string_of_int b) ^ gap ^ c in
  joiner "-" test_tup ;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to concatenate each element of tuple by the delimiter. *)
