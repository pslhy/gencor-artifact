let rec volume_cube (l : int) : int =
  if l < 0 then
    (* base case: negative side length *)
    failwith "Invalid side length"
  else if l = 0 then
    (* base case: side length is 0 *)
    0
  else
    (* recursive case: side length is positive *)
    l * l * l


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the volume of a cube given its side length. *)
