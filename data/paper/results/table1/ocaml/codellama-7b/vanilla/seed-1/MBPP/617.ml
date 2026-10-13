let rec min_Jumps (steps :  int * int) (d : int) : float =
match steps with
| (d, 0) -> 1.0
| _ -> failwith "bad args"
let steps = (2, 2)
let d = 10
printf "%f\n" (min_Jumps steps d)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to check for the number of jumps required of given length to reach a point of form (d, 0) from origin in a 2d plane. *)
