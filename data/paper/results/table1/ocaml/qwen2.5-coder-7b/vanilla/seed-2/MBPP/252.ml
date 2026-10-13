let rec convert (numbers : int) :  float * float = 
    let abs_complex = (float (numbers)) in 
    let angle_complex = (atan2 (float numbers)) in 
    (abs_complex, angle_complex)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert complex numbers to polar coordinates. *)
