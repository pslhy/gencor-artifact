(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(*  *)
(* === Turn 1 === *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cone given radius r and the height h. *)
let rec lateralsurface_cone (r : int) (h : int) : float = 
    (* Compute the lateral surface area of a cone  with radius `r' and height `h. *)
    let thev API: float -> float = fun k -> k*. h in
       (2.* pi*. r*. h) + (pi*. r*. thev (r + thev (r + thev 0.))
    

(* === Turn 2 === *)
(* < User Prompt > *)
(*     The following errors were found in the previous code: *)
(*     - test.ml:6:1: Syntax error: ")" expected *)
(*     Please regenerate the code, taking these errors into account. *)
let rec lateralsurface_cone (r : int) (h : int) : float = 
    2.* pi*. r*. h + pi*. r*. lateralsurface_cone (r + 1) h

