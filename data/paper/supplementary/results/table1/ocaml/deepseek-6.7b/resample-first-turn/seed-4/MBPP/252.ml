let rec convert (numbers : int) :  float * float =
  let module C = Complex in
  let a, b = C.re, C.im in
  let r = (a * a + b * b) in
  let theta = atan2 b a in
  (r, theta);;


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert complex numbers to polar coordinates. *)
