let rec convert (numbers : int) :  float * float = 
 let aux acc i = 
  let a = cos(float numbers) in
  let b = sin(float numbers) in
  (a, b):: acc 
 in 
 aux [] (numbers - 1)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert complex numbers to polar coordinates. *)
