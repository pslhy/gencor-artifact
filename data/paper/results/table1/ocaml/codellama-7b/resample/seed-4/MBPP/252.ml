(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a mlthon function to convert complex numbers to polar coordinates. *)
let rec convert (numbers : int) :  float * float = 
    let (real, img) = numbers in 
    ( let (a, b) = 
            let dist : float = sqrt (real * real - img * img) in 
            ( let angle : float = real * b - img * a in 
            (  dist, angle) ) ) in 
    (  a,  b)
    

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:31: Syntax error *)
(*     Please regenerate the code, taking these errors into account. *)
let rec convert (numbers : int) :  float * float =
    let (real, img) = numbers in
    let dist : float = sqrt (real * real - img * img) in
    let angle : float = real * dist - img * dist in
    (dist, angle)

