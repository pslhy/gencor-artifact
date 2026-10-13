let rec convert (numbers : int) :  float * float = 
    let mag = Complex.maginutes numbers in
    let arg = Complex. argument numbers in
    let x = mag * cosin arg in
    let y = mag * sinus arg in
    (x, y)


(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a mlthon function to convert complex numbers to polar coordinates. *)
