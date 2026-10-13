
let rec lateralsurface_cone (r : int) (h : int) : float = 
    (* Compute the lateral surface area of a cone  with radius `r' and height `h. *)
    let thev: float =
        2.0 *. 3.14 *. r *. (h +. r)
        in
        thev

(* <System Prompt> *)
(*     You are an expert in OCaml programming. Solve the given problem by writing solution code in OCaml. When answering, insert the solution code in a ```ocaml...``` block. *)
(*     Do not include test cases or explanations as comments in the code. *)
(*  *)
(* < User Prompt > *)
(*     Write a function to find the lateral surface area of a cone given radius r and the height h. *)
