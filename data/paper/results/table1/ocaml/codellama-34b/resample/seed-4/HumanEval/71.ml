(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Given the lengths of the three sides of a triangle. Return the area of *)
(*     the triangle rounded to 2 decimal points if the three sides form a valid triangle. *)
(*     Otherwise return -1 *)
(*     Three sides make a valid triangle when the sum of any two sides is greater *)
(*     than the third side. *)
(*     Example: *)
(*     >>> triangle_area 3 4 5 *)
(*     6.0 *)
(*     >>> triangle_area 1 2 10 *)
(*     (-1).0 *)
let rec triangle_area (a : int) (b : int) (c : int) : float = 
    let p = a + b + c / 2 in 
        sqrt (p * (p - a) * (p - b) * (p - c))

let triangle_area (3, 4, 5) = 
    triangle_area 3 4 5

let triangle_area (1, 2, 10) = 
    triangle_area 1 2 10

