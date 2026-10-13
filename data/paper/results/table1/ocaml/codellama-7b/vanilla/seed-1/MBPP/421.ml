let rec concatenate_tuple (test_tup :  string * string * int * string) : string =
match test_tup with
| (a, b, c, d) -> a ^ ":" ^ b ^ ":" ^ string_of_int c ^ ":" ^ d ^ ":"
;;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to concatenate each element of tuple by the delimiter. *)
